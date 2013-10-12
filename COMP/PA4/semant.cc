#include <stdlib.h>
#include <stdio.h>
#include <stdarg.h>
#include <typeinfo>

#include "semant.h"
#include "utilities.h"


extern int semant_debug;
extern char *curr_filename;

//////////////////////////////////////////////////////////////////////
//
// Symbols
//
// For convenience, a large number of symbols are predefined here.
// These symbols include the primitive type and method names, as well
// as fixed names used by the runtime system.
//
//////////////////////////////////////////////////////////////////////
static Symbol 
    arg,
    arg2,
    Bool,
    concat,
    cool_abort,
    copy,
    Int,
    in_int,
    in_string,
    IO,
    length,
    Main,
    main_meth,
    No_class,
    No_type,
    Object,
    out_int,
    out_string,
    prim_slot,
    self,
    SELF_TYPE,
    Str,
    str_field,
    substr,
    type_name,
    val;
//
// Initializing the predefined symbols.
//
static void initialize_constants(void)
{
    arg         = idtable.add_string("arg");
    arg2        = idtable.add_string("arg2");
    Bool        = idtable.add_string("Bool");
    concat      = idtable.add_string("concat");
    cool_abort  = idtable.add_string("abort");
    copy        = idtable.add_string("copy");
    Int         = idtable.add_string("Int");
    in_int      = idtable.add_string("in_int");
    in_string   = idtable.add_string("in_string");
    IO          = idtable.add_string("IO");
    length      = idtable.add_string("length");
    Main        = idtable.add_string("Main");
    main_meth   = idtable.add_string("main");
    //   _no_class is a symbol that can't be the name of any 
    //   user-defined class.
    No_class    = idtable.add_string("_no_class");
    No_type     = idtable.add_string("_no_type");
    Object      = idtable.add_string("Object");
    out_int     = idtable.add_string("out_int");
    out_string  = idtable.add_string("out_string");
    prim_slot   = idtable.add_string("_prim_slot");
    self        = idtable.add_string("self");
    SELF_TYPE   = idtable.add_string("SELF_TYPE");
    Str         = idtable.add_string("String");
    str_field   = idtable.add_string("_str_field");
    substr      = idtable.add_string("substr");
    type_name   = idtable.add_string("type_name");
    val         = idtable.add_string("_val");
}

SemanticTable::SemanticTable(Classes classes) : semant_errors(0) , error_stream(cerr) {
    type_table = new SymbolTable<Symbol, Class__class>();
    type_table->enterscope();
    install_basic_classes();
    // First put everything into the type table
    for(int i = classes->first(); classes->more(i); i = classes->next(i)) {
      Class_ c = classes->nth(i);
      Class_ c2 = type_table->lookup(c->get_name());
      if(c2) {
          ostream & out = this->semant_error(c);
          out << " Class " << c->get_name() << " was previously defined." << endl;
      } else if( SELF_TYPE == c->get_name() ) {
          ostream & out = this->semant_error(c);
          out << "Redefinition of basic class SELF_TYPE." << endl;
      } else {
          type_table->addid(c->get_name(), c);
      }
    }
    for(int i = classes->first(); classes->more(i); i = classes->next(i)) {
      Class_ c = classes->nth(i);
      c->add_parent(this);
    }
    // Now expand class hierarchies
    bool has_main = false;
    for(int i = classes->first(); classes->more(i); i = classes->next(i)) {
      Class_ c = classes->nth(i);
      if(c->get_name() == Main) has_main = true;
      c->expand_hierarchy(this);
    }
    if(!has_main) {
      ostream & out = this->semant_error();
      out << "Class Main is not defined." << endl;
    }
}

void SemanticTable::msg(char * msg) {
    //error_stream << msg << endl;
}

