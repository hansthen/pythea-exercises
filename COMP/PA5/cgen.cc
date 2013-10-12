
//**************************************************************
//
// Code generator SKELETON
//
// Read the comments carefully. Make sure to
//    initialize the base class tags in
//       `CgenClassTable::CgenClassTable'
//
//    Add the label for the dispatch tables to
//       `IntEntry::code_def'
//       `StringEntry::code_def'
//       `BoolConst::code_def'
//
//    Add code to emit everyting else that is needed
//       in `CgenClassTable::code'
//
//
// The files as provided will produce code to begin the code
// segments, declare globals, and emit constants.  You must
// fill in the rest.
//
//**************************************************************

#include "cgen.h"
#include "cgen_gc.h"
#include <typeinfo>

extern void emit_string_constant(ostream& str, char *s);
extern int cgen_debug;

method_class * dummy_method = NULL;
//
// Three symbols from the semantic analyzer (semant.cc) are used.
// If e : No_type, then no code is generated for e.
// Special code is generated for new SELF_TYPE.
// The name "self" also generates code different from other references.
//
//////////////////////////////////////////////////////////////////////
//
// Symbols
//
// For convenience, a large number of symbols are predefined here.
// These symbols include the primitive type and method names, as well
// as fixed names used by the runtime system.
//
//////////////////////////////////////////////////////////////////////
Symbol 
       arg,
       arg2,
       Bool,
       concat,
       cool_abort,
       copy,
       Int,
       in_int,
       in_string,
       init_method,
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
  init_method = idtable.add_string("_init");
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

static char *gc_init_names[] =
  { "_NoGC_Init", "_GenGC_Init", "_ScnGC_Init" };
static char *gc_collect_names[] =
  { "_NoGC_Collect", "_GenGC_Collect", "_ScnGC_Collect" };


//  BoolConst is a class that implements code generation for operations
//  on the two booleans, which are given global names here.
BoolConst falsebool(FALSE);
BoolConst truebool(TRUE);

//*********************************************************
//
// Define method for code generation
//
// This is the method called by the compiler driver
// `cgtest.cc'. cgen takes an `ostream' to which the assembly will be
// emmitted, and it passes this and the class list of the
// code generator tree to the constructor for `CgenClassTable'.
// That constructor performs all of the work of the code
// generator.
//
//*********************************************************

void program_class::cgen(ostream &os) 
{
  // spim wants comments to start with '#'
  os << "# start of generated code\n";
  os << "obj_tag=0" << endl;
  os << "obj_size=4" << endl;
  os << "obj_disp=8" << endl;
  os << "obj_attr=12" << endl;
  os << "int_slot=12" << endl;
  os << "bool_slot=12" << endl;
  os << "str_size=12 # This is a pointer to an Int object!!!" << endl;
  os << "str_field=16    # The beginning of the ascii sequence" << endl;
  os << "str_maxsize=1026    # the maximum string length" << endl;

  initialize_constants();
  CgenClassTable *codegen_classtable = new CgenClassTable(classes,os);

  os << "\n# end of generated code\n";
}


//////////////////////////////////////////////////////////////////////////////
//
//  emit_* procedures
//
//  emit_X  writes code for operation "X" to the output stream.
//  There is an emit_X for each opcode X, as well as emit_ functions
//  for generating names according to the naming conventions (see emit.h)
//  and calls to support functions defined in the trap handler.
//
//  Register names and addresses are passed as strings.  See `emit.h'
//  for symbolic names you can use to refer to the strings.
//
//////////////////////////////////////////////////////////////////////////////

static void emit_load(char *dest_reg, int offset, char *source_reg, ostream& s)
{
  s << LW << dest_reg << " " << offset * WORD_SIZE << "(" << source_reg << ")" 
    << endl;
}

static void emit_store(char *source_reg, int offset, char *dest_reg, ostream& s)
{
  s << SW << source_reg << " " << offset * WORD_SIZE << "(" << dest_reg << ")"
      << endl;
}

static void emit_load_imm(char *dest_reg, int val, ostream& s)
{ s << LI << dest_reg << " " << val << endl; }

static void emit_load_address(char *dest_reg, char *address, ostream& s)
{ s << LA << dest_reg << " " << address << endl; }

static void emit_partial_load_address(char *dest_reg, ostream& s)
{ s << LA << dest_reg << " "; }

static void emit_load_bool(char *dest, const BoolConst& b, ostream& s)
{
  emit_partial_load_address(dest,s);
  b.code_ref(s);
  s << endl;
}

static void emit_load_string(char *dest, StringEntry *str, ostream& s)
{
  emit_partial_load_address(dest,s);
  str->code_ref(s);
  s << endl;
}

static void emit_load_int(char *dest, IntEntry *i, ostream& s)
{
  emit_partial_load_address(dest,s);
  i->code_ref(s);
  s << endl;
}

static void emit_move(char *dest_reg, char *source_reg, ostream& s)
{ s << MOVE << dest_reg << " " << source_reg << endl; }

static void emit_neg(char *dest, char *src1, ostream& s)
{ s << NEG << dest << " " << src1 << endl; }

static void emit_add(char *dest, char *src1, char *src2, ostream& s)
{ s << ADD << dest << " " << src1 << " " << src2 << endl; }

static void emit_addu(char *dest, char *src1, char *src2, ostream& s)
{ s << ADDU << dest << " " << src1 << " " << src2 << endl; }

static void emit_addiu(char *dest, char *src1, int imm, ostream& s)
{ s << ADDIU << dest << " " << src1 << " " << imm << endl; }

static void emit_div(char *dest, char *src1, char *src2, ostream& s)
{ s << DIV << dest << " " << src1 << " " << src2 << endl; }

static void emit_mul(char *dest, char *src1, char *src2, ostream& s)
{ s << MUL << dest << " " << src1 << " " << src2 << endl; }

static void emit_sub(char *dest, char *src1, char *src2, ostream& s)
{ s << SUB << dest << " " << src1 << " " << src2 << endl; }

static void emit_sll(char *dest, char *src1, int num, ostream& s)
{ s << SLL << dest << " " << src1 << " " << num << endl; }

static void emit_jalr(char *dest, ostream& s)
{ s << JALR << "\t" << dest << endl; }

static void emit_jal(char *address,ostream &s)
{ s << JAL << address << endl; }

static void emit_return(ostream& s)
{ s << RET << endl; }

static void emit_gc_assign(ostream& s)
{ s << JAL << "_GenGC_Assign" << endl; }

static void emit_disptable_ref(Symbol sym, ostream& s)
{  s << sym << DISPTAB_SUFFIX; }

static void emit_init_ref(Symbol sym, ostream& s)
{ s << sym << CLASSINIT_SUFFIX; }

static void emit_label_ref(int l, ostream &s)
{ s << "label" << l; }

static void emit_protobj_ref(Symbol sym, ostream& s)
{ s << sym << PROTOBJ_SUFFIX; }

static void emit_method_ref(Symbol classname, Symbol methodname, ostream& s)
{ s << classname << METHOD_SEP << methodname; }

static void emit_label_def(int l, ostream &s)
{
  emit_label_ref(l,s);
  s << ":" << endl;
}

static void emit_beqz(char *source, int label, ostream &s)
{
  s << BEQZ << source << " ";
  emit_label_ref(label,s);
  s << endl;
}

static void emit_beq(char *src1, char *src2, int label, ostream &s)
{
  s << BEQ << src1 << " " << src2 << " ";
  emit_label_ref(label,s);
  s << endl;
}

static void emit_bne(char *src1, char *src2, int label, ostream &s)
{
  s << BNE << src1 << " " << src2 << " ";
  emit_label_ref(label,s);
  s << endl;
}

static void emit_bleq(char *src1, char *src2, int label, ostream &s)
{
  s << BLEQ << src1 << " " << src2 << " ";
  emit_label_ref(label,s);
  s << endl;
}

