#include <assert.h>
#include <stdio.h>
#include "emit.h"
#include "cool-tree.h"
#include "symtab.h"

enum Basicness     {Basic, NotBasic};
#define TRUE 1
#define FALSE 0

class CgenClassTable;
typedef CgenClassTable *CgenClassTableP;

class CgenNode;
typedef CgenNode *CgenNodeP;

class MethodTableEntry {
public:
   Symbol defining_class;
   Symbol name;
   
   MethodTableEntry * copy() {
      MethodTableEntry *c = new MethodTableEntry();
      c->defining_class = this->defining_class;
      c->name = this->name;
      return c;
   }
};

class AttrTableEntry {
public:
   Symbol name;
   Symbol type_decl;

   AttrTableEntry * copy() {
      AttrTableEntry *c = new AttrTableEntry();
      c->name = this->name;
      c->type_decl = this->type_decl;
      return c;
   }
};

class LocalRef {
public:
   Symbol name;
   Symbol type_decl;
   int offset;
};

class CgenClassTable : public SymbolTable<Symbol,CgenNode> {
   
private:
   List<CgenNode> *nds;
   ostream& str;
   int stringclasstag;
   int intclasstag;
   int boolclasstag;
   int label_counter;

// The following methods emit code for
// constants and global declarations.

   void code_global_data();
   void code_global_text();
   void code_bools(int);
   void code_select_gc();
   void code_constants();

// The following creates an inheritance graph from
// a list of classes.  The graph is implemented as
// a tree of `CgenNode', and class names are placed
// in the base class symbol table.

   void install_basic_classes();
   void install_class(CgenNodeP nd);
   void install_classes(Classes cs);
   void build_inheritance_tree();
   void set_relations(CgenNodeP nd);
public:
   CgenClassTable(Classes, ostream& str);
   void code();
   CgenNodeP root();
   int next_label() { return ++label_counter; }
   List<CgenNode>* get_classes() { return nds; }
};


class CgenNode : public class__class {
private: 
   CgenNodeP parentnd;                        // Parent of class
   List<CgenNode> *children;                  // Children of class
   Basicness basic_status;                    // `Basic' if class is basic
                                              // `NotBasic' otherwise

   int type;
   List<MethodTableEntry> *method_table;
   List<AttrTableEntry>   *attr_table;

public:
   CgenNode(Class_ c,
            Basicness bstatus,
            CgenClassTableP class_table);

   CgenClassTableP class_table;
   void add_child(CgenNodeP child);
   List<CgenNode> *get_children() { return children; }
   void set_parentnd(CgenNodeP p);
   CgenNodeP get_parentnd() { return parentnd; }
   int basic() { return (basic_status == Basic); }
  
   void set_type(int type) { this->type = type; }
   int  get_type() { return type; }

   void gen_obj_proto(ostream & out);
   void gen_disp_table(ostream & out);
   void gen_method_bodies(ostream & out);
   void gen_init(ostream & out);

   int get_size();

   void recursively_set_tables();
   void set_method_table(); 
   void set_attr_table();

   List<MethodTableEntry>* get_method_table() { return method_table; }
   List<AttrTableEntry>* get_attr_table() { return attr_table; }
   int get_method_index( Symbol name );
   int get_attr_index( Symbol name );

   int next_label() { return class_table->next_label(); }
};

class BoolConst 
{
 private: 
  int val;
 public:
  BoolConst(int);
  void code_def(ostream&, int boolclasstag);
  void code_ref(ostream&) const;
};