void SemanticTable::install_basic_classes() {

    // The tree package uses these globals to annotate the classes built below.
    // curr_lineno  = 0;
    Symbol filename = stringtable.add_string("<basic class>");
    
    // The following demonstrates how to create dummy parse trees to
    // refer to basic Cool classes.  There's no need for method
    // bodies -- these are already built into the runtime system.
    
    // IMPORTANT: The results of the following expressions are
    // stored in local variables.  You will want to do something
    // with those variables at the end of this method to make this
    // code meaningful.

    // 
    // The Object class has no parent class. Its methods are
    //        abort() : Object    aborts the program
    //        type_name() : Str   returns a string representation of class name
    //        copy() : SELF_TYPE  returns a copy of the object
    //
    // There is no need for method bodies in the basic classes---these
    // are already built in to the runtime system.

    Class_ Object_class =
	class_(Object, 
	       No_class,
	       append_Features(
			       append_Features(
					       single_Features(method(cool_abort, nil_Formals(), Object, no_expr())),
					       single_Features(method(type_name, nil_Formals(), Str, no_expr()))),
			       single_Features(method(copy, nil_Formals(), SELF_TYPE, no_expr()))),
	       filename);

    this->type_table->addid(Object, Object_class);
    Object_class->add_parent(this);
    Object_class->expand_hierarchy(this);
    // 
    // The IO class inherits from Object. Its methods are
    //        out_string(Str) : SELF_TYPE       writes a string to the output
    //        out_int(Int) : SELF_TYPE            "    an int    "  "     "
    //        in_string() : Str                 reads a string from the input
    //        in_int() : Int                      "   an int     "  "     "
    //
    Class_ IO_class = 
	class_(IO, 
	       Object,
	       append_Features(
			       append_Features(
					       append_Features(
							       single_Features(method(out_string, single_Formals(formal(arg, Str)),
										      SELF_TYPE, no_expr())),
							       single_Features(method(out_int, single_Formals(formal(arg, Int)),
										      SELF_TYPE, no_expr()))),
					       single_Features(method(in_string, nil_Formals(), Str, no_expr()))),
			       single_Features(method(in_int, nil_Formals(), Int, no_expr()))),
	       filename);  

    this->type_table->addid(IO, IO_class);
    IO_class->add_parent(this);
    IO_class->expand_hierarchy(this);
    //
    // The Int class has no methods and only a single attribute, the
    // "val" for the integer. 
    //
    Class_ Int_class =
	class_(Int, 
	       Object,
	       single_Features(attr(val, prim_slot, no_expr())),
	       filename);

    this->type_table->addid(Int, Int_class);
    Int_class->add_parent(this);
    Int_class->expand_hierarchy(this);
    //
    // Bool also has only the "val" slot.
    //
    Class_ Bool_class =
	class_(Bool, Object, single_Features(attr(val, prim_slot, no_expr())),filename);

    this->type_table->addid(Bool, Bool_class);
    Bool_class->add_parent(this);
    Bool_class->expand_hierarchy(this);
    //
    // The class Str has a number of slots and operations:
    //       val                                  the length of the string
    //       str_field                            the string itself
    //       length() : Int                       returns length of the string
    //       concat(arg: Str) : Str               performs string concatenation
    //       substr(arg: Int, arg2: Int): Str     substring selection
    //       
    Class_ Str_class =
	class_(Str, 
	       Object,
	       append_Features(
			       append_Features(
					       append_Features(
							       append_Features(
									       single_Features(attr(val, Int, no_expr())),
									       single_Features(attr(str_field, prim_slot, no_expr()))),
							       single_Features(method(length, nil_Formals(), Int, no_expr()))),
					       single_Features(method(concat, 
								      single_Formals(formal(arg, Str)),
								      Str, 
								      no_expr()))),
			       single_Features(method(substr, 
						      append_Formals(single_Formals(formal(arg, Int)), 
								     single_Formals(formal(arg2, Int))),
						      Str, 
						      no_expr()))),
	       filename);
    this->type_table->addid(Str, Str_class);
    Str_class->add_parent(this);
    Str_class->expand_hierarchy(this);
}

////////////////////////////////////////////////////////////////////
//
// semant_error is an overloaded function for reporting errors
// during semantic analysis.  There are three versions:
//
//    ostream& SemanticTable::semant_error()                
//
//    ostream& SemanticTable::semant_error(Class_ c)
//       print line number and filename for `c'
//
//    ostream& SemanticTable::semant_error(Symbol filename, tree_node *t)  
//       print a line number and filename
//
///////////////////////////////////////////////////////////////////

ostream& SemanticTable::semant_error(Class_ c)
{                                                             
    return semant_error(c->get_filename(),c);
}    

ostream& SemanticTable::semant_error(Symbol filename, tree_node *t)
{
    error_stream << filename << ":" << t->get_line_number() << ": ";
    return semant_error();
}

ostream& SemanticTable::semant_error()                  
{                                                 
    semant_errors++;                            
    return error_stream;
} 