static void emit_blt(char *src1, char *src2, int label, ostream &s)
{
  s << BLT << src1 << " " << src2 << " ";
  emit_label_ref(label,s);
  s << endl;
}

static void emit_blti(char *src1, int imm, int label, ostream &s)
{
  s << BLT << src1 << " " << imm << " ";
  emit_label_ref(label,s);
  s << endl;
}

static void emit_bgti(char *src1, int imm, int label, ostream &s)
{
  s << BGT << src1 << " " << imm << " ";
  emit_label_ref(label,s);
  s << endl;
}

static void emit_branch(int l, ostream& s)
{
  s << BRANCH;
  emit_label_ref(l,s);
  s << endl;
}

//
// Push a register on the stack. The stack grows towards smaller addresses.
//
static void emit_push(char *reg, ostream& str)
{
  emit_store(reg,0,SP,str);
  emit_addiu(SP,SP,-4,str);
}

//
// Fetch the integer value in an Int object.
// Emits code to fetch the integer value of the Integer object pointed
// to by register source into the register dest
//
static void emit_fetch_int(char *dest, char *source, ostream& s)
{ emit_load(dest, DEFAULT_OBJFIELDS, source, s); }

//
// Emits code to store the integer value contained in register source
// into the Integer object pointed to by dest.
//
static void emit_store_int(char *source, char *dest, ostream& s)
{ emit_store(source, DEFAULT_OBJFIELDS, dest, s); }


static void emit_test_collector(ostream &s)
{
  emit_push(ACC, s);
  emit_move(ACC, SP, s); // stack end
  emit_move(A1, ZERO, s); // allocate nothing
  s << JAL << gc_collect_names[cgen_Memmgr] << endl;
  emit_addiu(SP,SP,4,s);
  emit_load(ACC,0,SP,s);
}

static void emit_gc_check(char *source, ostream &s)
{
  if (source != (char*)A1) emit_move(A1, source, s);
  s << JAL << "_gc_check" << endl;
}


///////////////////////////////////////////////////////////////////////////////
//
// coding strings, ints, and booleans
//
// Cool has three kinds of constants: strings, ints, and booleans.
// This section defines code generation for each type.
//
// All string constants are listed in the global "stringtable" and have
// type StringEntry.  StringEntry methods are defined both for String
// constant definitions and references.
//
// All integer constants are listed in the global "inttable" and have
// type IntEntry.  IntEntry methods are defined for Int
// constant definitions and references.
//
// Since there are only two Bool values, there is no need for a table.
// The two booleans are represented by instances of the class BoolConst,
// which defines the definition and reference methods for Bools.
//
///////////////////////////////////////////////////////////////////////////////

//
// Strings
//
void StringEntry::code_ref(ostream& s)
{
  s << STRCONST_PREFIX << index;
}

//
// Emit code for a constant String.
// You should fill in the code naming the dispatch table.
//

void StringEntry::code_def(ostream& s, int stringclasstag)
{
  IntEntryP lensym = inttable.add_int(len);

  // Add -1 eye catcher
  s << WORD << "-1" << endl;

  code_ref(s);  s  << LABEL                                             // label
      << WORD << stringclasstag << endl                                 // tag
      << WORD << (DEFAULT_OBJFIELDS + STRING_SLOTS + (len+4)/4) << endl // size
      << WORD;
    
      s << "String_dispTab";

 /***** Add dispatch information for class String ******/

      s << endl;                                              // dispatch table
      s << WORD;  lensym->code_ref(s);  s << endl;            // string length
  emit_string_constant(s,str);                                // ascii string
  s << ALIGN;                                                 // align to word
}

//
// StrTable::code_string
// Generate a string object definition for every string constant in the 
// stringtable.
//
void StrTable::code_string_table(ostream& s, int stringclasstag)
{  
  for (List<StringEntry> *l = tbl; l; l = l->tl())
    l->hd()->code_def(s,stringclasstag);
}

//
// Ints
//
void IntEntry::code_ref(ostream &s)
{
  s << INTCONST_PREFIX << index;
}

//
// Emit code for a constant Integer.
// You should fill in the code naming the dispatch table.
//

void IntEntry::code_def(ostream &s, int intclasstag)
{
  // Add -1 eye catcher
  s << WORD << "-1" << endl;

  code_ref(s);  s << LABEL                                // label
      << WORD << intclasstag << endl                      // class tag
      << WORD << (DEFAULT_OBJFIELDS + INT_SLOTS) << endl  // object size
      << WORD; 

 /***** Add dispatch information for class Int ******/
      s << "Int_dispTab";

      s << endl;                                          // dispatch table
      s << WORD << str << endl;                           // integer value
}


//
// IntTable::code_string_table
// Generate an Int object definition for every Int constant in the
// inttable.
//
void IntTable::code_string_table(ostream &s, int intclasstag)
{
  for (List<IntEntry> *l = tbl; l; l = l->tl())
    l->hd()->code_def(s,intclasstag);
}


//
// Bools
//
BoolConst::BoolConst(int i) : val(i) { assert(i == 0 || i == 1); }

void BoolConst::code_ref(ostream& s) const
{
  s << BOOLCONST_PREFIX << val;
}
  
//
// Emit code for a constant Bool.
// You should fill in the code naming the dispatch table.
//

void BoolConst::code_def(ostream& s, int boolclasstag)
{
  // Add -1 eye catcher
  s << WORD << "-1" << endl;

  code_ref(s);  s << LABEL                                  // label
      << WORD << boolclasstag << endl                       // class tag
      << WORD << (DEFAULT_OBJFIELDS + BOOL_SLOTS) << endl   // object size
      << WORD;

 /***** Add dispatch information for class Bool ******/
      s << "Bool_dispTab";

      s << endl;                                            // dispatch table
      s << WORD << val << endl;                             // value (0 or 1)
}

//////////////////////////////////////////////////////////////////////////////
//
//  CgenClassTable methods
//
//////////////////////////////////////////////////////////////////////////////

//***************************************************
//
//  Emit code to start the .data segment and to
//  declare the global names.
//
//***************************************************

void CgenClassTable::code_global_data()
{
  Symbol main    = idtable.lookup_string(MAINNAME);
  Symbol string  = idtable.lookup_string(STRINGNAME);
  Symbol integer = idtable.lookup_string(INTNAME);
  Symbol boolc   = idtable.lookup_string(BOOLNAME);

  str << "\t.data\n" << ALIGN;
  //
  str << "newline:" << endl;
  str << ".asciiz \"\\n\"" << endl;
  // The following global names must be defined first.
  //
  str << GLOBAL << CLASSNAMETAB << endl;
  str << GLOBAL; emit_protobj_ref(main,str);    str << endl;
  str << GLOBAL; emit_protobj_ref(integer,str); str << endl;
  str << GLOBAL; emit_protobj_ref(string,str);  str << endl;
  str << GLOBAL; falsebool.code_ref(str);  str << endl;
  str << GLOBAL; truebool.code_ref(str);   str << endl;
  str << GLOBAL << INTTAG << endl;
  str << GLOBAL << BOOLTAG << endl;
  str << GLOBAL << STRINGTAG << endl;

  //
  // We also need to know the tag of the Int, String, and Bool classes
  // during code generation.
  //
  str << INTTAG << LABEL
      << WORD << intclasstag << endl;
  str << BOOLTAG << LABEL 
      << WORD << boolclasstag << endl;
  str << STRINGTAG << LABEL 
      << WORD << stringclasstag << endl;    
}


//***************************************************
//
//  Emit code to start the .text segment and to
//  declare the global names.
//
//***************************************************