/*   This is the entry point to the semantic checker.

     Your checker should do the following two things:

     1) Check that the program is semantically correct
     2) Decorate the abstract syntax tree with type information
        by setting the `type' field in each Expression node.
        (see `tree.h')

     You are free to first do 1), make sure you catch all semantic
     errors. Part 2) can be done in a second stage, when you want
     to build mycoolc.
 */
void program_class::semant()
{
    initialize_constants();
    /* SemanticTable constructor may do some semantic analysis */
    SymTab symtab = new SemanticTable(classes);
    if (symtab->errors()) {
	    cerr << "Compilation halted due to static semantic errors." << endl;
	    exit(1);
    }

    this->annotate(symtab);
    /* some semantic analysis code may go here */
    if (symtab->errors()) {
	    cerr << "Compilation halted due to other semantic errors." << endl;
	    exit(1);
    }
}

void program_class::annotate(SymTab symtab) {
    for(int i = classes->first(); classes->more(i); i = classes->next(i)) {
      classes->nth(i)->annotate(symtab);
    }
}

void class__class::annotate(SymTab symtab) {
   symtab->enterscope();
   symtab->addid(self, SELF_TYPE);
   Class_ c = symtab->type_table->lookup(name);
   symtab->type_table->enterscope();
   symtab->type_table->addid(SELF_TYPE, c);
   
   if(name == Object) {
      ostream &out = symtab->semant_error(this);
      out << "Redefinition of basic class Object." << endl;
   }

   for(int i = features->first(); features->more(i); i = features->next(i)) {
       features->nth(i)->annotate(symtab);
   }
   
   if(parent == Bool || parent == Str) {
      ostream &out = symtab->semant_error(this);
      out << "Class " << name << "cannot redefine " << parent << endl;
   }
   symtab->type_table->exitscope();
   symtab->exitscope();
}
 
bool class__class::is_subtype_of(Class_ parent) {
    if(this==parent) {
       return true;
    }
    if(!parents) {
       return false;
    }
    for(int i = parents->first(); parents->more(i); i = parents->next(i)) {
       if( parents->nth(i) == parent ) {
           return true;
       }
    }
    return false;
}

void attr_class::annotate(SymTab symtab) {
   Class_ c = symtab->type_table->probe(SELF_TYPE);
   init->annotate(symtab);
   symtab->addid(name, type_decl);
   if(name == self) {
      ostream &out = symtab->semant_error(c);
      out << "'self' cannot be the name of an attribute." << c->get_name() << ":" << c->get_line_number() << endl;
   }
   Class_ parent = c->get_parent_class();
   attr_class * attr = parent->get_attr(name, symtab);
   if(attr) {
        ostream &out = symtab->semant_error(c);
        // out << "some error" << endl;
        out << "Attempting to redefine attribute " << name << " from class " << parent->get_name() << " in class " << c->get_name() << endl;
   }
}

void method_class::annotate(SymTab symtab) {
   Class_ typ = symtab->type_table->lookup(return_type);
   if(!typ) {
       Class_ c = symtab->type_table->lookup(SELF_TYPE);
       ostream &out = symtab->semant_error(c);
       out << " Undefined return type " << return_type << " in method " << name << endl;
   }
   symtab->enterscope();
   for(int i = formals->first(); formals->more(i); i = formals->next(i)) {
       formals->nth(i)->annotate(symtab);
   }
   expr->annotate(symtab);
   // check the return type
   Symbol s = expr->get_type();
   Class_ c = symtab->type_table->lookup(s);
   if(!c) {
       Class_ c2 = symtab->type_table->lookup(SELF_TYPE);
       ostream & out = symtab->semant_error(c2);
       out << "Undefined inferred return type " << s << " in method " << name << endl;
   } else if(!c->is_subtype_of(typ)) {
       Class_ c2 = symtab->type_table->lookup(SELF_TYPE);
       ostream & out = symtab->semant_error(c2);
       out << "Inferred returned type " << s << " in method " << name << " is not of declared type " << return_type << "." << endl;
   } else if(return_type == SELF_TYPE && s != SELF_TYPE) {
       Class_ c2 = symtab->type_table->lookup(SELF_TYPE);
       ostream & out = symtab->semant_error(c2);
       out << "Inferred returned type " << s << " in method " << name << " is not of declared type " << return_type << "." << endl;
   } 
   // check for invalid override
   if(name != Object) {
       Class_ parent = symtab->type_table->lookup(SELF_TYPE)->get_parent_class();
       method_class * parent_method = NULL;
       if(parent) {
           parent_method = parent->get_method(name, symtab);
       }
       if(parent_method && !parent_method->check_override(formals, symtab)) {
           Class_ c2 = symtab->type_table->lookup(SELF_TYPE);
           ostream & out = symtab->semant_error(c2);
           out << "Illegal override: method " << name << " has a different signatue in parent class " << parent->get_name() << endl;
       }
   }
   symtab->exitscope();
}

bool method_class::check_dispatch(Expressions actual, SymTab symtab) {
   if(actual->len() != formals->len()){
      return false;
   }
   for(int i = actual->first(), j = formals->first(); 
       actual->more(i), formals->more(j); 
       i = actual->next(i), j = formals->next(j) ) {
     Class_ c1 = symtab->type_table->lookup(actual->nth(i)->get_type());
     Class_ c2 = symtab->type_table->lookup(formals->nth(j)->get_type());
     if(!c1->is_subtype_of(c2)) {
       return false;
     }
   }
   return true;
}

bool method_class::check_override(Formals child, SymTab symtab) {
   if(child->len() != formals->len()){
      return false;
   }
   for(int i = child->first(), j = formals->first(); 
      child->more(i), formals->more(j); 
       i = child->next(i), j = formals->next(j) ) {
     Class_ c1 = symtab->type_table->lookup(formals->nth(j)->get_type());
     Class_ c2 = symtab->type_table->lookup(child->nth(i)->get_type());
     if(!c1->is_subtype_of(c2)) {
       return false;
     }
   }
   return true;
}

void formal_class::annotate(SymTab symtab) {
   if(symtab->probe(name)){
       Class_ c = symtab->type_table->probe(SELF_TYPE);
       ostream & out = symtab->semant_error(c);
       out << "Formal parameter " << name << " redefined." << endl;
   } else {
     symtab->addid(name, type_decl);
   }
   if(type_decl == SELF_TYPE) {
       Class_ c = symtab->type_table->probe(SELF_TYPE);
       ostream & out = symtab->semant_error(c);
       out << "Formal parameter " << name << " cannot have type SELF_TYPE." << endl;
   }
   if(name == self) {
       Class_ c = symtab->type_table->probe(SELF_TYPE);
       ostream & out = symtab->semant_error(c);
       out << "'self' cannot be the name of a formal parameter." << endl;
   }
}

void branch_class::annotate(SymTab symtab) {
   if(symtab->type_table->probe(type_decl)) {
       Class_ c = symtab->type_table->lookup(SELF_TYPE);
       ostream & out = symtab->semant_error(c);
       out << "Duplicate branch type" << endl;
   }
   symtab->type_table->addid(type_decl, symtab->type_table->lookup(type_decl));
   symtab->addid(name, type_decl);
   expr->annotate(symtab);
}

void Expression_class::annotate(SymTab symtab) {
   //cout << "TODO: " << "expression: " << typeid(*this).name() << endl;
   //symtab->dump();
   //cout << "DONE" << endl;
}

void object_class::annotate(SymTab symtab) {
   Symbol type_decl = symtab->lookup(name);
   if(!type_decl) {
     Class_ c = symtab->type_table->lookup(SELF_TYPE);
     attr_class * attr = c->get_attr(name, symtab);
     if(attr) {
       type_decl = attr->get_type();
     }
   }
   if(!type_decl) {
     Class_ c = symtab->type_table->lookup(SELF_TYPE);
     ostream & out = symtab->semant_error(c);
     out << "Undeclared identifier " << name << "." << endl;
     set_type(No_type);
   } else {
     set_type(type_decl);
   }
}

void bool_const_class::annotate(SymTab symtab) {
   set_type(Bool);
}

void int_const_class::annotate(SymTab symtab) {
   set_type(Int);
}

void string_const_class::annotate(SymTab symtab) {
   set_type(Str);
}

void block_class::annotate(SymTab symtab) {
   Expression e;
   symtab->enterscope();
   for(int i = body->first(); body->more(i); i = body->next(i)) {
     e = body->nth(i);
     e->annotate(symtab);
   }
   set_type(e->get_type());
   symtab->exitscope();
}