void CgenClassTable::code_global_text()
{
  str << GLOBAL << HEAP_START << endl
      << HEAP_START << LABEL 
      << WORD << 0 << endl
      << "\t.text" << endl
      << GLOBAL;
  emit_init_ref(idtable.add_string("Main"), str);
  str << endl << GLOBAL;
  emit_init_ref(idtable.add_string("Int"),str);
  str << endl << GLOBAL;
  emit_init_ref(idtable.add_string("String"),str);
  str << endl << GLOBAL;
  emit_init_ref(idtable.add_string("Bool"),str);
  str << endl << GLOBAL;
  emit_init_ref(idtable.add_string("IO"),str);
  str << endl << GLOBAL;
  emit_init_ref(idtable.add_string("Object"),str);
  str << endl << GLOBAL;
  emit_method_ref(idtable.add_string("Main"), idtable.add_string("main"), str);
  str << endl;
}

void CgenClassTable::code_bools(int boolclasstag)
{
  falsebool.code_def(str,boolclasstag);
  truebool.code_def(str,boolclasstag);
}

void CgenClassTable::code_select_gc()
{
  //
  // Generate GC choice constants (pointers to GC functions)
  //
  str << GLOBAL << "_MemMgr_INITIALIZER" << endl;
  str << "_MemMgr_INITIALIZER:" << endl;
  str << WORD << gc_init_names[cgen_Memmgr] << endl;
  str << GLOBAL << "_MemMgr_COLLECTOR" << endl;
  str << "_MemMgr_COLLECTOR:" << endl;
  str << WORD << gc_collect_names[cgen_Memmgr] << endl;
  str << GLOBAL << "_MemMgr_TEST" << endl;
  str << "_MemMgr_TEST:" << endl;
  str << WORD << (cgen_Memmgr_Test == GC_TEST) << endl;
}


//********************************************************
//
// Emit code to reserve space for and initialize all of
// the constants.  Class names should have been added to
// the string table (in the supplied code, is is done
// during the construction of the inheritance graph), and
// code for emitting string constants as a side effect adds
// the string's length to the integer table.  The constants
// are emmitted by running through the stringtable and inttable
// and producing code for each entry.
//
//********************************************************

void CgenClassTable::code_constants()
{
  //
  // Add constants that are required by the code generator.
  //
  stringtable.add_string("");
  inttable.add_string("0");

  stringtable.code_string_table(str,stringclasstag);
  inttable.code_string_table(str,intclasstag);
  code_bools(boolclasstag);
}


CgenClassTable::CgenClassTable(Classes classes, ostream& s) : nds(NULL) , str(s)
{
   stringclasstag = 0 /* Change to your String class tag here */;
   intclasstag =    0 /* Change to your Int class tag here */;
   boolclasstag =   0 /* Change to your Bool class tag here */;
   label_counter = 0;

   enterscope();
   if (cgen_debug) str << "# Building CgenClassTable" << endl;
   install_basic_classes();

   install_classes(classes);
   build_inheritance_tree();

   CgenNodeP c = lookup(Str);
   stringclasstag = c->get_type();
   c = lookup(Int);
   intclasstag = c->get_type();
   c = lookup(Bool);
   boolclasstag = c->get_type();

   code();
   exitscope();
}

void CgenClassTable::install_basic_classes()
{
  dummy_method = (method_class*) method(init_method, nil_Formals(), Object, no_expr());
// The tree package uses these globals to annotate the classes built below.
  //curr_lineno  = 0;
  Symbol filename = stringtable.add_string("<basic class>");

//
// A few special class names are installed in the lookup table but not
// the class list.  Thus, these classes exist, but are not part of the
// inheritance hierarchy.
// No_class serves as the parent of Object and the other special classes.
// SELF_TYPE is the self class; it cannot be redefined or inherited.
// prim_slot is a class known to the code generator.
//
  addid(No_class,
	new CgenNode(class_(No_class,No_class,nil_Features(),filename),
			    Basic,this));
  addid(SELF_TYPE,
	new CgenNode(class_(SELF_TYPE,No_class,nil_Features(),filename),
			    Basic,this));
  addid(prim_slot,
	new CgenNode(class_(prim_slot,No_class,nil_Features(),filename),
			    Basic,this));

// 
// The Object class has no parent class. Its methods are
//        cool_abort() : Object    aborts the program
//        type_name() : Str        returns a string representation of class name
//        copy() : SELF_TYPE       returns a copy of the object
//
// There is no need for method bodies in the basic classes---these
// are already built in to the runtime system.
//
  install_class(
   new CgenNode(
    class_(Object, 
	   No_class,
	   append_Features(
           append_Features(
           single_Features(method(cool_abort, nil_Formals(), Object, no_expr())),
           single_Features(method(type_name, nil_Formals(), Str, no_expr()))),
           single_Features(method(copy, nil_Formals(), SELF_TYPE, no_expr()))),
	   filename),
    Basic,this));

// 
// The IO class inherits from Object. Its methods are
//        out_string(Str) : SELF_TYPE          writes a string to the output
//        out_int(Int) : SELF_TYPE               "    an int    "  "     "
//        in_string() : Str                    reads a string from the input
//        in_int() : Int                         "   an int     "  "     "
//
   install_class(
    new CgenNode(
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
	   filename),	    
    Basic,this));

//
// The Int class has no methods and only a single attribute, the
// "val" for the integer. 
//
   install_class(
    new CgenNode(
     class_(Int, 
	    Object,
            single_Features(attr(val, prim_slot, no_expr())),
	    filename),
     Basic,this));

//
// Bool also has only the "val" slot.
//
    install_class(
     new CgenNode(
      class_(Bool, Object, single_Features(attr(val, prim_slot, no_expr())),filename),
      Basic,this));

//
// The class Str has a number of slots and operations:
//       val                                  ???
//       str_field                            the string itself
//       length() : Int                       length of the string
//       concat(arg: Str) : Str               string concatenation
//       substr(arg: Int, arg2: Int): Str     substring
//       
   install_class(
    new CgenNode(
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
	     filename),
        Basic,this));

}

// CgenClassTable::install_class
// CgenClassTable::install_classes
//
// install_classes enters a list of classes in the symbol table.
//
void CgenClassTable::install_class(CgenNodeP nd)
{
  Symbol name = nd->get_name();

  if (probe(name))
    {
      return;
    }
  // The class name is legal, so add it to the list of classes
  // and the symbol table.
  nds = new List<CgenNode>(nd,nds);
  addid(name,nd);
}

void CgenClassTable::install_classes(Classes cs)
{
  for(int i = cs->first(); cs->more(i); i = cs->next(i))
    install_class(new CgenNode(cs->nth(i),NotBasic,this));
}

//
// CgenClassTable::build_inheritance_tree
//
void CgenClassTable::build_inheritance_tree()
{
  int i = 0;
  for(List<CgenNode> *l = nds; l; l = l->tl()) {
      l->hd()->set_type(i++);
      set_relations(l->hd());
  }
  root()->recursively_set_tables();
}

//
// CgenClassTable::set_relations
//
// Takes a CgenNode and locates its, and its parent's, inheritance nodes
// via the class table.  Parent and child pointers are added as appropriate.
//
void CgenClassTable::set_relations(CgenNodeP nd)
{
  CgenNode *parent_node = probe(nd->get_parent());
  nd->set_parentnd(parent_node);
  parent_node->add_child(nd);
}

void CgenNode::add_child(CgenNodeP n)
{
  children = new List<CgenNode>(n,children);
}

void CgenNode::recursively_set_tables() {
  this->set_method_table();
  this->set_attr_table();
  for(List<CgenNode> *l = children; l; l = l->tl()) {
      l->hd()->recursively_set_tables();
  }
}