void assign_class::annotate(SymTab symtab) {
   Class_ c = symtab->type_table->lookup(SELF_TYPE);
   if(name == self) {
       ostream & out = symtab->semant_error(c);
       out << "Cannot assign to 'self'." << endl;
   }
   Symbol class_name = symtab->lookup(name);
   if(!class_name) {
      attr_class * attr = c->get_attr(name, symtab);  
      if(attr) class_name = attr->get_type();
   }
   expr->annotate(symtab);
   Class_ expr_class = symtab->type_table->lookup(expr->get_type());
   if(class_name) {
       Class_ parent = symtab->type_table->lookup(class_name);
       if(!expr_class->is_subtype_of(parent)) {
           ostream & out = symtab->semant_error(c);
           out << "Type " << expr->get_type() << " of assigned expression does not conform to declared type " << class_name << " of identifier " << name << "." << endl;
       }
   } else {
       ostream & out = symtab->semant_error(c);
       out << "Undeclared identifier " << name << "." << endl;
   }
   set_type(expr->get_type());
}

void dispatch_class::annotate(SymTab symtab) {
   for(int i = actual->first(); actual->more(i); i = actual->next(i)) {
     Expression e = actual->nth(i);
     e->annotate(symtab);
   }

   expr->annotate(symtab);
   Symbol target_type_decl = expr->get_type();
   // Should lookup the method inside the class table scope
   // based on that we can determine the return type of the method.
   Class_ target = symtab->type_table->lookup(target_type_decl);
   method_class * method = target->get_method(name, symtab);
   if ( !method ) {
      Class_ c = symtab->type_table->lookup(SELF_TYPE);
      ostream & out = symtab->semant_error(c);
      out << "Method " << name << " not defined in class " << c->get_name() << "." << endl;
      set_type(No_type);
   } else {
      // TODO: we should also check the actuals against formals
      if(!method->check_dispatch(actual, symtab)) {
          Class_ c = symtab->type_table->lookup(SELF_TYPE);
          ostream & out = symtab->semant_error(c);
          out << "Method parameters do not match actual types in dispatch" << endl;
      }
      Symbol return_type = method->get_type();
      if(return_type == SELF_TYPE) {
          return_type = target_type_decl;
      }
      set_type(return_type);
   }
}

method_class * class__class::get_method(Symbol method_name, SymTab symtab) {
    for(int i = features->first(); features->more(i); i = features->next(i)) {
        Feature_class * method = features->nth(i);
        Symbol feature_name = method->get_name();
        if (feature_name == method_name && typeid(*method) == typeid(method_class)) {
            return (method_class *) method;
        }
    }
    if( this->parent == No_class ) {
        return NULL;
    } else {
        Class_ parent = get_parent_class();
        return parent_class->get_method(method_name, symtab);
    }
};

attr_class * class__class::get_attr(Symbol attr_name, SymTab symtab) {
    for(int i = features->first(); features->more(i); i = features->next(i)) {
        Feature_class * attr = features->nth(i);
        Symbol feature_name = attr->get_name();
        if (feature_name == attr_name && typeid(*attr) == typeid(attr_class)) {
            return (attr_class *) attr;
        }
    }
    if( this->parent == No_class ) {
        return NULL;
    } else {
        Class_ parent = get_parent_class();
        return parent->get_attr(attr_name, symtab);
    }
};

void class__class::add_parent(SymTab symtab) {
   if(name != Object) {
       parent_class = symtab->type_table->lookup(parent);
       if(!parent_class) {
          ostream &out = symtab->semant_error(this);
          out << "error, parent class is not defined" << endl;
       }
   }
}

void class__class::expand_hierarchy(SymTab symtab) {
   parents = nil_Classes();
   Class_ current = this;
   while(current) {
      parents = append_Classes(single_Classes(current), parents);
      current = current->get_parent_class();
   }
}
   

void new__class::annotate(SymTab symtab) {
   set_type(type_name);
   Class_ typ = symtab->type_table->lookup(type_name);
   if(!typ) {
      Class_ c = symtab->type_table->lookup(SELF_TYPE);
      ostream & out = symtab->semant_error(c);
      out << "'new' used with undefined class " << type_name << endl;
   }
}