void CgenNode::set_method_table() {
  method_table = NULL;
  List<MethodTableEntry> *temp_method_table = NULL;
  CgenNode *p = this->get_parentnd(); 
  List<MethodTableEntry> * methods = p->get_method_table();
  for(List<MethodTableEntry> *l = methods; l; l = l->tl()) {
      MethodTableEntry * entry = l->hd()->copy();
      for(int i = features->first(); features->more(i); i = features->next(i)) {
          Feature feature = features->nth(i);
          if (typeid(*feature) == typeid(method_class) 
              && entry->name == ((MethodP)feature)->name ) {
              entry->defining_class = this->get_name();
          } 
      }
      temp_method_table = new List<MethodTableEntry>(entry, temp_method_table);
  }
  for(int i = features->first(); features->more(i); i = features->next(i)) {
      Feature feature = features->nth(i);
      if (typeid(*feature) == typeid(method_class)) {
          MethodP method = (MethodP) feature;
          for(List<MethodTableEntry> *l = methods; l; l = l->tl()) {
             if(l->hd()->name == method->name) goto outer;
          }
          MethodTableEntry *entry = new MethodTableEntry();
          entry->name = method->name;
          entry->defining_class = this->get_name();
          temp_method_table = new List<MethodTableEntry>(entry, temp_method_table);
      }
      outer:
      ;
  }
  for(List<MethodTableEntry> *l = temp_method_table; l; l = l->tl()) {
      method_table = new List<MethodTableEntry>(l->hd(), method_table);
  }
}

void CgenNode::set_attr_table() {
  attr_table = NULL;
  List<AttrTableEntry> *temp_attr_table = NULL;
  CgenNode *p = this->get_parentnd();
  List<AttrTableEntry> * attrs = p->get_attr_table();
  for(List<AttrTableEntry> *l = attrs; l; l = l->tl()) {
      AttrTableEntry * entry = l->hd()->copy();
      temp_attr_table = new List<AttrTableEntry>(entry, temp_attr_table);
  }
  for(int i = features->first(); features->more(i); i = features->next(i)) {
      Feature feature = features->nth(i);
      if (typeid(*feature) == typeid(attr_class)) {
          attr_class * attr = (attr_class*) feature;
          AttrTableEntry *entry = new AttrTableEntry();
          entry->name = attr->name;
          entry->type_decl = attr->type_decl;
          temp_attr_table = new List<AttrTableEntry>(entry, temp_attr_table);
      }
  }
  for(List<AttrTableEntry> *l = temp_attr_table; l; l = l->tl()) {
      attr_table = new List<AttrTableEntry>(l->hd(), attr_table);
  }
}


int CgenNode::get_method_index(Symbol name)
{
  List<MethodTableEntry> * methods = this->get_method_table();
  int i = 0;
  for(List<MethodTableEntry> *l = methods; l; l = l->tl(), i++) {
     if(l->hd()->name == name) return i;
  }
  return -1;
}

int CgenNode::get_attr_index(Symbol name)
{
  List<AttrTableEntry> * attrs = this->get_attr_table();
  int i = 0;
  for(List<AttrTableEntry> *l = attrs; l; l = l->tl(), i++) {
     if(l->hd()->name == name) return i;
  }
  return -1;
}

void CgenNode::set_parentnd(CgenNodeP p)
{
  assert(parentnd == NULL);
  assert(p != NULL);
  parentnd = p;
}

int CgenNode::get_size()
{
    if(this->name == Object) {
        return 3;
    }
    int size = parentnd->get_size();
    for(int i = features->first(); features->more(i); i = features->next(i)) {
        Feature feature = features->nth(i);
        if (typeid(*feature) == typeid(attr_class)) {
            size += 1;
        }
    }
    return size;
}

void CgenNode::gen_obj_proto(ostream & out)
{
    out << this->get_name() << "_protObj:" << endl;
    out << WORD << this->get_type() << endl;
    out << WORD << this->get_size() << endl;
    out << WORD << this->get_name() << "_dispTab" << endl;
    for(List<AttrTableEntry> *l = attr_table; l; l = l->tl()) {
        AttrTableEntry * attr = l->hd();
    //for(int i = features->first(); features->more(i); i = features->next(i)) {
    //    Feature feature = features->nth(i);
        Symbol type_name = attr->type_decl;
        out << WORD;
        if(type_name == Int) {
            inttable.lookup_string("0")->code_ref(out); out << endl;
        } else if( type_name == Bool) {
            falsebool.code_ref(out); out << endl;
        } else if( type_name == Str) {
            stringtable.lookup_string("")->code_ref(out); out << endl;
        } else {
            out << 0 << "     #" << type_name << " " << attr->name << endl;
        }
    }
    out << WORD << -1 << endl;
}

void CgenNode::gen_disp_table(ostream & out)
{
    out << this->get_name() << "_dispTab:" << endl;
    for(List<MethodTableEntry> *l = method_table; l; l = l->tl()) {
        out << WORD << l->hd()->defining_class << "." << l->hd()->name << endl;
    }
}

void CgenNode::gen_init(ostream & s)
{
  s << name << "_init:" << endl; 
  int max_nt = 0, curr_nt = 0;
  for(int i = features->first(); features->more(i); i = features->next(i)) {
     Feature feature = features->nth(i);
     if (typeid(*feature) == typeid(attr_class)) {
         attr_class * attr = (attr_class*) feature;
         if(typeid(*attr->init) != typeid(no_expr_class)) {
             curr_nt = attr->init->nt();
             if(curr_nt > max_nt) max_nt = curr_nt;
         }
     }
  }

  int nt_offset = (max_nt + 3) * 4;
  s << "    addiu   $sp $sp -" <<nt_offset << " # start as a normal function definition" << endl; 
  s << "    sw  $fp "<<nt_offset<<"($sp)" << endl;      // save the frame pointer on the stack
  s << "    sw  $s0 "<<nt_offset-4<<"($sp)" << endl;       // save s0 on the stack, which is the previous self pointer
  s << "    sw  $ra "<<nt_offset-8<<"($sp)" << endl;       // save the return address on the stack
  s << "    addiu   $fp $sp 4" << endl;    // set framepointer to stack pointer + 4, why?
  s << "    move    $s0 $a0     # end of the function preambule" << endl;      // move the value in a0 = accumulator to s0
  if(name != Object) {
     s << "    jal " << parent << "_init    # initialize the parent class" << endl;
  }
  int offset = 0;
  if( name == Object)
      offset = 3 * 4;
  else
      offset = parentnd->get_size() * 4;
  for(int i = features->first(); features->more(i); i = features->next(i)) {
     Feature feature = features->nth(i);
     if (typeid(*feature) == typeid(attr_class)) {
         attr_class * attr = (attr_class*) feature;
         Symbol type_name = attr->type_decl;
         if( typeid(*attr->init) != typeid(no_expr_class)) {
             dummy_method->enterscope();
             attr->init->code(s, this, dummy_method);
             dummy_method->exitscope();
             s << "    sw  $a0 " << offset << "($s0) # and store the result" << endl;
         }
         offset += 4;
     }
  }
                                           // This is a common sequence to end a call
  s << "    move $a0 $s0" << endl;         // save the return value as $a0
  s << "    lw  $fp "<<nt_offset<<"($sp)" << endl;      // restore the register values
  s << "    lw  $s0 "<<nt_offset-4<<"($sp)" << endl;
  s << "    lw  $ra "<<nt_offset-8<<"($sp)" << endl;
  s << "    addiu   $sp $sp "<<nt_offset<< endl;   // restore the stack pointer
  s << "    jr  $ra" << endl;              // jump back
}

void CgenNode::gen_method_bodies(ostream & s)
{
  if(basic()) { return; }  // We do not generate method bodies for the basic classes

  for(int i = features->first(); features->more(i); i = features->next(i)) {
     Feature feature = features->nth(i);
     if (typeid(*feature) == typeid(method_class)) {
         MethodP method = (MethodP) feature;
         s << name << "." << method->name << ":" << endl; 
         method->enterscope();
         int nr_of_args = 0;
         for(int i = method->formals->first(); method->formals->more(i); i = method->formals->next(i)) {
             nr_of_args++;
         }
         int arg_offset = (method->expr->nt() + 2) * 4;
         for(int i = method->formals->first(); method->formals->more(i); i = method->formals->next(i)) {
             formal_class * param = (formal_class*) method->formals->nth(i);
             s << "# param " << (nr_of_args - i) * 4 + arg_offset<< "($fp)  " << param->name << ":" << param->type_decl << endl;
             LocalRef *ref = new LocalRef();
             ref->name = param->name;
             ref->type_decl = param->type_decl;
             ref->offset = (nr_of_args - i) * 4 + arg_offset;  // 3 is the offset for fp, self and return address
             method->addid(param->name, ref);
         }

   
         int offset = (method->expr->nt() + 3) * 4;
                                                          // This is a common sequence for calls
         s << "    # offset = " << offset << endl;
         s << "    addiu   $sp $sp -"<< offset << "  # push 3 items on the stack:"     << endl;  
         s << "    sw  $fp "<< offset << "($sp)      # 1. the caller's frame pointer " << endl;      
         s << "    sw  $s0 "<< offset-4 << "($sp)    # 2. the caller's? self object"   << endl;     
         s << "    sw  $ra "<< offset-8 << "($sp)    # 3. the return address "         << endl;
         s << "    addiu   $fp $sp 4          # set the fp to the activation record of the function" << endl;   
         s << "    move    $s0 $a0            # move the self object to $a0"    << endl;
    
         method->expr->code(s, this, method);
                                              // This is a common sequence to end a call
         s << "    lw  $fp "<<offset<<"($sp)            # restore the caller's registers" << endl;  // restore the register values
         s << "    lw  $s0 "<<offset-4<<"($sp)             # etc " << endl;                
         s << "    lw  $ra "<<offset-8<<"($sp)             # etc " << endl;
         s << "    addiu $sp $sp "<<offset + (nr_of_args * 4)<<"           # restore stack pointer " << endl;   // restore the stack pointer
         s << "    jr  $ra                    # and jump back" << endl;          
         method->exitscope();
     }
  }
}

void CgenClassTable::code()
{
  if (cgen_debug) str << "# coding global data" << endl;
  code_global_data();

  if (cgen_debug) str << "# choosing gc" << endl;
  code_select_gc();

  if (cgen_debug) str << "# coding constants" << endl;
  code_constants();

//                 Add your code to emit
//                   - prototype objects
  for(List<CgenNode> *l = nds; l; l = l->tl()) {
      l->hd()->gen_obj_proto(str);
  }
  str << "classTab:" << endl;
  for(List<CgenNode> *l = nds; l; l = l->tl()) {
      str << "    .word " << l->hd()->name << "_protObj" << endl;
      str << "    .word " << l->hd()->name << "_init" << endl;
  }

//                   - class_nameTab
  str << "class_nameTab:" << endl;
  for(List<CgenNode> *l = nds; l; l = l->tl()) {
      Symbol name = l->hd()->name;
      str << "    .word ";
      stringtable.lookup_string(name->get_string())->code_ref(str); 
      str << endl;
  }
//
//                   - dispatch tables
  for(List<CgenNode> *l = nds; l; l = l->tl())
      l->hd()->gen_disp_table(str);
//

  if (cgen_debug) str << "## coding global text" << endl;
  code_global_text();

//                 Add your code to emit
//                   - object initializer
//                   - the class methods
  for(List<CgenNode> *l = nds; l; l = l->tl()) {
    l->hd()->gen_init(str);
    l->hd()->gen_method_bodies(str);
  }

}


CgenNodeP CgenClassTable::root()
{
   return probe(Object);
}


///////////////////////////////////////////////////////////////////////
//
// CgenNode methods
//
///////////////////////////////////////////////////////////////////////

CgenNode::CgenNode(Class_ nd, Basicness bstatus, CgenClassTableP ct) :
   class__class((const class__class &) *nd),
   parentnd(NULL),
   children(NULL),
   basic_status(bstatus),
   class_table(ct)
{ 
   stringtable.add_string(name->get_string());          // Add class name to string table
}


//******************************************************************
//
//   Fill in the following methods to produce code for the
//   appropriate expression.  You may add or remove parameters
//   as you wish, but if you do, remember to change the parameters
//   of the declarations in `cool-tree.h'  Sample code for
//   constant integers, strings, and booleans are provided.
//
//*****************************************************************

void assign_class::code(ostream &s, CgenNodeP ctx, MethodP method) {
    expr->code(s, ctx, method);
    LocalRef * ref;
    if((method && (ref = method->lookup(name)) != NULL)) {
        s << "    sw    $a0 " << ref->offset << "($fp) #   local var: " << name << endl;
    } else {
        int offset = (ctx->get_attr_index(name)+3) * 4;
        if(offset < 0) {
            s << "Should not happen, variable: " << name << " not found in scope" << endl;
        }
        s << "    sw    $a0 " << offset << "($s0) #    member var: " << ctx->get_name() << "." << name << endl;
    }
}

int assign_class::nt() {
    return expr->nt();
}

void static_dispatch_class::code(ostream &s, CgenNodeP ctx, MethodP method) {
    CgenNodeP target = ctx->class_table->lookup(expr->get_type());
    if(target->name == SELF_TYPE) {
        target = ctx;
    }
    int offset = target->get_method_index(name) * 4;
    if(offset < 4) {
        s << "#ERROR method " << name << " not found in scope of " << ctx->name << endl;
    }
    // int i = 0;
    // for(i = actual->first(); actual->more(i); i = actual->next(i)){} // empty loop
    // now i contains the length of the arguments
    // int stack_offset = i * 4;
    // if(stack_offset) {
    //}
    for(int i = actual->first(); actual->more(i); i = actual->next(i)) {
        actual->nth(i)->code(s, ctx, method);
        s << "    sw    $a0 0($sp)  # push arg " << i << " on stack" << endl;   // store the result on the stack
        s << "    addiu $sp $sp -4 # for call to " << name << endl;                                   
    }
    expr->code(s, ctx, method);
    int label = ctx->next_label();
    s << "    bne $a0 $zero label" << label << endl;
    s << "    la  $a0 str_const0" << endl;
    s << "    li  $t1 1" << endl;
    s << "    jal _dispatch_abort" << endl;
    s << "label"<<label<<":";
    s << "    la    $t1 " << type_name << "_dispTab" << endl;
    s << "    lw    $t1 " << offset << "($t1)     #   @" << type_name << "." << name << endl; 
    s << "    jal   $t1 # " << endl;
}

int static_dispatch_class::nt() {
    int max = 0, current = 0;
    for(int i = actual->first(); actual->more(i); i = actual->next(i)) {
        current = actual->nth(i)->nt();
        max = std::max(current, max);
    }
    return max;
}
void dispatch_class::code(ostream &s, CgenNodeP ctx, MethodP method) {
    CgenNodeP target = ctx->class_table->lookup(expr->get_type());
    if(target->name == SELF_TYPE) {
        target = ctx;
    }
    int offset = target->get_method_index(name) * 4;
    /* 
    int i = 0;
    for(i = actual->first(); actual->more(i); i = actual->next(i)){} // empty loop
   
    // now i contains the length of the arguments
    int stack_offset = i * 4;
    if(stack_offset) {
        s << "    addiu $sp $sp -" << stack_offset << " # create argspace to call " << name << endl;                                   
    }
    for(i = actual->first(); actual->more(i); i = actual->next(i)) {
        actual->nth(i)->code(s, ctx, method);
        s << "    sw    $a0 "<<(i+1)*4<<"($sp) # push on the stack" << endl;   // store the result on the stack
    }
    */
    for(int i = actual->first(); actual->more(i); i = actual->next(i)) {
        actual->nth(i)->code(s, ctx, method);
        s << "    sw    $a0 0($sp)  # push arg " << i << " on stack" << endl;   // store the result on the stack
        s << "    addiu $sp $sp -4 # for call to " << name << endl;                                   
    }
    expr->code(s, ctx, method);
    int label = ctx->next_label();
    s << "    bne $a0 $zero label" << label << endl;
    s << "    la  $a0 str_const0" << endl;
    s << "    li  $t1 1" << endl;
    s << "    jal _dispatch_abort" << endl;
    s << "label"<<label<<":";
    s << "    lw    $t1 obj_disp($a0)" << endl;
    s << "    lw    $t1 " << offset << "($t1)     #" << target->name << "." << name << endl; 
    s << "    jalr  $t1" << endl;
}