void let_class::annotate(SymTab symtab) {
   symtab->enterscope();
   init->annotate(symtab);
   Class_ c1 = symtab->type_table->lookup(init->get_type());
   Class_ c2 = symtab->type_table->lookup(type_decl);
   if(c1 && !c1->is_subtype_of(c2)) {
      Class_ c = symtab->type_table->lookup(SELF_TYPE);
      ostream & out = symtab->semant_error(c);
      out << "Let initialization " << c1->get_name() << " is not a subtype of " << c2->get_name() << "." << endl;
   }
   if(identifier == self) {
      Class_ c = symtab->type_table->lookup(SELF_TYPE);
      ostream & out = symtab->semant_error(c);
      out << "Let initializing 'self'." << endl;
   }
   symtab->addid(identifier, type_decl);
   body->annotate(symtab);
   set_type(body->get_type());
   symtab->exitscope();
}

void static_dispatch_class::annotate(SymTab symtab) {
   for(int i = actual->first(); actual->more(i); i = actual->next(i)) {
     Expression e = actual->nth(i);
     e->annotate(symtab);
   }

   Symbol target_type_decl = type_name;
   Class_ declared_target = symtab->type_table->lookup(target_type_decl);

   expr->annotate(symtab);
   Symbol inferred_target_type = expr->get_type();
   if(inferred_target_type) {
      Class_ inferred_target = symtab->type_table->lookup(inferred_target_type);
      if(!inferred_target) {
         Class_ c = symtab->type_table->lookup(SELF_TYPE);
         ostream & out = symtab->semant_error(c);
         out << "Inferred target type " << inferred_target_type << " does not exist" << endl;
      } else if(!inferred_target->is_subtype_of(declared_target)) {
         Class_ c = symtab->type_table->lookup(SELF_TYPE);
         ostream & out = symtab->semant_error(c);
         out << "Inferred target type " << inferred_target_type << " is not a subtype of declared target type " << target_type_decl << endl;
      }
   }
   method_class * method = declared_target->get_method(name, symtab);
   if (!method) {
      Class_ c = symtab->type_table->lookup(SELF_TYPE);
      ostream & out = symtab->semant_error(c);
      out << "Method " << name << " not defined in class " << c->get_name() << "." << endl;
      set_type(No_type);
   } else {
      // TODO: we should now check the formals against the actuals, both the # of args
      // TODO: as well as the types of the args.
      Symbol return_type = method->get_type();
      if(return_type == SELF_TYPE) {
          return_type = target_type_decl;
      }
      set_type(return_type);
   }
}

void cond_class::annotate(SymTab symtab) {
    pred->annotate(symtab);
    then_exp->annotate(symtab);
    else_exp->annotate(symtab);
    Classes then_classes = symtab->type_table->lookup(then_exp->get_type())->get_parents();
    Classes else_classes = symtab->type_table->lookup(else_exp->get_type())->get_parents();
    Symbol type = No_type;
    for(int i = then_classes->first(), j = else_classes->first(); 
        then_classes->more(i) && else_classes->more(j); 
        i = then_classes->next(i), j = then_classes->next(j) ) {
        Class_ c1 = then_classes->nth(i);
        Class_ c2 = else_classes->nth(j);
        if(c1 != c2) {
            break;
        } else {
            type = c1->get_name();
        }
        set_type(type);
    }
}
void loop_class::annotate(SymTab symtab) {
    pred->annotate(symtab);
    if(pred->get_type() != Bool) {
        Class_ c = symtab->type_table->lookup(SELF_TYPE);
        ostream & out = symtab->semant_error(c);
        out << "Loop condition not of type Bool" << endl;
    }
    body->annotate(symtab);
    set_type(Object);
}

void typcase_class::annotate(SymTab symtab) {
    expr->annotate(symtab);
    Class_ lowest = NULL;
    symtab->type_table->enterscope();
    
    for(int i = cases->first(); cases->more(i); i = cases->next(i)) {
        cases->nth(i)->annotate(symtab);
    }
    Class_ c = symtab->type_table->lookup(cases->nth(0)->get_type());
    Classes base = c->get_parents();
    //for(int i = base->first(); base->more(i); i = base->next(i)) {
    //    cout << base->nth(i)->get_name() << endl;
    //}

    for(int i = 1; cases->more(i); i = cases->next(i)) {
        Class_ this_lowest = NULL;
        Class_ c = symtab->type_table->lookup(cases->nth(i)->get_type());
        Classes compare = c->get_parents();
        for(int j = base->first(); base->more(j) && compare->more(j); j = base->next(j)) {
            Class_ cj1 = base->nth(j);
            Class_ cj2 = compare->nth(j);
            if( cj1 == lowest ) {
               goto out;
            } else if( cj1 != cj2 ) {
               lowest = base->nth(j-1);
               goto out;
            }
            this_lowest = cj1;
        }
        lowest = this_lowest;
    }
out:
    symtab->type_table->exitscope();
    set_type(lowest->get_name());

    // Fixme: based on the types of the expressions find the 
    // lowest common denominator and set that as type
    // for the case as a whole
}

void plus_class::annotate(SymTab symtab) {
   e1->annotate(symtab);
   e2->annotate(symtab);
   set_type(Int);
   if(e1->get_type() != Int || e2->get_type() != Int) {
      Class_ c = symtab->type_table->lookup(SELF_TYPE);
      ostream & out = symtab->semant_error(c);
      out << "Bad arithmetic expression" << endl;
   }
}

void sub_class::annotate(SymTab symtab) {
   e1->annotate(symtab);
   e2->annotate(symtab);
   set_type(Int);
   if(e1->get_type() != Int || e2->get_type() != Int) {
      Class_ c = symtab->type_table->lookup(SELF_TYPE);
      ostream & out = symtab->semant_error(c);
      out << "Bad arithmetic expression" << endl;
   }
}

void mul_class::annotate(SymTab symtab) {
   e1->annotate(symtab);
   e2->annotate(symtab);
   set_type(Int);
   if(e1->get_type() != Int || e2->get_type() != Int) {
      Class_ c = symtab->type_table->lookup(SELF_TYPE);
      ostream & out = symtab->semant_error(c);
      out << "Bad arithmetic expression" << endl;
   }
}

void divide_class::annotate(SymTab symtab) {
   e1->annotate(symtab);
   e2->annotate(symtab);
   set_type(Int);
   if(e1->get_type() != Int || e2->get_type() != Int) {
      Class_ c = symtab->type_table->lookup(SELF_TYPE);
      ostream & out = symtab->semant_error(c);
      out << "Bad arithmetic expression" << endl;
   }
}
void neg_class::annotate(SymTab symtab) {
   e1->annotate(symtab);
   set_type(Int);
   if(e1->get_type() != Int) {
      Class_ c = symtab->type_table->lookup(SELF_TYPE);
      ostream & out = symtab->semant_error(c);
      out << "Bad arithmetic expression" << endl;
   }
}
void lt_class::annotate(SymTab symtab) {
   e1->annotate(symtab);
   e2->annotate(symtab);
   set_type(Bool);
   if(e1->get_type() != Int || e2->get_type() != Int) {
      Class_ c = symtab->type_table->lookup(SELF_TYPE);
      ostream & out = symtab->semant_error(c);
      out << "Bad comparison" << endl;
   }
}
void eq_class::annotate(SymTab symtab) {
   e1->annotate(symtab);
   e2->annotate(symtab);
   set_type(Bool);
   if((e1->get_type() == Int && e2->get_type() == Str) ||
      (e1->get_type() == Str && e2->get_type() == Int) ||
      (e1->get_type() == Bool && e2->get_type() == Int) ||
      (e1->get_type() == Int && e2->get_type() == Bool)) {
      Class_ c = symtab->type_table->lookup(SELF_TYPE);
      ostream & out = symtab->semant_error(c);
      out << "Bad equality test" << endl;
   }
}

void leq_class::annotate(SymTab symtab) {
   e1->annotate(symtab);
   e2->annotate(symtab);
   set_type(Bool);
   if(e1->get_type() != Int || e2->get_type() != Int) {
      Class_ c = symtab->type_table->lookup(SELF_TYPE);
      ostream & out = symtab->semant_error();
      out << "Bad comparison" << endl;
   }
}

void comp_class::annotate(SymTab symtab) {
   e1->annotate(symtab);
   set_type(Bool);
   if(e1->get_type() != Bool) {
      Class_ c = symtab->type_table->lookup(SELF_TYPE);
      ostream & out = symtab->semant_error();
      out << "Bad boolean expression" << endl;
   }
}

void isvoid_class::annotate(SymTab symtab) {
   e1->annotate(symtab);
   set_type(Bool);
}

void no_expr_class::annotate(SymTab symtab) {
   set_type(No_type);
}