int dispatch_class::nt() {
    int max = 0, current = 0;
    for(int i = actual->first(); actual->more(i); i = actual->next(i)) {
        current = actual->nth(i)->nt();
        max = std::max(current, max);
    }
    return max;
}

void cond_class::code(ostream &s, CgenNodeP ctx, MethodP method) {
    s << "# start coding an if statement" << endl;
    pred->code(s, ctx, method);
    int i = ctx->next_label();
    s << "    lw      $t1, bool_slot($a0)"        << endl;
    s << "    beq     $t1, 1, true_branch" << i << endl;
    s << "false_branch" << i << ":" << endl;
    else_exp->code(s, ctx, method);
    s << "    b       end_if" << i << endl;
    s << "true_branch" << i << ":" << endl;
    then_exp->code(s, ctx, method);
    s << "end_if" << i << ":" << endl;
}

int cond_class::nt() {
    int result = std::max(std::max(pred->nt(), else_exp->nt()), then_exp->nt());
    return result;
}

void loop_class::code(ostream &s, CgenNodeP ctx, MethodP method) {
    s << "# start coding a loop statement" << endl;
    int i = ctx->next_label();
    s << "loop_start" << i << ":" << endl;
    pred->code(s, ctx, method);
    s << "    lw      $t1, bool_slot($a0)" << endl;
    s << "    beq     $t1, 0, loop_end" << i << endl;
    body->code(s, ctx, method);
    s << "    b       loop_start" << i << endl;
    s << "loop_end" << i << ":" << endl;
    s << "    li      $a0, 0" << endl;
}

int loop_class::nt() {
    return std::max(pred->nt(), body->nt());
}

void typcase_class::code(ostream &s, CgenNodeP ctx, MethodP method) {
    method->enterscope();
    branch_class * branch;
    expr->code(s, ctx, method);
    int label = ctx->next_label();
    s << "    bne $a0, $zero start_case" << label << endl;
    s << "    la  $a0 str_const0" << endl;
    s << "    li  $t1 1" << endl;
    s << "    jal _case_abort2" << endl;
    s << "    # start of  block" << endl;
    s << "start_case" << label << ":" << endl;
    s << "    sw     $a0, " << offset << "($fp)   # push value in framepointer" << endl;
    s << "    # start of case expression " << endl;
    s << "    lw     $t1, obj_tag($a0) # find the obj type" << endl;
    s << "    li     $t2, 4            # use as offset into case table" << endl;
    s << "    mul    $t1, $t1, $t2" << endl;
    s << "    la     $t2, type_label" << label << endl;
    s << "    addu   $t2, $t2, $t1" << endl;
    s << "    jr      $t2" << endl;
    s << "type_label" << label << ":" << endl; 
    List<CgenNode>* cs = ctx->class_table->get_classes();
    for(List<CgenNode> *l = cs; l; l = l->tl()) {
        CgenNodeP c = l->hd();
        s << "   # " << c->name << " " << c->get_type() << endl;
        Symbol closest_parent = NULL;
        while(c->name != No_class) {
            for(int i = cases->first(); cases->more(i); i = cases->next(i)) {
                branch = (branch_class*) cases->nth(i);
                int type = ctx->class_table->lookup(branch->type_decl)->get_type();
                if(type == c->get_type()) {
                    closest_parent = c->name;
                    break;
                }
            }
            if(!closest_parent) c = c->get_parentnd(); else break;
        }
        if(!closest_parent) {
            // jump to the void branch
            s << "    b type_" << label << "_void" << endl;
        } else {
            // create a jump instruction
            s << "# create a jump instruction to jump to " << closest_parent << endl;
            s << "    b type_" << label << "_" << closest_parent << endl;
        }
    }
    for(int i = cases->first(); cases->more(i); i = cases->next(i)) {
        branch = (branch_class*) cases->nth(i);
        s << "type_" << label << "_" << branch->type_decl << ":" << endl;
        LocalRef * ref = new LocalRef();
        ref->name = branch->name;
        ref->type_decl = branch->type_decl;
        ref->offset = branch->offset;
        method->addid(branch->name, ref);
        branch->expr->code(s, ctx, method);
        s << "    b  end_case" << label << endl;
    }
    s << "type_" << label << "_void:" << endl;
    s << "    jal _case_abort" << endl;
    s << "end_case" << label << ":" << endl;
    s << "# end of case block" << endl;
    method->exitscope();
}

int typcase_class::nt() {
    int max = 0, current = 0, offset = 0;
    current = expr->nt();
    for(int i = cases->first(); cases->more(i); i = cases->next(i)) {
        branch_class * branch = (branch_class*) cases->nth(i);
        current = branch->nt();
        offset = branch->offset;
        max = std::max(current, max);
    }
    return max;
}

int branch_class::nt() {
    int index = expr->nt();  // We need one extra to store the local variable;
    offset = index;
    return index + 1;
}

void block_class::code(ostream &s, CgenNodeP ctx, MethodP method) {
    for(int i = body->first(); body->more(i); i = body->next(i))
        body->nth(i)->code(s, ctx, method);
}

int block_class::nt() {
    int max = 0 , current = 0;
    for(int i = body->first(); body->more(i); i = body->next(i)) {
        current = body->nth(i)->nt();
        max = std::max(current, max);
    }
    return max;
}

void let_class::code(ostream &s, CgenNodeP ctx, MethodP method) {
    s << "    # start of let block" << endl;
    if(typeid(*init) != typeid(no_expr_class)) {
        init->code(s, ctx, method);
        s << "    # end let initializer" << endl;
    } else {
        s << "    la $a0 "; // Not no newline yet
        if(type_decl == Int) {
            inttable.lookup_string("0")->code_ref(s); s << endl;
        } else if( type_decl == Bool) {
            falsebool.code_ref(s); s << endl;
        } else if( type_decl == Str) {
            stringtable.lookup_string("")->code_ref(s); s << endl;
        } else {
            s << 0 << "     #" << type_decl << endl;
        }
    }
    s << "    sw  $a0 " << offset << "($fp) # initialize let " << identifier << endl;
    method->enterscope();
    LocalRef * ref = new LocalRef();
    ref->name = identifier;
    ref->type_decl = type_decl;
    ref->offset = offset;
    method->addid(identifier, ref);
    // now code the body of the let block
    body->code(s, ctx, method);
    s << "    # end of let block" << endl;
    method->exitscope();
}

int let_class::nt() {
    int index = body->nt();
    offset = index * 4; 
    return index + 1; // reserve an extra variable for each let statement
}

void plus_class::code(ostream &s, CgenNodeP ctx, MethodP method) {
    e1->code(s, ctx, method);
    s << "# create a new int object and push it on the stack" << endl;
    s << "    jal     Object.copy" << endl;         // create result
    s << "    sw      $a0, 0($sp)" << endl;
    s << "    addiu   $sp, $sp -4" << endl;         // increase stack pointer

    s << "    lw      $a0, int_slot($a0)" << endl;  // get the value from the int object 
    s << "    sw      $a0, 0($sp)" << endl;         // store the result on top of stack
    s << "    addiu   $sp, $sp -4" << endl;         // increase stack pointer
    e2->code(s, ctx, method);
    s << "    lw      $a0, int_slot($a0)" << endl;  // get the value from the int object 
    s << "    lw      $t1, 4($sp)" << endl;         // load the previous result from stack into $t1
    s << "    add     $a0, $t1, $a0" << endl;       // add and store in $a0
    s << "    addiu   $sp, $sp, 4" << endl;         // pop value from stack
 
    s << "    lw      $t1, 4($sp)" << endl;         // get the address of the result
    s << "    sw      $a0, int_slot($t1)" << endl;  // store the accumulator the result
    s << "    move    $a0 $t1" << endl;
    s << "    addiu   $sp, $sp, 4" << endl;         // pop the result of the stack (is now in accumulator)
}

int plus_class::nt() {
    return std::max(e1->nt(), e2->nt());
}


void sub_class::code(ostream &s, CgenNodeP ctx, MethodP method) {
    e1->code(s, ctx, method);
    s << "# create a new int object and push it on the stack" << endl;
    s << "    jal     Object.copy" << endl;         // create result
    s << "    sw      $a0, 0($sp)" << endl;
    s << "    addiu   $sp, $sp -4" << endl;         // increase stack pointer

    s << "    lw      $a0, int_slot($a0)" << endl;  // get the value from the int object 
    s << "    sw      $a0, 0($sp)" << endl;   //  store the result on top of stack
    s << "    addiu   $sp, $sp -4" << endl;   //  increase stack pointer

    e2->code(s, ctx, method);

    s << "    lw      $a0, int_slot($a0)" << endl;  // get the value from the int object 
    s << "    lw      $t1, 4($sp)" << endl;   //  load the previous result from stack into $t1
    s << "    sub     $a0, $t1, $a0" << endl; //  substract and store in $a0
    s << "    addiu   $sp, $sp, 4" << endl;   //  pop value from stack

    s << "    lw      $t1, 4($sp)" << endl;         // get the address of the result
    s << "    sw      $a0, int_slot($t1)" << endl;  // store the accumulator the result
    s << "    move    $a0 $t1" << endl;
    s << "    addiu   $sp, $sp, 4" << endl;         // pop the result of the stack (is now in accumulator)
}

int sub_class::nt() {
    return std::max(e1->nt(), e2->nt());
}

void mul_class::code(ostream &s, CgenNodeP ctx, MethodP method) {
    e1->code(s, ctx, method);
    s << "# create a new int object and push it on the stack" << endl;
    s << "    jal     Object.copy" << endl;         // create result
    s << "    sw      $a0, 0($sp)" << endl;
    s << "    addiu   $sp, $sp -4" << endl;         // increase stack pointer

    s << "    lw      $a0, int_slot($a0)" << endl;  // get the value from the int object 
    s << "    sw      $a0, 0($sp)" << endl;   //  store the result on top of stack
    s << "    addiu   $sp, $sp -4" << endl;   //  increase stack pointer
    e2->code(s, ctx, method);
    s << "    lw      $a0, int_slot($a0)" << endl;  // get the value from the int object 
    s << "    lw      $t1, 4($sp)" << endl;   //  load the previous result from stack into $t1
    s << "    mul     $a0, $t1, $a0" << endl; //  substract and store in $a0
    s << "    addiu   $sp, $sp, 4" << endl;   //  pop value from stack

    s << "    lw      $t1, 4($sp)" << endl;         // get the address of the result
    s << "    sw      $a0, int_slot($t1)" << endl;  // store the accumulator the result
    s << "    move    $a0 $t1" << endl;
    s << "    addiu   $sp, $sp, 4" << endl;         // pop the result of the stack (is now in accumulator)
}

int mul_class::nt() {
    return std::max(e1->nt(), e2->nt());
}

void divide_class::code(ostream &s, CgenNodeP ctx, MethodP method) {
    e1->code(s, ctx, method);
    s << "# create a new int object and push it on the stack" << endl;
    s << "    jal     Object.copy" << endl;         // create result
    s << "    sw      $a0, 0($sp)" << endl;
    s << "    addiu   $sp, $sp -4" << endl;         // increase stack pointer

    s << "    lw      $a0, int_slot($a0)" << endl;  // get the value from the int object 
    s << "    sw      $a0, 0($sp)" << endl;   //  store the result on top of stack
    s << "    addiu   $sp, $sp -4" << endl;   //  increase stack pointer

    e2->code(s, ctx, method);

    s << "    lw      $a0, int_slot($a0)" << endl;  // get the value from the int object 
    s << "    lw      $t1, 4($sp)" << endl;         //  load the previous result from stack into $t1
    s << "    div     $a0, $t1, $a0" << endl;       //  substract and store in $a0
    s << "    addiu   $sp, $sp, 4" << endl;         //  pop value from stack

    s << "    lw      $t1, 4($sp)" << endl;         // get the address of the result
    s << "    sw      $a0, int_slot($t1)" << endl;  // store the accumulator the result
    s << "    move    $a0 $t1" << endl;
    s << "    addiu   $sp, $sp, 4" << endl;         // pop the result of the stack (is now in accumulator)
}

int divide_class::nt() {
    return std::max(e1->nt(), e2->nt());
}

void neg_class::code(ostream &s, CgenNodeP ctx, MethodP method) {
    e1->code(s, ctx, method);
    s << "# create a new int object and push it on the stack" << endl;
    s << "    jal     Object.copy" << endl;         // create result
    s << "    sw      $a0, 0($sp)" << endl;
    s << "    addiu   $sp, $sp -4" << endl;         // increase stack pointer

    s << "    lw      $a0, int_slot($a0)" << endl;  // get the value from the int object 
    s << "    sw      $a0, 0($sp)" << endl;         //  store the result on top of stack
    s << "    addiu   $sp, $sp -4" << endl;         //  increase stack pointer
    s << "    li      $t1, -1" << endl;   
    s << "    mul     $a0, $t1, $a0" << endl;       //  multiply by -1 and store in $a0
    s << "    addiu   $sp, $sp, 4" << endl;         //  pop value from stack

    s << "    lw      $t1, 4($sp)" << endl;         // get the address of the result
    s << "    sw      $a0, int_slot($t1)" << endl;  // store the accumulator the result
    s << "    move    $a0 $t1" << endl;
    s << "    addiu   $sp, $sp, 4" << endl;         // pop the result of the stack (is now in accumulator)
}

int neg_class::nt() {
    return e1->nt();
}

void lt_class::code(ostream &s, CgenNodeP ctx, MethodP method) {
    e1->code(s, ctx, method);
    s << "    lw      $a0, int_slot($a0)" << endl;  // get the value from the int object 
    s << "    sw      $a0, 0($sp)" << endl;   //  store the result on top of stack
    s << "    addiu   $sp, $sp -4" << endl;   //  increase stack pointer
    e2->code(s, ctx, method);
    s << "    lw      $a0, int_slot($a0)" << endl;  // get the value from the int object 
    s << "    lw      $t1, 4($sp)" << endl;   //  load the previous result from stack into $t1
    s << "    sub     $a0, $t1, $a0" << endl; //  substract and store in $a0
    s << "    addiu   $sp, $sp, 4" << endl;   //  pop value from stack
    
    int i = ctx->next_label();
    s << "    bltz    $a0 true_label" << i << endl;
    s << "false_label" << i << ":" << endl;
    emit_load_bool(ACC, BoolConst(0), s);
    s << "    b     end_comp" << i << endl;
    s << "true_label" << i << ":" << endl;
    emit_load_bool(ACC, BoolConst(1), s);
    s << "end_comp" << i << ":" << endl;
}

int lt_class::nt() {
    return std::max(e1->nt(), e2->nt());
}

void eq_class::code(ostream &s, CgenNodeP ctx, MethodP method) {
    Symbol t1 = e1->get_type();
    Symbol t2 = e2->get_type();

    if( t1 == Int && t2 == Int ) {
        e1->code(s, ctx, method);
        s << "    lw      $a0, int_slot($a0)" << endl;  // get the value from the int object 
        s << "    sw      $a0, 0($sp)" << endl;         // store the result on top of stack
        s << "    addiu   $sp, $sp -4" << endl;         // increase stack pointer
        e2->code(s, ctx, method);
        s << "    lw      $a0, int_slot($a0)" << endl;  // get the value from the int object 
        s << "    lw      $t1, 4($sp)" << endl;         // load the previous result from stack into $t1
        s << "    addiu   $sp, $sp, 4" << endl;         // pop value from stack
    } else if( t1 == Str && t2 == Str ) {
        e1->code(s, ctx, method);
        s << "    lw      $a0, str_field($a0)" << endl;  // get the value from the int object 
        s << "    sw      $a0, 0($sp)" << endl;         // store the result on top of stack
        s << "    addiu   $sp, $sp -4" << endl;         // increase stack pointer
        e2->code(s, ctx, method);
        s << "    lw      $a0, str_field($a0)" << endl;  // get the value from the int object 
        s << "    lw      $t1, 4($sp)" << endl;         // load the previous result from stack into $t1
        s << "    addiu   $sp, $sp, 4" << endl;         // pop value from stack
    } else {
        e1->code(s, ctx, method);
        s << "    sw      $a0, 0($sp)" << endl;         // store the result on top of stack
        s << "    addiu   $sp, $sp -4" << endl;         // increase stack pointer
        e2->code(s, ctx, method);
        s << "    lw      $t1, 4($sp)" << endl;         // load the previous result from stack into $t1
        s << "    addiu   $sp, $sp, 4" << endl;         // pop value from stack
    }
    int i = ctx->next_label();
    s << "    beq     $a0, $t1 true_label" << i << endl; //  substract and store in $a0
    s << "false_label" << i << ":" << endl;
    emit_load_bool(ACC, BoolConst(0), s);
    s << "    b     end_comp" << i << endl;
    s << "true_label" << i << ":" << endl;
    emit_load_bool(ACC, BoolConst(1), s);
    s << "end_comp" << i << ":" << endl;
}

int eq_class::nt() {
    return std::max(e1->nt(), e2->nt());
}

void leq_class::code(ostream &s, CgenNodeP ctx, MethodP method) {
    e1->code(s, ctx, method);
    s << "    lw      $a0, int_slot($a0)" << endl;  // get the value from the int object 
    s << "    sw      $a0, 0($sp)" << endl;   //  store the result on top of stack
    s << "    addiu   $sp, $sp -4" << endl;   //  increase stack pointer
    e2->code(s, ctx, method);
    s << "    lw      $a0, int_slot($a0)" << endl;  // get the value from the int object 
    s << "    lw      $t1, 4($sp)" << endl;   //  load the previous result from stack into $t1
    s << "    sub     $a0, $t1, $a0" << endl; //  substract and store in $a0
    s << "    addiu   $sp, $sp, 4" << endl;   //  pop value from stack
    
    int i = ctx->next_label();
    s << "    blez    $a0 true_label" << i << endl;
    s << "false_label" << i << ":" << endl;
    emit_load_bool(ACC, BoolConst(0), s);
    s << "    b     end_comp" << i << endl;
    s << "true_label" << i << ":" << endl;
    emit_load_bool(ACC, BoolConst(1), s);
    s << "end_comp" << i << ":" << endl;
}

int leq_class::nt() {
    return e1->nt();
}

void comp_class::code(ostream &s, CgenNodeP ctx, MethodP method) {
    int i = ctx->next_label();
    e1->code(s, ctx, method);
    s << "    lw     $t1 bool_slot($a0)" << endl;
    s << "    beqz   $t1, true_branch" << i << "   # test for void value" << endl;
    s << "false_branch" << i << ":" << endl;
    emit_load_bool(ACC, BoolConst(0), s);
    s << "    b     end_comp" << i << endl;
    s << "true_branch" << i << ":" << endl;
    emit_load_bool(ACC, BoolConst(1), s);
    s << "end_comp" << i << ":" << endl;
}

int comp_class::nt() {
    return e1->nt();
}

void int_const_class::code(ostream& s, CgenNodeP ctx, MethodP method)  
{
  //
  // Need to be sure we have an IntEntry *, not an arbitrary Symbol
  //
    // emit_load_int(ACC,inttable.lookup_string(token->get_string()),s);
    s << "    la $a0 "; inttable.lookup_string(token->get_string())->code_ref(s); 
    s << " # load " << token->get_string() << endl;
}

int int_const_class::nt() {
    return 0;
}

void string_const_class::code(ostream& s, CgenNodeP ctx, MethodP method)
{
    //emit_load_string(ACC,stringtable.lookup_string(token->get_string()),s);
    s << "    la $a0 "; stringtable.lookup_string(token->get_string())->code_ref(s); 
    s << endl;
    //s << " # " << token << endl;
}

int string_const_class::nt() {
    return 0;
}

void bool_const_class::code(ostream& s, CgenNodeP ctx, MethodP method)
{
    emit_load_bool(ACC, BoolConst(val), s);
}

int bool_const_class::nt() {
    return 0;
}

void new__class::code(ostream &s, CgenNodeP ctx, MethodP method) {
    Symbol type_name = this->type_name;
    // FIXME: this should be dynamic, so if SELF_TYPE, we should lookup 
    // the _protObj and and _init based on the type field of the self
    // object.
    if(type_name == SELF_TYPE){
        s << "    lw  $a0 obj_tag($s0)            # get the type of the self object" << endl;    
        s << "    li  $t1 8                       # 8 bytes per classTab entry" << endl;
        s << "    mul $a0 $a0 $t1                 # calculate the offset" << endl;
        s << "    la  $t1 classTab                # find the class table" << endl;
        s << "    add $a0 $a0 $t1                 # and find the _protObj entry inside it" << endl;
        s << "    lw  $t1 4($a0)                  # get the value from the address pointed to" << endl;
        s << "    sw  $t1 0($sp)                  # push" << endl;
        s << "    addiu $sp $sp -4                # " << endl;
        s << "    lw  $a0 0($a0)                  # get the value from the address pointed to" << endl;
        s << "    jal Object.copy                 # make a copy" << endl;    //  Call copy
        s << "    lw  $t1 4($sp)                  # pop the return address" << endl; // Main_init
        s << "    addiu $sp $sp 4                 # " << endl;  
        s << "    jalr $t1                        # and initialize it" << endl;      // initialize the new object
    } else {
        s << "    la  $a0 " << type_name << "_protObj      # get the address of the prottype" << endl;    
        s << "    jal Object.copy                          # make a copy" << endl;    //  Call copy
        s << "    jal " << type_name <<"_init              # and initialize it" << endl;      // initialize the new object
    }
}

int new__class::nt() {
    return 0;
}

void isvoid_class::code(ostream &s, CgenNodeP ctx, MethodP method) {
    int i = ctx->next_label();
    e1->code(s, ctx, method);
    s << "    move  $t1 $a0" << endl;
    s << "    beqz   $t1, void_branch" << i << "   # test for void value" << endl;
    s << "notvoid_branch" << i << ":" << endl;
    emit_load_bool(ACC, BoolConst(0), s);
    s << "    b     end_isvoid" << i << endl;
    s << "void_branch" << i << ":" << endl;
    emit_load_bool(ACC, BoolConst(1), s);
    s << "end_isvoid" << i << ":" << endl;
}

int isvoid_class::nt() {
    return e1->nt();
}

void no_expr_class::code(ostream &s, CgenNodeP ctx, MethodP method) {
    s << "# no expression here" << endl;
}

int no_expr_class::nt() {
    return 0;
}

void object_class::code(ostream &s, CgenNodeP ctx, MethodP method) {
    LocalRef * ref;
    if(name == self) {
        s << "    move  $a0 $s0" << endl;
    } else if( method && (ref = method->lookup(name)) != NULL ) {
        s << "    lw    $a0 " << ref->offset << "($fp) #   local var: " << name << endl;
    } else {
        int offset = (ctx->get_attr_index(name)+3) * 4;
        if(offset == -1) {
            s << "Should not happen, variable: " << name << " not found in scope" << endl;
        }
        s << "    lw    $a0 " << offset << "($s0) #    member var: " << ctx->get_name() << "." << name << endl;
    }
}

int object_class::nt() {
    return 0;
}
