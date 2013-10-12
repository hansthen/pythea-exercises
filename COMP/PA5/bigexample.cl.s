# start of generated code
obj_tag=0
obj_size=4
obj_disp=8
obj_attr=12
int_slot=12
bool_slot=12
str_size=12 # This is a pointer to an Int object!!!
str_field=16    # The beginning of the ascii sequence
str_maxsize=1026    # the maximum string length
	.data
	.align	2
	.globl	class_nameTab
	.globl	Main_protObj
	.globl	Int_protObj
	.globl	String_protObj
	.globl	bool_const0
	.globl	bool_const1
	.globl	_int_tag
	.globl	_bool_tag
	.globl	_string_tag
_int_tag:
	.word	14
_bool_tag:
	.word	13
_string_tag:
	.word	12
	.globl	_MemMgr_INITIALIZER
_MemMgr_INITIALIZER:
	.word	_NoGC_Init
	.globl	_MemMgr_COLLECTOR
_MemMgr_COLLECTOR:
	.word	_NoGC_Collect
	.globl	_MemMgr_TEST
_MemMgr_TEST:
	.word	0
	.word	-1
str_const47:
	.word	12
	.word	5
	.word	String_dispTab
	.word	int_const2
	.byte	0	
	.align	2
	.word	-1
str_const46:
	.word	12
	.word	6
	.word	String_dispTab
	.word	int_const9
	.ascii	"Main"
	.byte	0	
	.align	2
	.word	-1
str_const45:
	.word	12
	.word	6
	.word	String_dispTab
	.word	int_const4
	.ascii	"Child"
	.byte	0	
	.align	2
	.word	-1
str_const44:
	.word	12
	.word	6
	.word	String_dispTab
	.word	int_const5
	.ascii	"Parent"
	.byte	0	
	.align	2
	.word	-1
str_const43:
	.word	12
	.word	7
	.word	String_dispTab
	.word	int_const19
	.ascii	"Grandparent"
	.byte	0	
	.align	2
	.word	-1
str_const42:
	.word	12
	.word	6
	.word	String_dispTab
	.word	int_const9
	.ascii	"Base"
	.byte	0	
	.align	2
	.word	-1
str_const41:
	.word	12
	.word	5
	.word	String_dispTab
	.word	int_const1
	.ascii	"C"
	.byte	0	
	.align	2
	.word	-1
str_const40:
	.word	12
	.word	5
	.word	String_dispTab
	.word	int_const1
	.ascii	"B"
	.byte	0	
	.align	2
	.word	-1
str_const39:
	.word	12
	.word	5
	.word	String_dispTab
	.word	int_const1
	.ascii	"A"
	.byte	0	
	.align	2
	.word	-1
str_const38:
	.word	12
	.word	6
	.word	String_dispTab
	.word	int_const9
	.ascii	"Blah"
	.byte	0	
	.align	2
	.word	-1
str_const37:
	.word	12
	.word	5
	.word	String_dispTab
	.word	int_const3
	.ascii	"C2"
	.byte	0	
	.align	2
	.word	-1
str_const36:
	.word	12
	.word	5
	.word	String_dispTab
	.word	int_const3
	.ascii	"C1"
	.byte	0	
	.align	2
	.word	-1
str_const35:
	.word	12
	.word	5
	.word	String_dispTab
	.word	int_const1
	.ascii	"P"
	.byte	0	
	.align	2
	.word	-1
str_const34:
	.word	12
	.word	6
	.word	String_dispTab
	.word	int_const5
	.ascii	"String"
	.byte	0	
	.align	2
	.word	-1
str_const33:
	.word	12
	.word	6
	.word	String_dispTab
	.word	int_const9
	.ascii	"Bool"
	.byte	0	
	.align	2
	.word	-1
str_const32:
	.word	12
	.word	5
	.word	String_dispTab
	.word	int_const0
	.ascii	"Int"
	.byte	0	
	.align	2
	.word	-1
str_const31:
	.word	12
	.word	5
	.word	String_dispTab
	.word	int_const3
	.ascii	"IO"
	.byte	0	
	.align	2
	.word	-1
str_const30:
	.word	12
	.word	6
	.word	String_dispTab
	.word	int_const5
	.ascii	"Object"
	.byte	0	
	.align	2
	.word	-1
str_const29:
	.word	12
	.word	7
	.word	String_dispTab
	.word	int_const11
	.ascii	"_prim_slot"
	.byte	0	
	.align	2
	.word	-1
str_const28:
	.word	12
	.word	7
	.word	String_dispTab
	.word	int_const7
	.ascii	"SELF_TYPE"
	.byte	0	
	.align	2
	.word	-1
str_const27:
	.word	12
	.word	7
	.word	String_dispTab
	.word	int_const7
	.ascii	"_no_class"
	.byte	0	
	.align	2
	.word	-1
str_const26:
	.word	12
	.word	8
	.word	String_dispTab
	.word	int_const6
	.ascii	"<basic class>"
	.byte	0	
	.align	2
	.word	-1
str_const25:
	.word	12
	.word	7
	.word	String_dispTab
	.word	int_const11
	.ascii	"looks ok!\n"
	.byte	0	
	.align	2
	.word	-1
str_const24:
	.word	12
	.word	10
	.word	String_dispTab
	.word	int_const82
	.ascii	"gonna call doThemAll\n"
	.byte	0	
	.align	2
	.word	-1
str_const23:
	.word	12
	.word	9
	.word	String_dispTab
	.word	int_const83
	.ascii	"gonna make a Blah\n"
	.byte	0	
	.align	2
	.word	-1
str_const22:
	.word	12
	.word	7
	.word	String_dispTab
	.word	int_const26
	.ascii	"an int: "
	.byte	0	
	.align	2
	.word	-1
str_const21:
	.word	12
	.word	14
	.word	String_dispTab
	.word	int_const84
	.ascii	"tested static dispatch and 'new IO'\n"
	.byte	0	
	.align	2
	.word	-1
str_const20:
	.word	12
	.word	12
	.word	String_dispTab
	.word	int_const85
	.ascii	"printed via dynamic dispatch\n"
	.byte	0	
	.align	2
	.word	-1
str_const19:
	.word	12
	.word	8
	.word	String_dispTab
	.word	int_const6
	.ascii	"hello, world\n"
	.byte	0	
	.align	2
	.word	-1
str_const18:
	.word	12
	.word	8
	.word	String_dispTab
	.word	int_const22
	.ascii	"bigAttrAccess\n"
	.byte	0	
	.align	2
	.word	-1
str_const17:
	.word	12
	.word	7
	.word	String_dispTab
	.word	int_const26
	.ascii	"bigCase\n"
	.byte	0	
	.align	2
	.word	-1
str_const16:
	.word	12
	.word	8
	.word	String_dispTab
	.word	int_const22
	.ascii	"bigStrCompare\n"
	.byte	0	
	.align	2
	.word	-1
str_const15:
	.word	12
	.word	6
	.word	String_dispTab
	.word	int_const5
	.ascii	"foobar"
	.byte	0	
	.align	2
	.word	-1
str_const14:
	.word	12
	.word	5
	.word	String_dispTab
	.word	int_const0
	.ascii	"bar"
	.byte	0	
	.align	2
	.word	-1
str_const13:
	.word	12
	.word	5
	.word	String_dispTab
	.word	int_const0
	.ascii	"foo"
	.byte	0	
	.align	2
	.word	-1
str_const12:
	.word	12
	.word	7
	.word	String_dispTab
	.word	int_const26
	.ascii	"bigSelf\n"
	.byte	0	
	.align	2
	.word	-1
str_const11:
	.word	12
	.word	7
	.word	String_dispTab
	.word	int_const11
	.ascii	"bigAssign\n"
	.byte	0	
	.align	2
	.word	-1
str_const10:
	.word	12
	.word	9
	.word	String_dispTab
	.word	int_const83
	.ascii	"assertion failed: "
	.byte	0	
	.align	2
	.word	-1
str_const9:
	.word	12
	.word	7
	.word	String_dispTab
	.word	int_const26
	.ascii	"bigMath\n"
	.byte	0	
	.align	2
	.word	-1
str_const8:
	.word	12
	.word	5
	.word	String_dispTab
	.word	int_const1
	.ascii	"\n"
	.byte	0	
	.align	2
	.word	-1
str_const7:
	.word	12
	.word	7
	.word	String_dispTab
	.word	int_const26
	.ascii	"failed: "
	.byte	0	
	.align	2
	.word	-1
str_const6:
	.word	12
	.word	7
	.word	String_dispTab
	.word	int_const7
	.ascii	"bigWhile\n"
	.byte	0	
	.align	2
	.word	-1
str_const5:
	.word	12
	.word	6
	.word	String_dispTab
	.word	int_const5
	.ascii	"bigIf\n"
	.byte	0	
	.align	2
	.word	-1
str_const4:
	.word	12
	.word	8
	.word	String_dispTab
	.word	int_const24
	.ascii	"more advanced:\n"
	.byte	0	
	.align	2
	.word	-1
str_const3:
	.word	12
	.word	7
	.word	String_dispTab
	.word	int_const26
	.ascii	"basics:\n"
	.byte	0	
	.align	2
	.word	-1
str_const2:
	.word	12
	.word	5
	.word	String_dispTab
	.word	int_const3
	.ascii	"Hi"
	.byte	0	
	.align	2
	.word	-1
str_const1:
	.word	12
	.word	7
	.word	String_dispTab
	.word	int_const7
	.ascii	"whassup?!"
	.byte	0	
	.align	2
	.word	-1
str_const0:
	.word	12
	.word	10
	.word	String_dispTab
	.word	int_const82
	.ascii	"grading/bigexample.cl"
	.byte	0	
	.align	2
	.word	-1
int_const85:
	.word	14
	.word	4
	.word	Int_dispTab
	.word	29
	.word	-1
int_const84:
	.word	14
	.word	4
	.word	Int_dispTab
	.word	36
	.word	-1
int_const83:
	.word	14
	.word	4
	.word	Int_dispTab
	.word	18
	.word	-1
int_const82:
	.word	14
	.word	4
	.word	Int_dispTab
	.word	21
	.word	-1
int_const81:
	.word	14
	.word	4
	.word	Int_dispTab
	.word	498
	.word	-1
int_const80:
	.word	14
	.word	4
	.word	Int_dispTab
	.word	496
	.word	-1
int_const79:
	.word	14
	.word	4
	.word	Int_dispTab
	.word	468
	.word	-1
int_const78:
	.word	14
	.word	4
	.word	Int_dispTab
	.word	459
	.word	-1
int_const77:
	.word	14
	.word	4
	.word	Int_dispTab
	.word	453
	.word	-1
int_const76:
	.word	14
	.word	4
	.word	Int_dispTab
	.word	444
	.word	-1
int_const75:
	.word	14
	.word	4
	.word	Int_dispTab
	.word	438
	.word	-1
int_const74:
	.word	14
	.word	4
	.word	Int_dispTab
	.word	426
	.word	-1
int_const73:
	.word	14
	.word	4
	.word	Int_dispTab
	.word	417
	.word	-1
int_const72:
	.word	14
	.word	4
	.word	Int_dispTab
	.word	408
	.word	-1
int_const71:
	.word	14
	.word	4
	.word	Int_dispTab
	.word	399
	.word	-1
int_const70:
	.word	14
	.word	4
	.word	Int_dispTab
	.word	390
	.word	-1
int_const69:
	.word	14
	.word	4
	.word	Int_dispTab
	.word	381
	.word	-1
int_const68:
	.word	14
	.word	4
	.word	Int_dispTab
	.word	355
	.word	-1
int_const67:
	.word	14
	.word	4
	.word	Int_dispTab
	.word	353
	.word	-1
int_const66:
	.word	14
	.word	4
	.word	Int_dispTab
	.word	352
	.word	-1
int_const65:
	.word	14
	.word	4
	.word	Int_dispTab
	.word	351
	.word	-1
int_const64:
	.word	14
	.word	4
	.word	Int_dispTab
	.word	350
	.word	-1
int_const63:
	.word	14
	.word	4
	.word	Int_dispTab
	.word	346
	.word	-1
int_const62:
	.word	14
	.word	4
	.word	Int_dispTab
	.word	342
	.word	-1
int_const61:
	.word	14
	.word	4
	.word	Int_dispTab
	.word	341
	.word	-1
int_const60:
	.word	14
	.word	4
	.word	Int_dispTab
	.word	340
	.word	-1
int_const59:
	.word	14
	.word	4
	.word	Int_dispTab
	.word	339
	.word	-1
int_const58:
	.word	14
	.word	4
	.word	Int_dispTab
	.word	327
	.word	-1
int_const57:
	.word	14
	.word	4
	.word	Int_dispTab
	.word	314
	.word	-1
int_const56:
	.word	14
	.word	4
	.word	Int_dispTab
	.word	320
	.word	-1
int_const55:
	.word	14
	.word	4
	.word	Int_dispTab
	.word	313
	.word	-1
int_const54:
	.word	14
	.word	4
	.word	Int_dispTab
	.word	312
	.word	-1
int_const53:
	.word	14
	.word	4
	.word	Int_dispTab
	.word	311
	.word	-1
int_const52:
	.word	14
	.word	4
	.word	Int_dispTab
	.word	310
	.word	-1
int_const51:
	.word	14
	.word	4
	.word	Int_dispTab
	.word	106
	.word	-1
int_const50:
	.word	14
	.word	4
	.word	Int_dispTab
	.word	105
	.word	-1
int_const49:
	.word	14
	.word	4
	.word	Int_dispTab
	.word	104
	.word	-1
int_const48:
	.word	14
	.word	4
	.word	Int_dispTab
	.word	92
	.word	-1
int_const47:
	.word	14
	.word	4
	.word	Int_dispTab
	.word	103
	.word	-1
int_const46:
	.word	14
	.word	4
	.word	Int_dispTab
	.word	102
	.word	-1
int_const45:
	.word	14
	.word	4
	.word	Int_dispTab
	.word	101
	.word	-1
int_const44:
	.word	14
	.word	4
	.word	Int_dispTab
	.word	2116
	.word	-1
int_const43:
	.word	14
	.word	4
	.word	Int_dispTab
	.word	84
	.word	-1
int_const42:
	.word	14
	.word	4
	.word	Int_dispTab
	.word	3114
	.word	-1
int_const41:
	.word	14
	.word	4
	.word	Int_dispTab
	.word	2114
	.word	-1
int_const40:
	.word	14
	.word	4
	.word	Int_dispTab
	.word	116
	.word	-1
int_const39:
	.word	14
	.word	4
	.word	Int_dispTab
	.word	115
	.word	-1
int_const38:
	.word	14
	.word	4
	.word	Int_dispTab
	.word	114
	.word	-1
int_const37:
	.word	14
	.word	4
	.word	Int_dispTab
	.word	16
	.word	-1
int_const36:
	.word	14
	.word	4
	.word	Int_dispTab
	.word	259
	.word	-1
int_const35:
	.word	14
	.word	4
	.word	Int_dispTab
	.word	258
	.word	-1
int_const34:
	.word	14
	.word	4
	.word	Int_dispTab
	.word	257
	.word	-1
int_const33:
	.word	14
	.word	4
	.word	Int_dispTab
	.word	255
	.word	-1
int_const32:
	.word	14
	.word	4
	.word	Int_dispTab
	.word	66
	.word	-1
int_const31:
	.word	14
	.word	4
	.word	Int_dispTab
	.word	65
	.word	-1
int_const30:
	.word	14
	.word	4
	.word	Int_dispTab
	.word	254
	.word	-1
int_const29:
	.word	14
	.word	4
	.word	Int_dispTab
	.word	253
	.word	-1
int_const28:
	.word	14
	.word	4
	.word	Int_dispTab
	.word	251
	.word	-1
int_const27:
	.word	14
	.word	4
	.word	Int_dispTab
	.word	250
	.word	-1
int_const26:
	.word	14
	.word	4
	.word	Int_dispTab
	.word	8
	.word	-1
int_const25:
	.word	14
	.word	4
	.word	Int_dispTab
	.word	7
	.word	-1
int_const24:
	.word	14
	.word	4
	.word	Int_dispTab
	.word	15
	.word	-1
int_const23:
	.word	14
	.word	4
	.word	Int_dispTab
	.word	75
	.word	-1
int_const22:
	.word	14
	.word	4
	.word	Int_dispTab
	.word	14
	.word	-1
int_const21:
	.word	14
	.word	4
	.word	Int_dispTab
	.word	45
	.word	-1
int_const20:
	.word	14
	.word	4
	.word	Int_dispTab
	.word	22
	.word	-1
int_const19:
	.word	14
	.word	4
	.word	Int_dispTab
	.word	11
	.word	-1
int_const18:
	.word	14
	.word	4
	.word	Int_dispTab
	.word	55
	.word	-1
int_const17:
	.word	14
	.word	4
	.word	Int_dispTab
	.word	1234
	.word	-1
int_const16:
	.word	14
	.word	4
	.word	Int_dispTab
	.word	1000
	.word	-1
int_const15:
	.word	14
	.word	4
	.word	Int_dispTab
	.word	123
	.word	-1
int_const14:
	.word	14
	.word	4
	.word	Int_dispTab
	.word	100
	.word	-1
int_const13:
	.word	14
	.word	4
	.word	Int_dispTab
	.word	12
	.word	-1
int_const12:
	.word	14
	.word	4
	.word	Int_dispTab
	.word	24
	.word	-1
int_const11:
	.word	14
	.word	4
	.word	Int_dispTab
	.word	10
	.word	-1
int_const10:
	.word	14
	.word	4
	.word	Int_dispTab
	.word	34
	.word	-1
int_const9:
	.word	14
	.word	4
	.word	Int_dispTab
	.word	4
	.word	-1
int_const8:
	.word	14
	.word	4
	.word	Int_dispTab
	.word	99
	.word	-1
int_const7:
	.word	14
	.word	4
	.word	Int_dispTab
	.word	9
	.word	-1
int_const6:
	.word	14
	.word	4
	.word	Int_dispTab
	.word	13
	.word	-1
int_const5:
	.word	14
	.word	4
	.word	Int_dispTab
	.word	6
	.word	-1
int_const4:
	.word	14
	.word	4
	.word	Int_dispTab
	.word	5
	.word	-1
int_const3:
	.word	14
	.word	4
	.word	Int_dispTab
	.word	2
	.word	-1
int_const2:
	.word	14
	.word	4
	.word	Int_dispTab
	.word	0
	.word	-1
int_const1:
	.word	14
	.word	4
	.word	Int_dispTab
	.word	1
	.word	-1
int_const0:
	.word	14
	.word	4
	.word	Int_dispTab
	.word	3
	.word	-1
bool_const0:
	.word	13
	.word	4
	.word	Bool_dispTab
	.word	0
	.word	-1
bool_const1:
	.word	13
	.word	4
	.word	Bool_dispTab
	.word	1
#generate object prototypes
#  > type
#  > size
#  > dispatch table
#  > -1  (I do not know why this is required.)
Main_protObj:
	.word	0
	.word	3
	.word	Main_dispTab
	.word	-1
Child_protObj:
	.word	1
	.word	16
	.word	Child_dispTab
	.word	0     #Base j
	.word	0     #Grandparent k
	.word	0     #Main l
	.word	str_const47
	.word	-1
Parent_protObj:
	.word	2
	.word	12
	.word	Parent_dispTab
	.word	0     #SELF_TYPE g
	.word	int_const2
	.word	bool_const0
	.word	-1
Grandparent_protObj:
	.word	3
	.word	9
	.word	Grandparent_dispTab
	.word	0     #Base d
	.word	int_const2
	.word	0     #Grandparent f
	.word	-1
Base_protObj:
	.word	4
	.word	6
	.word	Base_dispTab
	.word	int_const2
	.word	str_const47
	.word	bool_const0
	.word	-1
C_protObj:
	.word	5
	.word	3
	.word	C_dispTab
	.word	-1
B_protObj:
	.word	6
	.word	3
	.word	B_dispTab
	.word	-1
A_protObj:
	.word	7
	.word	3
	.word	A_dispTab
	.word	-1
Blah_protObj:
	.word	8
	.word	11
	.word	Blah_dispTab
	.word	int_const2
	.word	bool_const0
	.word	str_const47
	.word	int_const2
	.word	bool_const0
	.word	str_const47
	.word	0     #IO io
	.word	0     #Object void
	.word	-1
C2_protObj:
	.word	9
	.word	4
	.word	C2_dispTab
	.word	-1
C1_protObj:
	.word	10
	.word	4
	.word	C1_dispTab
	.word	-1
P_protObj:
	.word	11
	.word	4
	.word	P_dispTab
	.word	int_const2
	.word	-1
String_protObj:
	.word	12
	.word	5
	.word	String_dispTab
	.word	int_const2
	.word	0     #_prim_slot _str_field
	.word	-1
Bool_protObj:
	.word	13
	.word	4
	.word	Bool_dispTab
	.word	0     #_prim_slot _val
	.word	-1
Int_protObj:
	.word	14
	.word	4
	.word	Int_dispTab
	.word	0     #_prim_slot _val
	.word	-1
IO_protObj:
	.word	15
	.word	3
	.word	IO_dispTab
	.word	-1
Object_protObj:
	.word	16
	.word	3
	.word	Object_dispTab
	.word	-1
# Should be done in order of the type field
# Can probably be done using an in order tree traversal
class_nameTab:
    .word str_const46
    .word str_const45
    .word str_const44
    .word str_const43
    .word str_const42
    .word str_const41
    .word str_const40
    .word str_const39
    .word str_const38
    .word str_const37
    .word str_const36
    .word str_const35
    .word str_const34
    .word str_const33
    .word str_const32
    .word str_const31
    .word str_const30
Main_dispTab:
	.word	Object.abort
	.word	Object.type_name
	.word	Object.copy
	.word	Main.main
Child_dispTab:
	.word	Object.abort
	.word	Object.type_name
	.word	Object.copy
Parent_dispTab:
	.word	Object.abort
	.word	Object.type_name
	.word	Object.copy
Grandparent_dispTab:
	.word	Object.abort
	.word	Object.type_name
	.word	Object.copy
Base_dispTab:
	.word	Object.abort
	.word	Object.type_name
	.word	Object.copy
C_dispTab:
	.word	Object.abort
	.word	Object.type_name
	.word	Object.copy
	.word	C.e
	.word	A.f
	.word	B.g
	.word	C.i
	.word	A.j
	.word	C.h
	.word	B.k
	.word	C.ell
B_dispTab:
	.word	Object.abort
	.word	Object.type_name
	.word	Object.copy
	.word	B.e
	.word	A.f
	.word	B.g
	.word	A.i
	.word	A.j
	.word	B.h
	.word	B.k
A_dispTab:
	.word	Object.abort
	.word	Object.type_name
	.word	Object.copy
	.word	A.e
	.word	A.f
	.word	A.g
	.word	A.i
	.word	A.j
Blah_dispTab:
	.word	Object.abort
	.word	Object.type_name
	.word	Object.copy
	.word	Blah.tiny
	.word	Blah.add
	.word	Blah.compare
	.word	Blah.compareEq
	.word	Blah.isv
	.word	Blah.divByZero
	.word	Blah.cmp
	.word	Blah.ng
	.word	Blah.caller
	.word	Blah.callee
	.word	Blah.get_t
	.word	Blah.useLet
	.word	Blah.useIf
	.word	Blah.useWhile
	.word	Blah.useCase
	.word	Blah.useNew
	.word	Blah.doThemAll
	.word	Blah.bigIf
	.word	Blah.bigWhile
	.word	Blah.bail
	.word	Blah.bigMath
	.word	Blah.assert
	.word	Blah.bigAssign
	.word	Blah.setI
	.word	Blah.getI
	.word	Blah.bigSelf
	.word	Blah.bigStrCompare
	.word	Blah.bigCase
	.word	Blah.bigAttrAccess
C2_dispTab:
	.word	Object.abort
	.word	Object.type_name
	.word	Object.copy
	.word	C2.getX
	.word	C2.setX
C1_dispTab:
	.word	Object.abort
	.word	Object.type_name
	.word	Object.copy
P_dispTab:
	.word	Object.abort
	.word	Object.type_name
	.word	Object.copy
String_dispTab:
	.word	Object.abort
	.word	Object.type_name
	.word	Object.copy
	.word	String.length
	.word	String.concat
	.word	String.substr
Bool_dispTab:
	.word	Object.abort
	.word	Object.type_name
	.word	Object.copy
Int_dispTab:
	.word	Object.abort
	.word	Object.type_name
	.word	Object.copy
IO_dispTab:
	.word	Object.abort
	.word	Object.type_name
	.word	Object.copy
	.word	IO.out_string
	.word	IO.out_int
	.word	IO.in_string
	.word	IO.in_int
Object_dispTab:
	.word	Object.abort
	.word	Object.type_name
	.word	Object.copy
	.globl	heap_start
heap_start:
	.word	0
	.text
	.globl	Main_init
	.globl	Int_init
	.globl	String_init
	.globl	Bool_init
	.globl	IO_init
	.globl	Object_init
	.globl	Main.main
Main_init:
    addiu   $sp $sp -12 # start as a normal function definition
    sw  $fp 12($sp)
    sw  $s0 8($sp)
    sw  $ra 4($sp)
    addiu   $fp $sp 4
    move    $s0 $a0     # end of the function preambule
    jal Object_init    # initialize the parent class
    move $a0 $s0
    lw  $fp 12($sp)
    lw  $s0 8($sp)
    lw  $ra 4($sp)
    addiu   $sp $sp 12
    jr  $ra
Main.main:
    addiu   $sp $sp -12        # push 3 items on the stack:
    sw  $fp 12($sp)            # 1. the caller's frame pointer 
    sw  $s0 8($sp)             # 2. the caller's? self object
    sw  $ra 4($sp)             # 3. the return address 
    addiu   $fp $sp 4          # set the fp to the activation record of the function
    move    $s0 $a0            # move the self object to $a0
la  $a0 IO_protObj      # get the address of the prototype
jal Object.copy                          # make a copy
jal IO_init              # and initialize it
    sw  $a0 0($s0) # and store the result
    addiu   $sp, $sp -4
# no expression here
    sw  $a0 0($s0) # and store the result
    addiu   $sp, $sp -4
# push arguments on the stack
	la	$a0 str_const20
    sw    $a0 0($sp)
    addiu $sp $sp -4
# FIXME: generation of object references only (very) partically done
    lw      $a0 8($s0)
    lw    $t1 obj_disp($a0)
    lw    $t1 -4($t1)     #IO.out_string
    jalr  $t1
	la	$a0 int_const0
    sw  $a0 0($s0) # and store the result
    addiu   $sp, $sp -4
    addiu   $sp, $sp, 4
# push arguments on the stack
	la	$a0 str_const23
    sw    $a0 0($sp)
    addiu $sp $sp -4
# FIXME: generation of object references only (very) partically done
    lw      $a0 8($s0)
    lw    $t1 obj_disp($a0)
    lw    $t1 -4($t1)     #IO.out_string
    jalr  $t1
la  $a0 Blah_protObj      # get the address of the prototype
jal Object.copy                          # make a copy
jal Blah_init              # and initialize it
# push arguments on the stack
	la	$a0 str_const24
    sw    $a0 0($sp)
    addiu $sp $sp -4
# FIXME: generation of object references only (very) partically done
    lw      $a0 8($s0)
    lw    $t1 obj_disp($a0)
    lw    $t1 -4($t1)     #IO.out_string
    jalr  $t1
# push arguments on the stack
# FIXME: generation of object references only (very) partically done
    lw      $a0 8($s0)
    lw    $t1 obj_disp($a0)
    lw    $t1 -4($t1)     #Blah.doThemAll
    jalr  $t1
# push arguments on the stack
	la	$a0 str_const25
    sw    $a0 0($sp)
    addiu $sp $sp -4
# FIXME: generation of object references only (very) partically done
    lw      $a0 8($s0)
    lw    $t1 obj_disp($a0)
    lw    $t1 -4($t1)     #IO.out_string
    jalr  $t1
    addiu   $sp, $sp, 4
    addiu   $sp, $sp, 4
    lw  $fp 12($sp)            # restore the caller's registers
    lw  $s0 8($sp)             # etc 
    lw  $ra 4($sp)             # etc 
    addiu $sp $sp 12           # restore stack pointer 
    jr  $ra                    # and jump back
Child_init:
    addiu   $sp $sp -12 # start as a normal function definition
    sw  $fp 12($sp)
    sw  $s0 8($sp)
    sw  $ra 4($sp)
    addiu   $fp $sp 4
    move    $s0 $a0     # end of the function preambule
    jal Parent_init    # initialize the parent class
    move $a0 $s0
    lw  $fp 12($sp)
    lw  $s0 8($sp)
    lw  $ra 4($sp)
    addiu   $sp $sp 12
    jr  $ra
Parent_init:
    addiu   $sp $sp -12 # start as a normal function definition
    sw  $fp 12($sp)
    sw  $s0 8($sp)
    sw  $ra 4($sp)
    addiu   $fp $sp 4
    move    $s0 $a0     # end of the function preambule
    jal Grandparent_init    # initialize the parent class
    move $a0 $s0
    lw  $fp 12($sp)
    lw  $s0 8($sp)
    lw  $ra 4($sp)
    addiu   $sp $sp 12
    jr  $ra
Grandparent_init:
    addiu   $sp $sp -12 # start as a normal function definition
    sw  $fp 12($sp)
    sw  $s0 8($sp)
    sw  $ra 4($sp)
    addiu   $fp $sp 4
    move    $s0 $a0     # end of the function preambule
    jal Base_init    # initialize the parent class
    move $a0 $s0
    lw  $fp 12($sp)
    lw  $s0 8($sp)
    lw  $ra 4($sp)
    addiu   $sp $sp 12
    jr  $ra
Base_init:
    addiu   $sp $sp -12 # start as a normal function definition
    sw  $fp 12($sp)
    sw  $s0 8($sp)
    sw  $ra 4($sp)
    addiu   $fp $sp 4
    move    $s0 $a0     # end of the function preambule
    jal Object_init    # initialize the parent class
    move $a0 $s0
    lw  $fp 12($sp)
    lw  $s0 8($sp)
    lw  $ra 4($sp)
    addiu   $sp $sp 12
    jr  $ra
C_init:
    addiu   $sp $sp -12 # start as a normal function definition
    sw  $fp 12($sp)
    sw  $s0 8($sp)
    sw  $ra 4($sp)
    addiu   $fp $sp 4
    move    $s0 $a0     # end of the function preambule
    jal B_init    # initialize the parent class
    move $a0 $s0
    lw  $fp 12($sp)
    lw  $s0 8($sp)
    lw  $ra 4($sp)
    addiu   $sp $sp 12
    jr  $ra
C.e:
    addiu   $sp $sp -12        # push 3 items on the stack:
    sw  $fp 12($sp)            # 1. the caller's frame pointer 
    sw  $s0 8($sp)             # 2. the caller's? self object
    sw  $ra 4($sp)             # 3. the return address 
    addiu   $fp $sp 4          # set the fp to the activation record of the function
    move    $s0 $a0            # move the self object to $a0
	la	$a0 int_const2
    lw  $fp 12($sp)            # restore the caller's registers
    lw  $s0 8($sp)             # etc 
    lw  $ra 4($sp)             # etc 
    addiu $sp $sp 12           # restore stack pointer 
    jr  $ra                    # and jump back
C.h:
    addiu   $sp $sp -12        # push 3 items on the stack:
    sw  $fp 12($sp)            # 1. the caller's frame pointer 
    sw  $s0 8($sp)             # 2. the caller's? self object
    sw  $ra 4($sp)             # 3. the return address 
    addiu   $fp $sp 4          # set the fp to the activation record of the function
    move    $s0 $a0            # move the self object to $a0
	la	$a0 int_const2
    lw  $fp 12($sp)            # restore the caller's registers
    lw  $s0 8($sp)             # etc 
    lw  $ra 4($sp)             # etc 
    addiu $sp $sp 12           # restore stack pointer 
    jr  $ra                    # and jump back
C.i:
    addiu   $sp $sp -12        # push 3 items on the stack:
    sw  $fp 12($sp)            # 1. the caller's frame pointer 
    sw  $s0 8($sp)             # 2. the caller's? self object
    sw  $ra 4($sp)             # 3. the return address 
    addiu   $fp $sp 4          # set the fp to the activation record of the function
    move    $s0 $a0            # move the self object to $a0
	la	$a0 int_const2
    lw  $fp 12($sp)            # restore the caller's registers
    lw  $s0 8($sp)             # etc 
    lw  $ra 4($sp)             # etc 
    addiu $sp $sp 12           # restore stack pointer 
    jr  $ra                    # and jump back
C.ell:
    addiu   $sp $sp -12        # push 3 items on the stack:
    sw  $fp 12($sp)            # 1. the caller's frame pointer 
    sw  $s0 8($sp)             # 2. the caller's? self object
    sw  $ra 4($sp)             # 3. the return address 
    addiu   $fp $sp 4          # set the fp to the activation record of the function
    move    $s0 $a0            # move the self object to $a0
	la	$a0 int_const2
    lw  $fp 12($sp)            # restore the caller's registers
    lw  $s0 8($sp)             # etc 
    lw  $ra 4($sp)             # etc 
    addiu $sp $sp 12           # restore stack pointer 
    jr  $ra                    # and jump back
B_init:
    addiu   $sp $sp -12 # start as a normal function definition
    sw  $fp 12($sp)
    sw  $s0 8($sp)
    sw  $ra 4($sp)
    addiu   $fp $sp 4
    move    $s0 $a0     # end of the function preambule
    jal A_init    # initialize the parent class
    move $a0 $s0
    lw  $fp 12($sp)
    lw  $s0 8($sp)
    lw  $ra 4($sp)
    addiu   $sp $sp 12
    jr  $ra
B.e:
    addiu   $sp $sp -12        # push 3 items on the stack:
    sw  $fp 12($sp)            # 1. the caller's frame pointer 
    sw  $s0 8($sp)             # 2. the caller's? self object
    sw  $ra 4($sp)             # 3. the return address 
    addiu   $fp $sp 4          # set the fp to the activation record of the function
    move    $s0 $a0            # move the self object to $a0
	la	$a0 int_const2
    lw  $fp 12($sp)            # restore the caller's registers
    lw  $s0 8($sp)             # etc 
    lw  $ra 4($sp)             # etc 
    addiu $sp $sp 12           # restore stack pointer 
    jr  $ra                    # and jump back
B.g:
    addiu   $sp $sp -12        # push 3 items on the stack:
    sw  $fp 12($sp)            # 1. the caller's frame pointer 
    sw  $s0 8($sp)             # 2. the caller's? self object
    sw  $ra 4($sp)             # 3. the return address 
    addiu   $fp $sp 4          # set the fp to the activation record of the function
    move    $s0 $a0            # move the self object to $a0
	la	$a0 int_const2
    lw  $fp 12($sp)            # restore the caller's registers
    lw  $s0 8($sp)             # etc 
    lw  $ra 4($sp)             # etc 
    addiu $sp $sp 12           # restore stack pointer 
    jr  $ra                    # and jump back
B.h:
    addiu   $sp $sp -12        # push 3 items on the stack:
    sw  $fp 12($sp)            # 1. the caller's frame pointer 
    sw  $s0 8($sp)             # 2. the caller's? self object
    sw  $ra 4($sp)             # 3. the return address 
    addiu   $fp $sp 4          # set the fp to the activation record of the function
    move    $s0 $a0            # move the self object to $a0
	la	$a0 int_const2
    lw  $fp 12($sp)            # restore the caller's registers
    lw  $s0 8($sp)             # etc 
    lw  $ra 4($sp)             # etc 
    addiu $sp $sp 12           # restore stack pointer 
    jr  $ra                    # and jump back
B.k:
    addiu   $sp $sp -12        # push 3 items on the stack:
    sw  $fp 12($sp)            # 1. the caller's frame pointer 
    sw  $s0 8($sp)             # 2. the caller's? self object
    sw  $ra 4($sp)             # 3. the return address 
    addiu   $fp $sp 4          # set the fp to the activation record of the function
    move    $s0 $a0            # move the self object to $a0
	la	$a0 int_const2
    lw  $fp 12($sp)            # restore the caller's registers
    lw  $s0 8($sp)             # etc 
    lw  $ra 4($sp)             # etc 
    addiu $sp $sp 12           # restore stack pointer 
    jr  $ra                    # and jump back
A_init:
    addiu   $sp $sp -12 # start as a normal function definition
    sw  $fp 12($sp)
    sw  $s0 8($sp)
    sw  $ra 4($sp)
    addiu   $fp $sp 4
    move    $s0 $a0     # end of the function preambule
    jal Object_init    # initialize the parent class
    move $a0 $s0
    lw  $fp 12($sp)
    lw  $s0 8($sp)
    lw  $ra 4($sp)
    addiu   $sp $sp 12
    jr  $ra
A.e:
    addiu   $sp $sp -12        # push 3 items on the stack:
    sw  $fp 12($sp)            # 1. the caller's frame pointer 
    sw  $s0 8($sp)             # 2. the caller's? self object
    sw  $ra 4($sp)             # 3. the return address 
    addiu   $fp $sp 4          # set the fp to the activation record of the function
    move    $s0 $a0            # move the self object to $a0
	la	$a0 int_const2
    lw  $fp 12($sp)            # restore the caller's registers
    lw  $s0 8($sp)             # etc 
    lw  $ra 4($sp)             # etc 
    addiu $sp $sp 12           # restore stack pointer 
    jr  $ra                    # and jump back
A.f:
    addiu   $sp $sp -12        # push 3 items on the stack:
    sw  $fp 12($sp)            # 1. the caller's frame pointer 
    sw  $s0 8($sp)             # 2. the caller's? self object
    sw  $ra 4($sp)             # 3. the return address 
    addiu   $fp $sp 4          # set the fp to the activation record of the function
    move    $s0 $a0            # move the self object to $a0
	la	$a0 int_const2
    lw  $fp 12($sp)            # restore the caller's registers
    lw  $s0 8($sp)             # etc 
    lw  $ra 4($sp)             # etc 
    addiu $sp $sp 12           # restore stack pointer 
    jr  $ra                    # and jump back
A.g:
    addiu   $sp $sp -12        # push 3 items on the stack:
    sw  $fp 12($sp)            # 1. the caller's frame pointer 
    sw  $s0 8($sp)             # 2. the caller's? self object
    sw  $ra 4($sp)             # 3. the return address 
    addiu   $fp $sp 4          # set the fp to the activation record of the function
    move    $s0 $a0            # move the self object to $a0
	la	$a0 int_const2
    lw  $fp 12($sp)            # restore the caller's registers
    lw  $s0 8($sp)             # etc 
    lw  $ra 4($sp)             # etc 
    addiu $sp $sp 12           # restore stack pointer 
    jr  $ra                    # and jump back
A.i:
    addiu   $sp $sp -12        # push 3 items on the stack:
    sw  $fp 12($sp)            # 1. the caller's frame pointer 
    sw  $s0 8($sp)             # 2. the caller's? self object
    sw  $ra 4($sp)             # 3. the return address 
    addiu   $fp $sp 4          # set the fp to the activation record of the function
    move    $s0 $a0            # move the self object to $a0
	la	$a0 int_const2
    lw  $fp 12($sp)            # restore the caller's registers
    lw  $s0 8($sp)             # etc 
    lw  $ra 4($sp)             # etc 
    addiu $sp $sp 12           # restore stack pointer 
    jr  $ra                    # and jump back
A.j:
    addiu   $sp $sp -12        # push 3 items on the stack:
    sw  $fp 12($sp)            # 1. the caller's frame pointer 
    sw  $s0 8($sp)             # 2. the caller's? self object
    sw  $ra 4($sp)             # 3. the return address 
    addiu   $fp $sp 4          # set the fp to the activation record of the function
    move    $s0 $a0            # move the self object to $a0
	la	$a0 int_const2
    lw  $fp 12($sp)            # restore the caller's registers
    lw  $s0 8($sp)             # etc 
    lw  $ra 4($sp)             # etc 
    addiu $sp $sp 12           # restore stack pointer 
    jr  $ra                    # and jump back
Blah_init:
    addiu   $sp $sp -12 # start as a normal function definition
    sw  $fp 12($sp)
    sw  $s0 8($sp)
    sw  $ra 4($sp)
    addiu   $fp $sp 4
    move    $s0 $a0     # end of the function preambule
    jal Object_init    # initialize the parent class
# initializer type14dispatch_class
# push arguments on the stack
    move    $a0 $s0
    lw    $t1 obj_disp($a0)
    lw    $t1 12($t1)     #Blah.tiny
    jalr  $t1
    sw  $a0 12($s0) # and store the result
# initializer type16bool_const_class
	la	$a0 bool_const1
    sw  $a0 12($s0) # and store the result
# initializer type11block_class
	la	$a0 str_const1
    sw  $a0 12($s0) # and store the result
# initializer type10new__class
la  $a0 IO_protObj      # get the address of the prototype
jal Object.copy                          # make a copy
jal IO_init              # and initialize it
    sw  $a0 12($s0) # and store the result
    move $a0 $s0
    lw  $fp 12($sp)
    lw  $s0 8($sp)
    lw  $ra 4($sp)
    addiu   $sp $sp 12
    jr  $ra
Blah.tiny:
    addiu   $sp $sp -12        # push 3 items on the stack:
    sw  $fp 12($sp)            # 1. the caller's frame pointer 
    sw  $s0 8($sp)             # 2. the caller's? self object
    sw  $ra 4($sp)             # 3. the return address 
    addiu   $fp $sp 4          # set the fp to the activation record of the function
    move    $s0 $a0            # move the self object to $a0
	la	$a0 str_const2
	la	$a0 bool_const0
	la	$a0 int_const2
    lw  $fp 12($sp)            # restore the caller's registers
    lw  $s0 8($sp)             # etc 
    lw  $ra 4($sp)             # etc 
    addiu $sp $sp 12           # restore stack pointer 
    jr  $ra                    # and jump back
Blah.add:
    addiu   $sp $sp -12        # push 3 items on the stack:
    sw  $fp 12($sp)            # 1. the caller's frame pointer 
    sw  $s0 8($sp)             # 2. the caller's? self object
    sw  $ra 4($sp)             # 3. the return address 
    addiu   $fp $sp 4          # set the fp to the activation record of the function
    move    $s0 $a0            # move the self object to $a0
	la	$a0 int_const1
# create a new int object and push it on the stack
    jal     Object.copy
    sw      $a0, 0($sp)
    addiu   $sp, $sp -4
    lw      $a0, int_slot($a0)
    sw      $a0, 0($sp)
    addiu   $sp, $sp -4
	la	$a0 int_const3
    lw      $a0, int_slot($a0)
    lw      $t1, 4($sp)
    add     $a0, $t1, $a0
    addiu   $sp, $sp, 4
    lw      $t1, 4($sp)
    sw      $a0, int_slot($t1)
    move    $a0 $t1
    addiu   $sp, $sp, 4
    lw  $fp 12($sp)            # restore the caller's registers
    lw  $s0 8($sp)             # etc 
    lw  $ra 4($sp)             # etc 
    addiu $sp $sp 12           # restore stack pointer 
    jr  $ra                    # and jump back
Blah.compare:
    addiu   $sp $sp -12        # push 3 items on the stack:
    sw  $fp 12($sp)            # 1. the caller's frame pointer 
    sw  $s0 8($sp)             # 2. the caller's? self object
    sw  $ra 4($sp)             # 3. the return address 
    addiu   $fp $sp 4          # set the fp to the activation record of the function
    move    $s0 $a0            # move the self object to $a0
	la	$a0 int_const1
    lw      $a0, int_slot($a0)
    sw      $a0, 0($sp)
    addiu   $sp, $sp -4
	la	$a0 int_const3
    lw      $a0, int_slot($a0)
    lw      $t1, 4($sp)
    sub     $a0, $t1, $a0
    addiu   $sp, $sp, 4
    bltz    true_label1
false_label1:
	la	$a0 bool_const0
    b     end_comp1
true_label1:
	la	$a0 bool_const1
end_comp1:
    lw  $fp 12($sp)            # restore the caller's registers
    lw  $s0 8($sp)             # etc 
    lw  $ra 4($sp)             # etc 
    addiu $sp $sp 12           # restore stack pointer 
    jr  $ra                    # and jump back
Blah.compareEq:
    addiu   $sp $sp -12        # push 3 items on the stack:
    sw  $fp 12($sp)            # 1. the caller's frame pointer 
    sw  $s0 8($sp)             # 2. the caller's? self object
    sw  $ra 4($sp)             # 3. the return address 
    addiu   $fp $sp 4          # set the fp to the activation record of the function
    move    $s0 $a0            # move the self object to $a0
	la	$a0 int_const1
    lw      $a0, int_slot($a0)
    sw      $a0, 0($sp)
    addiu   $sp, $sp -4
	la	$a0 int_const3
    lw      $a0, int_slot($a0)
    lw      $t1, 4($sp)
    addiu   $sp, $sp, 4
	la	$a0 int_const1
    sw      $a0, 0($sp)
    addiu   $sp, $sp -4
	la	$a0 int_const3
    lw      $t1, 4($sp)
    addiu   $sp, $sp, 4
    beq     $a0, $t1 true_label2
false_label2:
	la	$a0 bool_const0
    b     end_comp2
true_label2:
	la	$a0 bool_const1
end_comp2:
    lw  $fp 12($sp)            # restore the caller's registers
    lw  $s0 8($sp)             # etc 
    lw  $ra 4($sp)             # etc 
    addiu $sp $sp 12           # restore stack pointer 
    jr  $ra                    # and jump back
Blah.isv:
    addiu   $sp $sp -12        # push 3 items on the stack:
    sw  $fp 12($sp)            # 1. the caller's frame pointer 
    sw  $s0 8($sp)             # 2. the caller's? self object
    sw  $ra 4($sp)             # 3. the return address 
    addiu   $fp $sp 4          # set the fp to the activation record of the function
    move    $s0 $a0            # move the self object to $a0
	la	$a0 int_const1
    move  $t1 $a0
    beqz   $t1, void_branch3   # test for void value
notvoid_branch3:
	la	$a0 bool_const0
    b     end_isvoid3
void_branch3:
	la	$a0 bool_const1
end_isvoid3:
    lw  $fp 12($sp)            # restore the caller's registers
    lw  $s0 8($sp)             # etc 
    lw  $ra 4($sp)             # etc 
    addiu $sp $sp 12           # restore stack pointer 
    jr  $ra                    # and jump back
Blah.divByZero:
    addiu   $sp $sp -12        # push 3 items on the stack:
    sw  $fp 12($sp)            # 1. the caller's frame pointer 
    sw  $s0 8($sp)             # 2. the caller's? self object
    sw  $ra 4($sp)             # 3. the return address 
    addiu   $fp $sp 4          # set the fp to the activation record of the function
    move    $s0 $a0            # move the self object to $a0
	la	$a0 int_const1
# create a new int object and push it on the stack
    jal     Object.copy
    sw      $a0, 0($sp)
    addiu   $sp, $sp -4
    lw      $a0, int_slot($a0)
    sw      $a0, 0($sp)
    addiu   $sp, $sp -4
	la	$a0 int_const2
    lw      $a0, int_slot($a0)
    lw      $t1, 4($sp)
    div     $a0, $t1, $a0
    addiu   $sp, $sp, 4
    lw      $t1, 4($sp)
    sw      $a0, int_slot($t1)
    move    $a0 $t1
    addiu   $sp, $sp, 4
    lw  $fp 12($sp)            # restore the caller's registers
    lw  $s0 8($sp)             # etc 
    lw  $ra 4($sp)             # etc 
    addiu $sp $sp 12           # restore stack pointer 
    jr  $ra                    # and jump back
Blah.cmp:
    addiu   $sp $sp -12        # push 3 items on the stack:
    sw  $fp 12($sp)            # 1. the caller's frame pointer 
    sw  $s0 8($sp)             # 2. the caller's? self object
    sw  $ra 4($sp)             # 3. the return address 
    addiu   $fp $sp 4          # set the fp to the activation record of the function
    move    $s0 $a0            # move the self object to $a0
    lw  $fp 12($sp)            # restore the caller's registers
    lw  $s0 8($sp)             # etc 
    lw  $ra 4($sp)             # etc 
    addiu $sp $sp 12           # restore stack pointer 
    jr  $ra                    # and jump back
Blah.ng:
    addiu   $sp $sp -12        # push 3 items on the stack:
    sw  $fp 12($sp)            # 1. the caller's frame pointer 
    sw  $s0 8($sp)             # 2. the caller's? self object
    sw  $ra 4($sp)             # 3. the return address 
    addiu   $fp $sp 4          # set the fp to the activation record of the function
    move    $s0 $a0            # move the self object to $a0
	la	$a0 int_const4
# create a new int object and push it on the stack
    jal     Object.copy
    sw      $a0, 0($sp)
    addiu   $sp, $sp -4
    lw      $a0, int_slot($a0)
    sw      $a0, 0($sp)
    addiu   $sp, $sp -4
    li      $t1, -1
    mul     $a0, $t1, $a0
    addiu   $sp, $sp, 4
    lw      $t1, 4($sp)
    sw      $a0, int_slot($t1)
    move    $a0 $t1
    addiu   $sp, $sp, 4
    lw  $fp 12($sp)            # restore the caller's registers
    lw  $s0 8($sp)             # etc 
    lw  $ra 4($sp)             # etc 
    addiu $sp $sp 12           # restore stack pointer 
    jr  $ra                    # and jump back
Blah.caller:
    addiu   $sp $sp -12        # push 3 items on the stack:
    sw  $fp 12($sp)            # 1. the caller's frame pointer 
    sw  $s0 8($sp)             # 2. the caller's? self object
    sw  $ra 4($sp)             # 3. the return address 
    addiu   $fp $sp 4          # set the fp to the activation record of the function
    move    $s0 $a0            # move the self object to $a0
# create a new int object and push it on the stack
    jal     Object.copy
    sw      $a0, 0($sp)
    addiu   $sp, $sp -4
    lw      $a0, int_slot($a0)
    sw      $a0, 0($sp)
    addiu   $sp, $sp -4
    lw      $a0, int_slot($a0)
    lw      $t1, 4($sp)
    add     $a0, $t1, $a0
    addiu   $sp, $sp, 4
    lw      $t1, 4($sp)
    sw      $a0, int_slot($t1)
    move    $a0 $t1
    addiu   $sp, $sp, 4
    lw  $fp 12($sp)            # restore the caller's registers
    lw  $s0 8($sp)             # etc 
    lw  $ra 4($sp)             # etc 
    addiu $sp $sp 12           # restore stack pointer 
    jr  $ra                    # and jump back
Blah.callee:
    addiu   $sp $sp -12        # push 3 items on the stack:
    sw  $fp 12($sp)            # 1. the caller's frame pointer 
    sw  $s0 8($sp)             # 2. the caller's? self object
    sw  $ra 4($sp)             # 3. the return address 
    addiu   $fp $sp 4          # set the fp to the activation record of the function
    move    $s0 $a0            # move the self object to $a0
# FIXME: generation of object references only (very) partically done
    lw      $a0 8($s0)
# create a new int object and push it on the stack
    jal     Object.copy
    sw      $a0, 0($sp)
    addiu   $sp, $sp -4
    lw      $a0, int_slot($a0)
    sw      $a0, 0($sp)
    addiu   $sp, $sp -4
# FIXME: generation of object references only (very) partically done
    lw      $a0 8($s0)
    lw      $a0, int_slot($a0)
    lw      $t1, 4($sp)
    add     $a0, $t1, $a0
    addiu   $sp, $sp, 4
    lw      $t1, 4($sp)
    sw      $a0, int_slot($t1)
    move    $a0 $t1
    addiu   $sp, $sp, 4
    lw  $fp 12($sp)            # restore the caller's registers
    lw  $s0 8($sp)             # etc 
    lw  $ra 4($sp)             # etc 
    addiu $sp $sp 12           # restore stack pointer 
    jr  $ra                    # and jump back
Blah.get_t:
    addiu   $sp $sp -12        # push 3 items on the stack:
    sw  $fp 12($sp)            # 1. the caller's frame pointer 
    sw  $s0 8($sp)             # 2. the caller's? self object
    sw  $ra 4($sp)             # 3. the return address 
    addiu   $fp $sp 4          # set the fp to the activation record of the function
    move    $s0 $a0            # move the self object to $a0
# FIXME: generation of object references only (very) partically done
    lw      $a0 32($s0)
    lw  $fp 12($sp)            # restore the caller's registers
    lw  $s0 8($sp)             # etc 
    lw  $ra 4($sp)             # etc 
    addiu $sp $sp 12           # restore stack pointer 
    jr  $ra                    # and jump back
Blah.useLet:
    addiu   $sp $sp -12        # push 3 items on the stack:
    sw  $fp 12($sp)            # 1. the caller's frame pointer 
    sw  $s0 8($sp)             # 2. the caller's? self object
    sw  $ra 4($sp)             # 3. the return address 
    addiu   $fp $sp 4          # set the fp to the activation record of the function
    move    $s0 $a0            # move the self object to $a0
# no expression here
    sw  $a0 0($s0) # and store the result
    addiu   $sp, $sp -4
	la	$a0 int_const8
    sw  $a0 0($s0) # and store the result
    addiu   $sp, $sp -4
# FIXME: generation of object references only (very) partically done
    lw      $a0 24($s0)
    sw  $a0 0($s0) # and store the result
    addiu   $sp, $sp -4
# FIXME: generation of object references only (very) partically done
    lw      $a0 8($s0)
# create a new int object and push it on the stack
    jal     Object.copy
    sw      $a0, 0($sp)
    addiu   $sp, $sp -4
    lw      $a0, int_slot($a0)
    sw      $a0, 0($sp)
    addiu   $sp, $sp -4
# FIXME: generation of object references only (very) partically done
    lw      $a0 8($s0)
    lw      $a0, int_slot($a0)
    lw      $t1, 4($sp)
    add     $a0, $t1, $a0
    addiu   $sp, $sp, 4
    lw      $t1, 4($sp)
    sw      $a0, int_slot($t1)
    move    $a0 $t1
    addiu   $sp, $sp, 4
# create a new int object and push it on the stack
    jal     Object.copy
    sw      $a0, 0($sp)
    addiu   $sp, $sp -4
    lw      $a0, int_slot($a0)
    sw      $a0, 0($sp)
    addiu   $sp, $sp -4
# FIXME: generation of object references only (very) partically done
    lw      $a0 20($s0)
    lw      $a0, int_slot($a0)
    lw      $t1, 4($sp)
    add     $a0, $t1, $a0
    addiu   $sp, $sp, 4
    lw      $t1, 4($sp)
    sw      $a0, int_slot($t1)
    move    $a0 $t1
    addiu   $sp, $sp, 4
    addiu   $sp, $sp, 4
    addiu   $sp, $sp, 4
    addiu   $sp, $sp, 4
    lw  $fp 12($sp)            # restore the caller's registers
    lw  $s0 8($sp)             # etc 
    lw  $ra 4($sp)             # etc 
    addiu $sp $sp 12           # restore stack pointer 
    jr  $ra                    # and jump back
Blah.useIf:
    addiu   $sp $sp -12        # push 3 items on the stack:
    sw  $fp 12($sp)            # 1. the caller's frame pointer 
    sw  $s0 8($sp)             # 2. the caller's? self object
    sw  $ra 4($sp)             # 3. the return address 
    addiu   $fp $sp 4          # set the fp to the activation record of the function
    move    $s0 $a0            # move the self object to $a0
# start coding an if statement
# push arguments on the stack
    move    $a0 $s0
    lw    $t1 obj_disp($a0)
    lw    $t1 36($t1)     #Blah.cmp
    jalr  $t1
    lw      $t1, bool_slot($a0)
    beq     $t1, 1, true_branch4
false_branch4:
# push arguments on the stack
    move    $a0 $s0
    lw    $t1 obj_disp($a0)
    lw    $t1 12($t1)     #Blah.tiny
    jalr  $t1
    b       end_if4
true_branch4:
# push arguments on the stack
    move    $a0 $s0
    lw    $t1 obj_disp($a0)
    lw    $t1 40($t1)     #Blah.ng
    jalr  $t1
end_if4:
    lw  $fp 12($sp)            # restore the caller's registers
    lw  $s0 8($sp)             # etc 
    lw  $ra 4($sp)             # etc 
    addiu $sp $sp 12           # restore stack pointer 
    jr  $ra                    # and jump back
Blah.useWhile:
    addiu   $sp $sp -12        # push 3 items on the stack:
    sw  $fp 12($sp)            # 1. the caller's frame pointer 
    sw  $s0 8($sp)             # 2. the caller's? self object
    sw  $ra 4($sp)             # 3. the return address 
    addiu   $fp $sp 4          # set the fp to the activation record of the function
    move    $s0 $a0            # move the self object to $a0
# start coding a loop statement
loop_start5:
# push arguments on the stack
    move    $a0 $s0
    lw    $t1 obj_disp($a0)
    lw    $t1 36($t1)     #Blah.cmp
    jalr  $t1
    lw      $t1, bool_slot($a0)
    beq     $t1, 0, loop_end5
# push arguments on the stack
    move    $a0 $s0
    lw    $t1 obj_disp($a0)
    lw    $t1 52($t1)     #Blah.get_t
    jalr  $t1
loop_end5:
    lw  $fp 12($sp)            # restore the caller's registers
    lw  $s0 8($sp)             # etc 
    lw  $ra 4($sp)             # etc 
    addiu $sp $sp 12           # restore stack pointer 
    jr  $ra                    # and jump back
Blah.useCase:
    addiu   $sp $sp -12        # push 3 items on the stack:
    sw  $fp 12($sp)            # 1. the caller's frame pointer 
    sw  $s0 8($sp)             # 2. the caller's? self object
    sw  $ra 4($sp)             # 3. the return address 
    addiu   $fp $sp 4          # set the fp to the activation record of the function
    move    $s0 $a0            # move the self object to $a0
    lw  $fp 12($sp)            # restore the caller's registers
    lw  $s0 8($sp)             # etc 
    lw  $ra 4($sp)             # etc 
    addiu $sp $sp 12           # restore stack pointer 
    jr  $ra                    # and jump back
Blah.useNew:
    addiu   $sp $sp -12        # push 3 items on the stack:
    sw  $fp 12($sp)            # 1. the caller's frame pointer 
    sw  $s0 8($sp)             # 2. the caller's? self object
    sw  $ra 4($sp)             # 3. the return address 
    addiu   $fp $sp 4          # set the fp to the activation record of the function
    move    $s0 $a0            # move the self object to $a0
la  $a0 Int_protObj      # get the address of the prototype
jal Object.copy                          # make a copy
jal Int_init              # and initialize it
la  $a0 Bool_protObj      # get the address of the prototype
jal Object.copy                          # make a copy
jal Bool_init              # and initialize it
la  $a0 C_protObj      # get the address of the prototype
jal Object.copy                          # make a copy
jal C_init              # and initialize it
la  $a0 Main_protObj      # get the address of the prototype
jal Object.copy                          # make a copy
jal Main_init              # and initialize it
la  $a0 Blah_protObj      # get the address of the prototype
jal Object.copy                          # make a copy
jal Blah_init              # and initialize it
    lw  $fp 12($sp)            # restore the caller's registers
    lw  $s0 8($sp)             # etc 
    lw  $ra 4($sp)             # etc 
    addiu $sp $sp 12           # restore stack pointer 
    jr  $ra                    # and jump back
Blah.doThemAll:
    addiu   $sp $sp -12        # push 3 items on the stack:
    sw  $fp 12($sp)            # 1. the caller's frame pointer 
    sw  $s0 8($sp)             # 2. the caller's? self object
    sw  $ra 4($sp)             # 3. the return address 
    addiu   $fp $sp 4          # set the fp to the activation record of the function
    move    $s0 $a0            # move the self object to $a0
# push arguments on the stack
    move    $a0 $s0
    lw    $t1 obj_disp($a0)
    lw    $t1 12($t1)     #Blah.tiny
    jalr  $t1
# push arguments on the stack
    move    $a0 $s0
    lw    $t1 obj_disp($a0)
    lw    $t1 16($t1)     #Blah.add
    jalr  $t1
# push arguments on the stack
    move    $a0 $s0
    lw    $t1 obj_disp($a0)
    lw    $t1 20($t1)     #Blah.compare
    jalr  $t1
# push arguments on the stack
    move    $a0 $s0
    lw    $t1 obj_disp($a0)
    lw    $t1 24($t1)     #Blah.compareEq
    jalr  $t1
# push arguments on the stack
    move    $a0 $s0
    lw    $t1 obj_disp($a0)
    lw    $t1 28($t1)     #Blah.isv
    jalr  $t1
# push arguments on the stack
    move    $a0 $s0
    lw    $t1 obj_disp($a0)
    lw    $t1 36($t1)     #Blah.cmp
    jalr  $t1
# push arguments on the stack
    move    $a0 $s0
    lw    $t1 obj_disp($a0)
    lw    $t1 40($t1)     #Blah.ng
    jalr  $t1
# push arguments on the stack
    move    $a0 $s0
    lw    $t1 obj_disp($a0)
    lw    $t1 44($t1)     #Blah.caller
    jalr  $t1
# push arguments on the stack
	la	$a0 int_const0
    sw    $a0 0($sp)
    addiu $sp $sp -4
	la	$a0 int_const9
    sw    $a0 0($sp)
    addiu $sp $sp -4
    move    $a0 $s0
    lw    $t1 obj_disp($a0)
    lw    $t1 48($t1)     #Blah.callee
    jalr  $t1
# push arguments on the stack
    move    $a0 $s0
    lw    $t1 obj_disp($a0)
    lw    $t1 52($t1)     #Blah.get_t
    jalr  $t1
# push arguments on the stack
    move    $a0 $s0
    lw    $t1 obj_disp($a0)
    lw    $t1 56($t1)     #Blah.useLet
    jalr  $t1
# push arguments on the stack
    move    $a0 $s0
    lw    $t1 obj_disp($a0)
    lw    $t1 60($t1)     #Blah.useIf
    jalr  $t1
# push arguments on the stack
    move    $a0 $s0
    lw    $t1 obj_disp($a0)
    lw    $t1 64($t1)     #Blah.useWhile
    jalr  $t1
# push arguments on the stack
    move    $a0 $s0
    lw    $t1 obj_disp($a0)
    lw    $t1 68($t1)     #Blah.useCase
    jalr  $t1
# push arguments on the stack
    move    $a0 $s0
    lw    $t1 obj_disp($a0)
    lw    $t1 72($t1)     #Blah.useNew
    jalr  $t1
# push arguments on the stack
    move    $a0 $s0
    lw    $t1 obj_disp($a0)
    lw    $t1 80($t1)     #Blah.bigIf
    jalr  $t1
# push arguments on the stack
    move    $a0 $s0
    lw    $t1 obj_disp($a0)
    lw    $t1 92($t1)     #Blah.bigMath
    jalr  $t1
# push arguments on the stack
    move    $a0 $s0
    lw    $t1 obj_disp($a0)
    lw    $t1 100($t1)     #Blah.bigAssign
    jalr  $t1
# push arguments on the stack
    move    $a0 $s0
    lw    $t1 obj_disp($a0)
    lw    $t1 84($t1)     #Blah.bigWhile
    jalr  $t1
# push arguments on the stack
    move    $a0 $s0
    lw    $t1 obj_disp($a0)
    lw    $t1 112($t1)     #Blah.bigSelf
    jalr  $t1
# push arguments on the stack
    move    $a0 $s0
    lw    $t1 obj_disp($a0)
    lw    $t1 116($t1)     #Blah.bigStrCompare
    jalr  $t1
# push arguments on the stack
    move    $a0 $s0
    lw    $t1 obj_disp($a0)
    lw    $t1 120($t1)     #Blah.bigCase
    jalr  $t1
# push arguments on the stack
    move    $a0 $s0
    lw    $t1 obj_disp($a0)
    lw    $t1 124($t1)     #Blah.bigAttrAccess
    jalr  $t1
	la	$a0 int_const2
    lw  $fp 12($sp)            # restore the caller's registers
    lw  $s0 8($sp)             # etc 
    lw  $ra 4($sp)             # etc 
    addiu $sp $sp 12           # restore stack pointer 
    jr  $ra                    # and jump back
Blah.bigIf:
    addiu   $sp $sp -12        # push 3 items on the stack:
    sw  $fp 12($sp)            # 1. the caller's frame pointer 
    sw  $s0 8($sp)             # 2. the caller's? self object
    sw  $ra 4($sp)             # 3. the return address 
    addiu   $fp $sp 4          # set the fp to the activation record of the function
    move    $s0 $a0            # move the self object to $a0
# push arguments on the stack
	la	$a0 str_const5
    sw    $a0 0($sp)
    addiu $sp $sp -4
# FIXME: generation of object references only (very) partically done
    lw      $a0 36($s0)
    lw    $t1 obj_disp($a0)
    lw    $t1 -4($t1)     #IO.out_string
    jalr  $t1
# start coding an if statement
	la	$a0 bool_const1
    lw      $t1, bool_slot($a0)
    beq     $t1, 1, true_branch6
false_branch6:
    b       end_if6
true_branch6:
# start coding an if statement
	la	$a0 bool_const0
    lw      $t1, bool_slot($a0)
    beq     $t1, 1, true_branch7
false_branch7:
	la	$a0 int_const2
    b       end_if7
true_branch7:
end_if7:
end_if6:
# start coding an if statement
	la	$a0 bool_const0
    lw      $t1, bool_slot($a0)
    beq     $t1, 1, true_branch8
false_branch8:
# start coding an if statement
	la	$a0 bool_const0
    lw      $t1, bool_slot($a0)
    beq     $t1, 1, true_branch9
false_branch9:
	la	$a0 int_const2
    b       end_if9
true_branch9:
end_if9:
    b       end_if8
true_branch8:
end_if8:
# start coding an if statement
	la	$a0 bool_const1
    lw      $t1, bool_slot($a0)
    beq     $t1, 1, true_branch10
false_branch10:
    b       end_if10
true_branch10:
# start coding an if statement
	la	$a0 bool_const1
    lw      $t1, bool_slot($a0)
    beq     $t1, 1, true_branch11
false_branch11:
    b       end_if11
true_branch11:
	la	$a0 int_const2
end_if11:
end_if10:
# start coding an if statement
	la	$a0 bool_const0
    lw      $t1, bool_slot($a0)
    beq     $t1, 1, true_branch12
false_branch12:
# start coding an if statement
	la	$a0 bool_const1
    lw      $t1, bool_slot($a0)
    beq     $t1, 1, true_branch13
false_branch13:
    b       end_if13
true_branch13:
	la	$a0 int_const2
end_if13:
    b       end_if12
true_branch12:
end_if12:
	la	$a0 int_const2
    lw  $fp 12($sp)            # restore the caller's registers
    lw  $s0 8($sp)             # etc 
    lw  $ra 4($sp)             # etc 
    addiu $sp $sp 12           # restore stack pointer 
    jr  $ra                    # and jump back
Blah.bigWhile:
    addiu   $sp $sp -12        # push 3 items on the stack:
    sw  $fp 12($sp)            # 1. the caller's frame pointer 
    sw  $s0 8($sp)             # 2. the caller's? self object
    sw  $ra 4($sp)             # 3. the return address 
    addiu   $fp $sp 4          # set the fp to the activation record of the function
    move    $s0 $a0            # move the self object to $a0
# push arguments on the stack
	la	$a0 str_const6
    sw    $a0 0($sp)
    addiu $sp $sp -4
# FIXME: generation of object references only (very) partically done
    lw      $a0 36($s0)
    lw    $t1 obj_disp($a0)
    lw    $t1 -4($t1)     #IO.out_string
    jalr  $t1
	la	$a0 int_const10
    sw  $a0 0($s0) # and store the result
    addiu   $sp, $sp -4
	la	$a0 int_const2
    sw  $a0 0($s0) # and store the result
    addiu   $sp, $sp -4
# start coding a loop statement
loop_start14:
    lw      $t1, bool_slot($a0)
    beq     $t1, 0, loop_end14
# FIXME: generation of object references only (very) partically done
    lw      $a0 8($s0)
# create a new int object and push it on the stack
    jal     Object.copy
    sw      $a0, 0($sp)
    addiu   $sp, $sp -4
    lw      $a0, int_slot($a0)
    sw      $a0, 0($sp)
    addiu   $sp, $sp -4
	la	$a0 int_const1
    lw      $a0, int_slot($a0)
    lw      $t1, 4($sp)
    sub     $a0, $t1, $a0
    addiu   $sp, $sp, 4
    lw      $t1, 4($sp)
    sw      $a0, int_slot($t1)
    move    $a0 $t1
    addiu   $sp, $sp, 4
# FIXME: generation of object references only (very) partically done
    lw      $a0 8($s0)
# create a new int object and push it on the stack
    jal     Object.copy
    sw      $a0, 0($sp)
    addiu   $sp, $sp -4
    lw      $a0, int_slot($a0)
    sw      $a0, 0($sp)
    addiu   $sp, $sp -4
	la	$a0 int_const1
    lw      $a0, int_slot($a0)
    lw      $t1, 4($sp)
    add     $a0, $t1, $a0
    addiu   $sp, $sp, 4
    lw      $t1, 4($sp)
    sw      $a0, int_slot($t1)
    move    $a0 $t1
    addiu   $sp, $sp, 4
loop_end14:
# start coding an if statement
    lw      $t1, bool_slot($a0)
    beq     $t1, 1, true_branch15
false_branch15:
# start coding an if statement
    lw      $t1, bool_slot($a0)
    beq     $t1, 1, true_branch16
false_branch16:
    move    $a0 $s0
    b       end_if16
true_branch16:
# push arguments on the stack
    move    $a0 $s0
    lw    $t1 obj_disp($a0)
    lw    $t1 0($t1)     #Blah.abort
    jalr  $t1
end_if16:
    b       end_if15
true_branch15:
# push arguments on the stack
    move    $a0 $s0
    lw    $t1 obj_disp($a0)
    lw    $t1 0($t1)     #Blah.abort
    jalr  $t1
end_if15:
    addiu   $sp, $sp, 4
    addiu   $sp, $sp, 4
# no expression here
    sw  $a0 0($s0) # and store the result
    addiu   $sp, $sp -4
# no expression here
    sw  $a0 0($s0) # and store the result
    addiu   $sp, $sp -4
# no expression here
    sw  $a0 0($s0) # and store the result
    addiu   $sp, $sp -4
	la	$a0 int_const2
    sw  $a0 0($s0) # and store the result
    addiu   $sp, $sp -4
	la	$a0 int_const2
    sw  $a0 0($s0) # and store the result
    addiu   $sp, $sp -4
	la	$a0 int_const2
    sw  $a0 0($s0) # and store the result
    addiu   $sp, $sp -4
	la	$a0 int_const2
# start coding a loop statement
loop_start17:
# FIXME: generation of object references only (very) partically done
    lw      $a0 12($s0)
    lw      $a0, int_slot($a0)
    sw      $a0, 0($sp)
    addiu   $sp, $sp -4
	la	$a0 int_const11
    lw      $a0, int_slot($a0)
    lw      $t1, 4($sp)
    sub     $a0, $t1, $a0
    addiu   $sp, $sp, 4
    bltz    true_label18
false_label18:
	la	$a0 bool_const0
    b     end_comp18
true_label18:
	la	$a0 bool_const1
end_comp18:
    lw      $t1, bool_slot($a0)
    beq     $t1, 0, loop_end17
	la	$a0 int_const2
# start coding a loop statement
loop_start19:
# FIXME: generation of object references only (very) partically done
    lw      $a0 24($s0)
    lw      $a0, int_slot($a0)
    sw      $a0, 0($sp)
    addiu   $sp, $sp -4
	la	$a0 int_const11
    lw      $a0, int_slot($a0)
    lw      $t1, 4($sp)
    sub     $a0, $t1, $a0
    addiu   $sp, $sp, 4
    bltz    true_label20
false_label20:
	la	$a0 bool_const0
    b     end_comp20
true_label20:
	la	$a0 bool_const1
end_comp20:
    lw      $t1, bool_slot($a0)
    beq     $t1, 0, loop_end19
	la	$a0 int_const2
# start coding a loop statement
loop_start21:
# FIXME: generation of object references only (very) partically done
    lw      $a0 8($s0)
    lw      $a0, int_slot($a0)
    sw      $a0, 0($sp)
    addiu   $sp, $sp -4
	la	$a0 int_const11
    lw      $a0, int_slot($a0)
    lw      $t1, 4($sp)
    sub     $a0, $t1, $a0
    addiu   $sp, $sp, 4
    bltz    true_label22
false_label22:
	la	$a0 bool_const0
    b     end_comp22
true_label22:
	la	$a0 bool_const1
end_comp22:
    lw      $t1, bool_slot($a0)
    beq     $t1, 0, loop_end21
# FIXME: generation of object references only (very) partically done
    lw      $a0 8($s0)
# create a new int object and push it on the stack
    jal     Object.copy
    sw      $a0, 0($sp)
    addiu   $sp, $sp -4
    lw      $a0, int_slot($a0)
    sw      $a0, 0($sp)
    addiu   $sp, $sp -4
	la	$a0 int_const1
    lw      $a0, int_slot($a0)
    lw      $t1, 4($sp)
    add     $a0, $t1, $a0
    addiu   $sp, $sp, 4
    lw      $t1, 4($sp)
    sw      $a0, int_slot($t1)
    move    $a0 $t1
    addiu   $sp, $sp, 4
# FIXME: generation of object references only (very) partically done
    lw      $a0 8($s0)
# create a new int object and push it on the stack
    jal     Object.copy
    sw      $a0, 0($sp)
    addiu   $sp, $sp -4
    lw      $a0, int_slot($a0)
    sw      $a0, 0($sp)
    addiu   $sp, $sp -4
	la	$a0 int_const1
    lw      $a0, int_slot($a0)
    lw      $t1, 4($sp)
    add     $a0, $t1, $a0
    addiu   $sp, $sp, 4
    lw      $t1, 4($sp)
    sw      $a0, int_slot($t1)
    move    $a0 $t1
    addiu   $sp, $sp, 4
loop_end21:
# FIXME: generation of object references only (very) partically done
    lw      $a0 24($s0)
# create a new int object and push it on the stack
    jal     Object.copy
    sw      $a0, 0($sp)
    addiu   $sp, $sp -4
    lw      $a0, int_slot($a0)
    sw      $a0, 0($sp)
    addiu   $sp, $sp -4
	la	$a0 int_const1
    lw      $a0, int_slot($a0)
    lw      $t1, 4($sp)
    add     $a0, $t1, $a0
    addiu   $sp, $sp, 4
    lw      $t1, 4($sp)
    sw      $a0, int_slot($t1)
    move    $a0 $t1
    addiu   $sp, $sp, 4
# FIXME: generation of object references only (very) partically done
    lw      $a0 8($s0)
# create a new int object and push it on the stack
    jal     Object.copy
    sw      $a0, 0($sp)
    addiu   $sp, $sp -4
    lw      $a0, int_slot($a0)
    sw      $a0, 0($sp)
    addiu   $sp, $sp -4
	la	$a0 int_const1
    lw      $a0, int_slot($a0)
    lw      $t1, 4($sp)
    add     $a0, $t1, $a0
    addiu   $sp, $sp, 4
    lw      $t1, 4($sp)
    sw      $a0, int_slot($t1)
    move    $a0 $t1
    addiu   $sp, $sp, 4
loop_end19:
# FIXME: generation of object references only (very) partically done
    lw      $a0 12($s0)
# create a new int object and push it on the stack
    jal     Object.copy
    sw      $a0, 0($sp)
    addiu   $sp, $sp -4
    lw      $a0, int_slot($a0)
    sw      $a0, 0($sp)
    addiu   $sp, $sp -4
	la	$a0 int_const1
    lw      $a0, int_slot($a0)
    lw      $t1, 4($sp)
    add     $a0, $t1, $a0
    addiu   $sp, $sp, 4
    lw      $t1, 4($sp)
    sw      $a0, int_slot($t1)
    move    $a0 $t1
    addiu   $sp, $sp, 4
# FIXME: generation of object references only (very) partically done
    lw      $a0 8($s0)
# create a new int object and push it on the stack
    jal     Object.copy
    sw      $a0, 0($sp)
    addiu   $sp, $sp -4
    lw      $a0, int_slot($a0)
    sw      $a0, 0($sp)
    addiu   $sp, $sp -4
	la	$a0 int_const1
    lw      $a0, int_slot($a0)
    lw      $t1, 4($sp)
    add     $a0, $t1, $a0
    addiu   $sp, $sp, 4
    lw      $t1, 4($sp)
    sw      $a0, int_slot($t1)
    move    $a0 $t1
    addiu   $sp, $sp, 4
loop_end17:
# push arguments on the stack
# FIXME: generation of object references only (very) partically done
    lw      $a0 8($s0)
    lw      $a0, int_slot($a0)
    sw      $a0, 0($sp)
    addiu   $sp, $sp -4
	la	$a0 int_const11
    lw      $a0, int_slot($a0)
    lw      $t1, 4($sp)
    addiu   $sp, $sp, 4
# FIXME: generation of object references only (very) partically done
    lw      $a0 8($s0)
    sw      $a0, 0($sp)
    addiu   $sp, $sp -4
	la	$a0 int_const11
    lw      $t1, 4($sp)
    addiu   $sp, $sp, 4
    beq     $a0, $t1 true_label23
false_label23:
	la	$a0 bool_const0
    b     end_comp23
true_label23:
	la	$a0 bool_const1
end_comp23:
    sw    $a0 0($sp)
    addiu $sp $sp -4
	la	$a0 int_const13
    sw    $a0 0($sp)
    addiu $sp $sp -4
    move    $a0 $s0
    lw    $t1 obj_disp($a0)
    lw    $t1 96($t1)     #Blah.assert
    jalr  $t1
# push arguments on the stack
# FIXME: generation of object references only (very) partically done
    lw      $a0 8($s0)
    lw      $a0, int_slot($a0)
    sw      $a0, 0($sp)
    addiu   $sp, $sp -4
	la	$a0 int_const14
    lw      $a0, int_slot($a0)
    lw      $t1, 4($sp)
    addiu   $sp, $sp, 4
# FIXME: generation of object references only (very) partically done
    lw      $a0 8($s0)
    sw      $a0, 0($sp)
    addiu   $sp, $sp -4
	la	$a0 int_const14
    lw      $t1, 4($sp)
    addiu   $sp, $sp, 4
    beq     $a0, $t1 true_label24
false_label24:
	la	$a0 bool_const0
    b     end_comp24
true_label24:
	la	$a0 bool_const1
end_comp24:
    sw    $a0 0($sp)
    addiu $sp $sp -4
	la	$a0 int_const15
    sw    $a0 0($sp)
    addiu $sp $sp -4
    move    $a0 $s0
    lw    $t1 obj_disp($a0)
    lw    $t1 96($t1)     #Blah.assert
    jalr  $t1
# push arguments on the stack
# FIXME: generation of object references only (very) partically done
    lw      $a0 8($s0)
    lw      $a0, int_slot($a0)
    sw      $a0, 0($sp)
    addiu   $sp, $sp -4
	la	$a0 int_const16
    lw      $a0, int_slot($a0)
    lw      $t1, 4($sp)
    addiu   $sp, $sp, 4
# FIXME: generation of object references only (very) partically done
    lw      $a0 8($s0)
    sw      $a0, 0($sp)
    addiu   $sp, $sp -4
	la	$a0 int_const16
    lw      $t1, 4($sp)
    addiu   $sp, $sp, 4
    beq     $a0, $t1 true_label25
false_label25:
	la	$a0 bool_const0
    b     end_comp25
true_label25:
	la	$a0 bool_const1
end_comp25:
    sw    $a0 0($sp)
    addiu $sp $sp -4
	la	$a0 int_const17
    sw    $a0 0($sp)
    addiu $sp $sp -4
    move    $a0 $s0
    lw    $t1 obj_disp($a0)
    lw    $t1 96($t1)     #Blah.assert
    jalr  $t1
    addiu   $sp, $sp, 4
    addiu   $sp, $sp, 4
    addiu   $sp, $sp, 4
    addiu   $sp, $sp, 4
    addiu   $sp, $sp, 4
    addiu   $sp, $sp, 4
    lw  $fp 12($sp)            # restore the caller's registers
    lw  $s0 8($sp)             # etc 
    lw  $ra 4($sp)             # etc 
    addiu $sp $sp 12           # restore stack pointer 
    jr  $ra                    # and jump back
Blah.bail:
    addiu   $sp $sp -12        # push 3 items on the stack:
    sw  $fp 12($sp)            # 1. the caller's frame pointer 
    sw  $s0 8($sp)             # 2. the caller's? self object
    sw  $ra 4($sp)             # 3. the return address 
    addiu   $fp $sp 4          # set the fp to the activation record of the function
    move    $s0 $a0            # move the self object to $a0
# push arguments on the stack
	la	$a0 str_const7
    sw    $a0 0($sp)
    addiu $sp $sp -4
# FIXME: generation of object references only (very) partically done
    lw      $a0 36($s0)
    lw    $t1 obj_disp($a0)
    lw    $t1 -4($t1)     #IO.out_string
    jalr  $t1
# push arguments on the stack
# FIXME: generation of object references only (very) partically done
    lw      $a0 12($s0)
    sw    $a0 0($sp)
    addiu $sp $sp -4
# FIXME: generation of object references only (very) partically done
    lw      $a0 36($s0)
    lw    $t1 obj_disp($a0)
    lw    $t1 -4($t1)     #IO.out_int
    jalr  $t1
# push arguments on the stack
	la	$a0 str_const8
    sw    $a0 0($sp)
    addiu $sp $sp -4
# FIXME: generation of object references only (very) partically done
    lw      $a0 36($s0)
    lw    $t1 obj_disp($a0)
    lw    $t1 -4($t1)     #IO.out_string
    jalr  $t1
# push arguments on the stack
    move    $a0 $s0
    lw    $t1 obj_disp($a0)
    lw    $t1 0($t1)     #Blah.abort
    jalr  $t1
    lw  $fp 12($sp)            # restore the caller's registers
    lw  $s0 8($sp)             # etc 
    lw  $ra 4($sp)             # etc 
    addiu $sp $sp 12           # restore stack pointer 
    jr  $ra                    # and jump back
Blah.bigMath:
    addiu   $sp $sp -12        # push 3 items on the stack:
    sw  $fp 12($sp)            # 1. the caller's frame pointer 
    sw  $s0 8($sp)             # 2. the caller's? self object
    sw  $ra 4($sp)             # 3. the return address 
    addiu   $fp $sp 4          # set the fp to the activation record of the function
    move    $s0 $a0            # move the self object to $a0
# start coding an if statement
	la	$a0 int_const1
# create a new int object and push it on the stack
    jal     Object.copy
    sw      $a0, 0($sp)
    addiu   $sp, $sp -4
    lw      $a0, int_slot($a0)
    sw      $a0, 0($sp)
    addiu   $sp, $sp -4
	la	$a0 int_const3
    lw      $a0, int_slot($a0)
    lw      $t1, 4($sp)
    add     $a0, $t1, $a0
    addiu   $sp, $sp, 4
    lw      $t1, 4($sp)
    sw      $a0, int_slot($t1)
    move    $a0 $t1
    addiu   $sp, $sp, 4
    lw      $a0, int_slot($a0)
    sw      $a0, 0($sp)
    addiu   $sp, $sp -4
	la	$a0 int_const0
    lw      $a0, int_slot($a0)
    lw      $t1, 4($sp)
    addiu   $sp, $sp, 4
	la	$a0 int_const1
# create a new int object and push it on the stack
    jal     Object.copy
    sw      $a0, 0($sp)
    addiu   $sp, $sp -4
    lw      $a0, int_slot($a0)
    sw      $a0, 0($sp)
    addiu   $sp, $sp -4
	la	$a0 int_const3
    lw      $a0, int_slot($a0)
    lw      $t1, 4($sp)
    add     $a0, $t1, $a0
    addiu   $sp, $sp, 4
    lw      $t1, 4($sp)
    sw      $a0, int_slot($t1)
    move    $a0 $t1
    addiu   $sp, $sp, 4
    sw      $a0, 0($sp)
    addiu   $sp, $sp -4
	la	$a0 int_const0
    lw      $t1, 4($sp)
    addiu   $sp, $sp, 4
    beq     $a0, $t1 true_label26
false_label26:
	la	$a0 bool_const0
    b     end_comp26
true_label26:
	la	$a0 bool_const1
end_comp26:
    lw      $t1, bool_slot($a0)
    beq     $t1, 1, true_branch27
false_branch27:
# push arguments on the stack
	la	$a0 int_const18
    sw    $a0 0($sp)
    addiu $sp $sp -4
    move    $a0 $s0
    lw    $t1 obj_disp($a0)
    lw    $t1 88($t1)     #Blah.bail
    jalr  $t1
    b       end_if27
true_branch27:
	la	$a0 int_const2
end_if27:
# push arguments on the stack
	la	$a0 str_const9
    sw    $a0 0($sp)
    addiu $sp $sp -4
# FIXME: generation of object references only (very) partically done
    lw      $a0 36($s0)
    lw    $t1 obj_disp($a0)
    lw    $t1 -4($t1)     #IO.out_string
    jalr  $t1
# start coding an if statement
	la	$a0 int_const1
    lw      $a0, int_slot($a0)
    sw      $a0, 0($sp)
    addiu   $sp, $sp -4
	la	$a0 int_const1
    lw      $a0, int_slot($a0)
    lw      $t1, 4($sp)
    addiu   $sp, $sp, 4
	la	$a0 int_const1
    sw      $a0, 0($sp)
    addiu   $sp, $sp -4
	la	$a0 int_const1
    lw      $t1, 4($sp)
    addiu   $sp, $sp, 4
    beq     $a0, $t1 true_label28
false_label28:
	la	$a0 bool_const0
    b     end_comp28
true_label28:
	la	$a0 bool_const1
end_comp28:
    lw      $t1, bool_slot($a0)
    beq     $t1, 1, true_branch29
false_branch29:
# push arguments on the stack
	la	$a0 int_const11
    sw    $a0 0($sp)
    addiu $sp $sp -4
    move    $a0 $s0
    lw    $t1 obj_disp($a0)
    lw    $t1 88($t1)     #Blah.bail
    jalr  $t1
    b       end_if29
true_branch29:
# start coding an if statement
	la	$a0 int_const1
# create a new int object and push it on the stack
    jal     Object.copy
    sw      $a0, 0($sp)
    addiu   $sp, $sp -4
    lw      $a0, int_slot($a0)
    sw      $a0, 0($sp)
    addiu   $sp, $sp -4
	la	$a0 int_const3
    lw      $a0, int_slot($a0)
    lw      $t1, 4($sp)
    add     $a0, $t1, $a0
    addiu   $sp, $sp, 4
    lw      $t1, 4($sp)
    sw      $a0, int_slot($t1)
    move    $a0 $t1
    addiu   $sp, $sp, 4
    lw      $a0, int_slot($a0)
    sw      $a0, 0($sp)
    addiu   $sp, $sp -4
	la	$a0 int_const0
    lw      $a0, int_slot($a0)
    lw      $t1, 4($sp)
    addiu   $sp, $sp, 4
	la	$a0 int_const1
# create a new int object and push it on the stack
    jal     Object.copy
    sw      $a0, 0($sp)
    addiu   $sp, $sp -4
    lw      $a0, int_slot($a0)
    sw      $a0, 0($sp)
    addiu   $sp, $sp -4
	la	$a0 int_const3
    lw      $a0, int_slot($a0)
    lw      $t1, 4($sp)
    add     $a0, $t1, $a0
    addiu   $sp, $sp, 4
    lw      $t1, 4($sp)
    sw      $a0, int_slot($t1)
    move    $a0 $t1
    addiu   $sp, $sp, 4
    sw      $a0, 0($sp)
    addiu   $sp, $sp -4
	la	$a0 int_const0
    lw      $t1, 4($sp)
    addiu   $sp, $sp, 4
    beq     $a0, $t1 true_label30
false_label30:
	la	$a0 bool_const0
    b     end_comp30
true_label30:
	la	$a0 bool_const1
end_comp30:
    lw      $t1, bool_slot($a0)
    beq     $t1, 1, true_branch31
false_branch31:
# push arguments on the stack
	la	$a0 int_const7
    sw    $a0 0($sp)
    addiu $sp $sp -4
    move    $a0 $s0
    lw    $t1 obj_disp($a0)
    lw    $t1 88($t1)     #Blah.bail
    jalr  $t1
    b       end_if31
true_branch31:
# start coding an if statement
	la	$a0 int_const4
# create a new int object and push it on the stack
    jal     Object.copy
    sw      $a0, 0($sp)
    addiu   $sp, $sp -4
    lw      $a0, int_slot($a0)
    sw      $a0, 0($sp)
    addiu   $sp, $sp -4
	la	$a0 int_const0
    lw      $a0, int_slot($a0)
    lw      $t1, 4($sp)
    sub     $a0, $t1, $a0
    addiu   $sp, $sp, 4
    lw      $t1, 4($sp)
    sw      $a0, int_slot($t1)
    move    $a0 $t1
    addiu   $sp, $sp, 4
    lw      $a0, int_slot($a0)
    sw      $a0, 0($sp)
    addiu   $sp, $sp -4
	la	$a0 int_const3
    lw      $a0, int_slot($a0)
    lw      $t1, 4($sp)
    addiu   $sp, $sp, 4
	la	$a0 int_const4
# create a new int object and push it on the stack
    jal     Object.copy
    sw      $a0, 0($sp)
    addiu   $sp, $sp -4
    lw      $a0, int_slot($a0)
    sw      $a0, 0($sp)
    addiu   $sp, $sp -4
	la	$a0 int_const0
    lw      $a0, int_slot($a0)
    lw      $t1, 4($sp)
    sub     $a0, $t1, $a0
    addiu   $sp, $sp, 4
    lw      $t1, 4($sp)
    sw      $a0, int_slot($t1)
    move    $a0 $t1
    addiu   $sp, $sp, 4
    sw      $a0, 0($sp)
    addiu   $sp, $sp -4
	la	$a0 int_const3
    lw      $t1, 4($sp)
    addiu   $sp, $sp, 4
    beq     $a0, $t1 true_label32
false_label32:
	la	$a0 bool_const0
    b     end_comp32
true_label32:
	la	$a0 bool_const1
end_comp32:
    lw      $t1, bool_slot($a0)
    beq     $t1, 1, true_branch33
false_branch33:
# push arguments on the stack
	la	$a0 int_const26
    sw    $a0 0($sp)
    addiu $sp $sp -4
    move    $a0 $s0
    lw    $t1 obj_disp($a0)
    lw    $t1 88($t1)     #Blah.bail
    jalr  $t1
    b       end_if33
true_branch33:
# start coding an if statement
	la	$a0 int_const19
# create a new int object and push it on the stack
    jal     Object.copy
    sw      $a0, 0($sp)
    addiu   $sp, $sp -4
    lw      $a0, int_slot($a0)
    sw      $a0, 0($sp)
    addiu   $sp, $sp -4
	la	$a0 int_const3
    lw      $a0, int_slot($a0)
    lw      $t1, 4($sp)
    mul     $a0, $t1, $a0
    addiu   $sp, $sp, 4
    lw      $a0, int_slot($a0)
    sw      $a0, 0($sp)
    addiu   $sp, $sp -4
	la	$a0 int_const20
    lw      $a0, int_slot($a0)
    lw      $t1, 4($sp)
    addiu   $sp, $sp, 4
	la	$a0 int_const19
# create a new int object and push it on the stack
    jal     Object.copy
    sw      $a0, 0($sp)
    addiu   $sp, $sp -4
    lw      $a0, int_slot($a0)
    sw      $a0, 0($sp)
    addiu   $sp, $sp -4
	la	$a0 int_const3
    lw      $a0, int_slot($a0)
    lw      $t1, 4($sp)
    mul     $a0, $t1, $a0
    addiu   $sp, $sp, 4
    sw      $a0, 0($sp)
    addiu   $sp, $sp -4
	la	$a0 int_const20
    lw      $t1, 4($sp)
    addiu   $sp, $sp, 4
    beq     $a0, $t1 true_label34
false_label34:
	la	$a0 bool_const0
    b     end_comp34
true_label34:
	la	$a0 bool_const1
end_comp34:
    lw      $t1, bool_slot($a0)
    beq     $t1, 1, true_branch35
false_branch35:
# push arguments on the stack
	la	$a0 int_const25
    sw    $a0 0($sp)
    addiu $sp $sp -4
    move    $a0 $s0
    lw    $t1 obj_disp($a0)
    lw    $t1 88($t1)     #Blah.bail
    jalr  $t1
    b       end_if35
true_branch35:
# start coding an if statement
	la	$a0 int_const8
# create a new int object and push it on the stack
    jal     Object.copy
    sw      $a0, 0($sp)
    addiu   $sp, $sp -4
    lw      $a0, int_slot($a0)
    sw      $a0, 0($sp)
    addiu   $sp, $sp -4
	la	$a0 int_const19
    lw      $a0, int_slot($a0)
    lw      $t1, 4($sp)
    div     $a0, $t1, $a0
    addiu   $sp, $sp, 4
    lw      $t1, 4($sp)
    sw      $a0, int_slot($t1)
    move    $a0 $t1
    addiu   $sp, $sp, 4
    lw      $a0, int_slot($a0)
    sw      $a0, 0($sp)
    addiu   $sp, $sp -4
	la	$a0 int_const7
    lw      $a0, int_slot($a0)
    lw      $t1, 4($sp)
    addiu   $sp, $sp, 4
	la	$a0 int_const8
# create a new int object and push it on the stack
    jal     Object.copy
    sw      $a0, 0($sp)
    addiu   $sp, $sp -4
    lw      $a0, int_slot($a0)
    sw      $a0, 0($sp)
    addiu   $sp, $sp -4
	la	$a0 int_const19
    lw      $a0, int_slot($a0)
    lw      $t1, 4($sp)
    div     $a0, $t1, $a0
    addiu   $sp, $sp, 4
    lw      $t1, 4($sp)
    sw      $a0, int_slot($t1)
    move    $a0 $t1
    addiu   $sp, $sp, 4
    sw      $a0, 0($sp)
    addiu   $sp, $sp -4
	la	$a0 int_const7
    lw      $t1, 4($sp)
    addiu   $sp, $sp, 4
    beq     $a0, $t1 true_label36
false_label36:
	la	$a0 bool_const0
    b     end_comp36
true_label36:
	la	$a0 bool_const1
end_comp36:
    lw      $t1, bool_slot($a0)
    beq     $t1, 1, true_branch37
false_branch37:
# push arguments on the stack
	la	$a0 int_const5
    sw    $a0 0($sp)
    addiu $sp $sp -4
    move    $a0 $s0
    lw    $t1 obj_disp($a0)
    lw    $t1 88($t1)     #Blah.bail
    jalr  $t1
    b       end_if37
true_branch37:
# start coding an if statement
	la	$a0 int_const21
# create a new int object and push it on the stack
    jal     Object.copy
    sw      $a0, 0($sp)
    addiu   $sp, $sp -4
    lw      $a0, int_slot($a0)
    sw      $a0, 0($sp)
    addiu   $sp, $sp -4
	la	$a0 int_const22
    lw      $a0, int_slot($a0)
    lw      $t1, 4($sp)
    add     $a0, $t1, $a0
    addiu   $sp, $sp, 4
    lw      $t1, 4($sp)
    sw      $a0, int_slot($t1)
    move    $a0 $t1
    addiu   $sp, $sp, 4
# create a new int object and push it on the stack
    jal     Object.copy
    sw      $a0, 0($sp)
    addiu   $sp, $sp -4
    lw      $a0, int_slot($a0)
    sw      $a0, 0($sp)
    addiu   $sp, $sp -4
	la	$a0 int_const23
# create a new int object and push it on the stack
    jal     Object.copy
    sw      $a0, 0($sp)
    addiu   $sp, $sp -4
    lw      $a0, int_slot($a0)
    sw      $a0, 0($sp)
    addiu   $sp, $sp -4
	la	$a0 int_const3
    lw      $a0, int_slot($a0)
    lw      $t1, 4($sp)
    mul     $a0, $t1, $a0
    addiu   $sp, $sp, 4
    lw      $a0, int_slot($a0)
    lw      $t1, 4($sp)
    sub     $a0, $t1, $a0
    addiu   $sp, $sp, 4
    lw      $t1, 4($sp)
    sw      $a0, int_slot($t1)
    move    $a0 $t1
    addiu   $sp, $sp, 4
# create a new int object and push it on the stack
    jal     Object.copy
    sw      $a0, 0($sp)
    addiu   $sp, $sp -4
    lw      $a0, int_slot($a0)
    sw      $a0, 0($sp)
    addiu   $sp, $sp -4
	la	$a0 int_const14
    lw      $a0, int_slot($a0)
    lw      $t1, 4($sp)
    add     $a0, $t1, $a0
    addiu   $sp, $sp, 4
    lw      $t1, 4($sp)
    sw      $a0, int_slot($t1)
    move    $a0 $t1
    addiu   $sp, $sp, 4
    lw      $a0, int_slot($a0)
    sw      $a0, 0($sp)
    addiu   $sp, $sp -4
	la	$a0 int_const7
    lw      $a0, int_slot($a0)
    lw      $t1, 4($sp)
    addiu   $sp, $sp, 4
	la	$a0 int_const21
# create a new int object and push it on the stack
    jal     Object.copy
    sw      $a0, 0($sp)
    addiu   $sp, $sp -4
    lw      $a0, int_slot($a0)
    sw      $a0, 0($sp)
    addiu   $sp, $sp -4
	la	$a0 int_const22
    lw      $a0, int_slot($a0)
    lw      $t1, 4($sp)
    add     $a0, $t1, $a0
    addiu   $sp, $sp, 4
    lw      $t1, 4($sp)
    sw      $a0, int_slot($t1)
    move    $a0 $t1
    addiu   $sp, $sp, 4
# create a new int object and push it on the stack
    jal     Object.copy
    sw      $a0, 0($sp)
    addiu   $sp, $sp -4
    lw      $a0, int_slot($a0)
    sw      $a0, 0($sp)
    addiu   $sp, $sp -4
	la	$a0 int_const23
# create a new int object and push it on the stack
    jal     Object.copy
    sw      $a0, 0($sp)
    addiu   $sp, $sp -4
    lw      $a0, int_slot($a0)
    sw      $a0, 0($sp)
    addiu   $sp, $sp -4
	la	$a0 int_const3
    lw      $a0, int_slot($a0)
    lw      $t1, 4($sp)
    mul     $a0, $t1, $a0
    addiu   $sp, $sp, 4
    lw      $a0, int_slot($a0)
    lw      $t1, 4($sp)
    sub     $a0, $t1, $a0
    addiu   $sp, $sp, 4
    lw      $t1, 4($sp)
    sw      $a0, int_slot($t1)
    move    $a0 $t1
    addiu   $sp, $sp, 4
# create a new int object and push it on the stack
    jal     Object.copy
    sw      $a0, 0($sp)
    addiu   $sp, $sp -4
    lw      $a0, int_slot($a0)
    sw      $a0, 0($sp)
    addiu   $sp, $sp -4
	la	$a0 int_const14
    lw      $a0, int_slot($a0)
    lw      $t1, 4($sp)
    add     $a0, $t1, $a0
    addiu   $sp, $sp, 4
    lw      $t1, 4($sp)
    sw      $a0, int_slot($t1)
    move    $a0 $t1
    addiu   $sp, $sp, 4
    sw      $a0, 0($sp)
    addiu   $sp, $sp -4
	la	$a0 int_const7
    lw      $t1, 4($sp)
    addiu   $sp, $sp, 4
    beq     $a0, $t1 true_label38
false_label38:
	la	$a0 bool_const0
    b     end_comp38
true_label38:
	la	$a0 bool_const1
end_comp38:
    lw      $t1, bool_slot($a0)
    beq     $t1, 1, true_branch39
false_branch39:
# push arguments on the stack
	la	$a0 int_const4
    sw    $a0 0($sp)
    addiu $sp $sp -4
    move    $a0 $s0
    lw    $t1 obj_disp($a0)
    lw    $t1 88($t1)     #Blah.bail
    jalr  $t1
    b       end_if39
true_branch39:
# start coding an if statement
	la	$a0 int_const14
# create a new int object and push it on the stack
    jal     Object.copy
    sw      $a0, 0($sp)
    addiu   $sp, $sp -4
    lw      $a0, int_slot($a0)
    sw      $a0, 0($sp)
    addiu   $sp, $sp -4
	la	$a0 int_const3
    lw      $a0, int_slot($a0)
    lw      $t1, 4($sp)
    div     $a0, $t1, $a0
    addiu   $sp, $sp, 4
    lw      $t1, 4($sp)
    sw      $a0, int_slot($t1)
    move    $a0 $t1
    addiu   $sp, $sp, 4
# create a new int object and push it on the stack
    jal     Object.copy
    sw      $a0, 0($sp)
    addiu   $sp, $sp -4
    lw      $a0, int_slot($a0)
    sw      $a0, 0($sp)
    addiu   $sp, $sp -4
	la	$a0 int_const3
    lw      $a0, int_slot($a0)
    lw      $t1, 4($sp)
    div     $a0, $t1, $a0
    addiu   $sp, $sp, 4
    lw      $t1, 4($sp)
    sw      $a0, int_slot($t1)
    move    $a0 $t1
    addiu   $sp, $sp, 4
# create a new int object and push it on the stack
    jal     Object.copy
    sw      $a0, 0($sp)
    addiu   $sp, $sp -4
    lw      $a0, int_slot($a0)
    sw      $a0, 0($sp)
    addiu   $sp, $sp -4
	la	$a0 int_const3
    lw      $a0, int_slot($a0)
    lw      $t1, 4($sp)
    div     $a0, $t1, $a0
    addiu   $sp, $sp, 4
    lw      $t1, 4($sp)
    sw      $a0, int_slot($t1)
    move    $a0 $t1
    addiu   $sp, $sp, 4
# create a new int object and push it on the stack
    jal     Object.copy
    sw      $a0, 0($sp)
    addiu   $sp, $sp -4
    lw      $a0, int_slot($a0)
    sw      $a0, 0($sp)
    addiu   $sp, $sp -4
	la	$a0 int_const3
    lw      $a0, int_slot($a0)
    lw      $t1, 4($sp)
    div     $a0, $t1, $a0
    addiu   $sp, $sp, 4
    lw      $t1, 4($sp)
    sw      $a0, int_slot($t1)
    move    $a0 $t1
    addiu   $sp, $sp, 4
# create a new int object and push it on the stack
    jal     Object.copy
    sw      $a0, 0($sp)
    addiu   $sp, $sp -4
    lw      $a0, int_slot($a0)
    sw      $a0, 0($sp)
    addiu   $sp, $sp -4
	la	$a0 int_const3
    lw      $a0, int_slot($a0)
    lw      $t1, 4($sp)
    div     $a0, $t1, $a0
    addiu   $sp, $sp, 4
    lw      $t1, 4($sp)
    sw      $a0, int_slot($t1)
    move    $a0 $t1
    addiu   $sp, $sp, 4
    lw      $a0, int_slot($a0)
    sw      $a0, 0($sp)
    addiu   $sp, $sp -4
	la	$a0 int_const0
    lw      $a0, int_slot($a0)
    lw      $t1, 4($sp)
    addiu   $sp, $sp, 4
	la	$a0 int_const14
# create a new int object and push it on the stack
    jal     Object.copy
    sw      $a0, 0($sp)
    addiu   $sp, $sp -4
    lw      $a0, int_slot($a0)
    sw      $a0, 0($sp)
    addiu   $sp, $sp -4
	la	$a0 int_const3
    lw      $a0, int_slot($a0)
    lw      $t1, 4($sp)
    div     $a0, $t1, $a0
    addiu   $sp, $sp, 4
    lw      $t1, 4($sp)
    sw      $a0, int_slot($t1)
    move    $a0 $t1
    addiu   $sp, $sp, 4
# create a new int object and push it on the stack
    jal     Object.copy
    sw      $a0, 0($sp)
    addiu   $sp, $sp -4
    lw      $a0, int_slot($a0)
    sw      $a0, 0($sp)
    addiu   $sp, $sp -4
	la	$a0 int_const3
    lw      $a0, int_slot($a0)
    lw      $t1, 4($sp)
    div     $a0, $t1, $a0
    addiu   $sp, $sp, 4
    lw      $t1, 4($sp)
    sw      $a0, int_slot($t1)
    move    $a0 $t1
    addiu   $sp, $sp, 4
# create a new int object and push it on the stack
    jal     Object.copy
    sw      $a0, 0($sp)
    addiu   $sp, $sp -4
    lw      $a0, int_slot($a0)
    sw      $a0, 0($sp)
    addiu   $sp, $sp -4
	la	$a0 int_const3
    lw      $a0, int_slot($a0)
    lw      $t1, 4($sp)
    div     $a0, $t1, $a0
    addiu   $sp, $sp, 4
    lw      $t1, 4($sp)
    sw      $a0, int_slot($t1)
    move    $a0 $t1
    addiu   $sp, $sp, 4
# create a new int object and push it on the stack
    jal     Object.copy
    sw      $a0, 0($sp)
    addiu   $sp, $sp -4
    lw      $a0, int_slot($a0)
    sw      $a0, 0($sp)
    addiu   $sp, $sp -4
	la	$a0 int_const3
    lw      $a0, int_slot($a0)
    lw      $t1, 4($sp)
    div     $a0, $t1, $a0
    addiu   $sp, $sp, 4
    lw      $t1, 4($sp)
    sw      $a0, int_slot($t1)
    move    $a0 $t1
    addiu   $sp, $sp, 4
# create a new int object and push it on the stack
    jal     Object.copy
    sw      $a0, 0($sp)
    addiu   $sp, $sp -4
    lw      $a0, int_slot($a0)
    sw      $a0, 0($sp)
    addiu   $sp, $sp -4
	la	$a0 int_const3
    lw      $a0, int_slot($a0)
    lw      $t1, 4($sp)
    div     $a0, $t1, $a0
    addiu   $sp, $sp, 4
    lw      $t1, 4($sp)
    sw      $a0, int_slot($t1)
    move    $a0 $t1
    addiu   $sp, $sp, 4
    sw      $a0, 0($sp)
    addiu   $sp, $sp -4
	la	$a0 int_const0
    lw      $t1, 4($sp)
    addiu   $sp, $sp, 4
    beq     $a0, $t1 true_label40
false_label40:
	la	$a0 bool_const0
    b     end_comp40
true_label40:
	la	$a0 bool_const1
end_comp40:
    lw      $t1, bool_slot($a0)
    beq     $t1, 1, true_branch41
false_branch41:
# push arguments on the stack
	la	$a0 int_const9
    sw    $a0 0($sp)
    addiu $sp $sp -4
    move    $a0 $s0
    lw    $t1 obj_disp($a0)
    lw    $t1 88($t1)     #Blah.bail
    jalr  $t1
    b       end_if41
true_branch41:
# start coding an if statement
	la	$a0 int_const1
# create a new int object and push it on the stack
    jal     Object.copy
    sw      $a0, 0($sp)
    addiu   $sp, $sp -4
    lw      $a0, int_slot($a0)
    sw      $a0, 0($sp)
    addiu   $sp, $sp -4
	la	$a0 int_const3
# create a new int object and push it on the stack
    jal     Object.copy
    sw      $a0, 0($sp)
    addiu   $sp, $sp -4
    lw      $a0, int_slot($a0)
    sw      $a0, 0($sp)
    addiu   $sp, $sp -4
	la	$a0 int_const0
    lw      $a0, int_slot($a0)
    lw      $t1, 4($sp)
    add     $a0, $t1, $a0
    addiu   $sp, $sp, 4
    lw      $t1, 4($sp)
    sw      $a0, int_slot($t1)
    move    $a0 $t1
    addiu   $sp, $sp, 4
    lw      $a0, int_slot($a0)
    lw      $t1, 4($sp)
    add     $a0, $t1, $a0
    addiu   $sp, $sp, 4
    lw      $t1, 4($sp)
    sw      $a0, int_slot($t1)
    move    $a0 $t1
    addiu   $sp, $sp, 4
    lw      $a0, int_slot($a0)
    sw      $a0, 0($sp)
    addiu   $sp, $sp -4
	la	$a0 int_const5
    lw      $a0, int_slot($a0)
    lw      $t1, 4($sp)
    addiu   $sp, $sp, 4
	la	$a0 int_const1
# create a new int object and push it on the stack
    jal     Object.copy
    sw      $a0, 0($sp)
    addiu   $sp, $sp -4
    lw      $a0, int_slot($a0)
    sw      $a0, 0($sp)
    addiu   $sp, $sp -4
	la	$a0 int_const3
# create a new int object and push it on the stack
    jal     Object.copy
    sw      $a0, 0($sp)
    addiu   $sp, $sp -4
    lw      $a0, int_slot($a0)
    sw      $a0, 0($sp)
    addiu   $sp, $sp -4
	la	$a0 int_const0
    lw      $a0, int_slot($a0)
    lw      $t1, 4($sp)
    add     $a0, $t1, $a0
    addiu   $sp, $sp, 4
    lw      $t1, 4($sp)
    sw      $a0, int_slot($t1)
    move    $a0 $t1
    addiu   $sp, $sp, 4
    lw      $a0, int_slot($a0)
    lw      $t1, 4($sp)
    add     $a0, $t1, $a0
    addiu   $sp, $sp, 4
    lw      $t1, 4($sp)
    sw      $a0, int_slot($t1)
    move    $a0 $t1
    addiu   $sp, $sp, 4
    sw      $a0, 0($sp)
    addiu   $sp, $sp -4
	la	$a0 int_const5
    lw      $t1, 4($sp)
    addiu   $sp, $sp, 4
    beq     $a0, $t1 true_label42
false_label42:
	la	$a0 bool_const0
    b     end_comp42
true_label42:
	la	$a0 bool_const1
end_comp42:
    lw      $t1, bool_slot($a0)
    beq     $t1, 1, true_branch43
false_branch43:
# push arguments on the stack
	la	$a0 int_const0
    sw    $a0 0($sp)
    addiu $sp $sp -4
    move    $a0 $s0
    lw    $t1 obj_disp($a0)
    lw    $t1 88($t1)     #Blah.bail
    jalr  $t1
    b       end_if43
true_branch43:
# start coding an if statement
	la	$a0 int_const1
# create a new int object and push it on the stack
    jal     Object.copy
    sw      $a0, 0($sp)
    addiu   $sp, $sp -4
    lw      $a0, int_slot($a0)
    sw      $a0, 0($sp)
    addiu   $sp, $sp -4
	la	$a0 int_const3
# create a new int object and push it on the stack
    jal     Object.copy
    sw      $a0, 0($sp)
    addiu   $sp, $sp -4
    lw      $a0, int_slot($a0)
    sw      $a0, 0($sp)
    addiu   $sp, $sp -4
	la	$a0 int_const0
# create a new int object and push it on the stack
    jal     Object.copy
    sw      $a0, 0($sp)
    addiu   $sp, $sp -4
    lw      $a0, int_slot($a0)
    sw      $a0, 0($sp)
    addiu   $sp, $sp -4
	la	$a0 int_const9
# create a new int object and push it on the stack
    jal     Object.copy
    sw      $a0, 0($sp)
    addiu   $sp, $sp -4
    lw      $a0, int_slot($a0)
    sw      $a0, 0($sp)
    addiu   $sp, $sp -4
	la	$a0 int_const4
    lw      $a0, int_slot($a0)
    lw      $t1, 4($sp)
    add     $a0, $t1, $a0
    addiu   $sp, $sp, 4
    lw      $t1, 4($sp)
    sw      $a0, int_slot($t1)
    move    $a0 $t1
    addiu   $sp, $sp, 4
    lw      $a0, int_slot($a0)
    lw      $t1, 4($sp)
    add     $a0, $t1, $a0
    addiu   $sp, $sp, 4
    lw      $t1, 4($sp)
    sw      $a0, int_slot($t1)
    move    $a0 $t1
    addiu   $sp, $sp, 4
    lw      $a0, int_slot($a0)
    lw      $t1, 4($sp)
    add     $a0, $t1, $a0
    addiu   $sp, $sp, 4
    lw      $t1, 4($sp)
    sw      $a0, int_slot($t1)
    move    $a0 $t1
    addiu   $sp, $sp, 4
    lw      $a0, int_slot($a0)
    lw      $t1, 4($sp)
    add     $a0, $t1, $a0
    addiu   $sp, $sp, 4
    lw      $t1, 4($sp)
    sw      $a0, int_slot($t1)
    move    $a0 $t1
    addiu   $sp, $sp, 4
    lw      $a0, int_slot($a0)
    sw      $a0, 0($sp)
    addiu   $sp, $sp -4
	la	$a0 int_const24
    lw      $a0, int_slot($a0)
    lw      $t1, 4($sp)
    addiu   $sp, $sp, 4
	la	$a0 int_const1
# create a new int object and push it on the stack
    jal     Object.copy
    sw      $a0, 0($sp)
    addiu   $sp, $sp -4
    lw      $a0, int_slot($a0)
    sw      $a0, 0($sp)
    addiu   $sp, $sp -4
	la	$a0 int_const3
# create a new int object and push it on the stack
    jal     Object.copy
    sw      $a0, 0($sp)
    addiu   $sp, $sp -4
    lw      $a0, int_slot($a0)
    sw      $a0, 0($sp)
    addiu   $sp, $sp -4
	la	$a0 int_const0
# create a new int object and push it on the stack
    jal     Object.copy
    sw      $a0, 0($sp)
    addiu   $sp, $sp -4
    lw      $a0, int_slot($a0)
    sw      $a0, 0($sp)
    addiu   $sp, $sp -4
	la	$a0 int_const9
# create a new int object and push it on the stack
    jal     Object.copy
    sw      $a0, 0($sp)
    addiu   $sp, $sp -4
    lw      $a0, int_slot($a0)
    sw      $a0, 0($sp)
    addiu   $sp, $sp -4
	la	$a0 int_const4
    lw      $a0, int_slot($a0)
    lw      $t1, 4($sp)
    add     $a0, $t1, $a0
    addiu   $sp, $sp, 4
    lw      $t1, 4($sp)
    sw      $a0, int_slot($t1)
    move    $a0 $t1
    addiu   $sp, $sp, 4
    lw      $a0, int_slot($a0)
    lw      $t1, 4($sp)
    add     $a0, $t1, $a0
    addiu   $sp, $sp, 4
    lw      $t1, 4($sp)
    sw      $a0, int_slot($t1)
    move    $a0 $t1
    addiu   $sp, $sp, 4
    lw      $a0, int_slot($a0)
    lw      $t1, 4($sp)
    add     $a0, $t1, $a0
    addiu   $sp, $sp, 4
    lw      $t1, 4($sp)
    sw      $a0, int_slot($t1)
    move    $a0 $t1
    addiu   $sp, $sp, 4
    lw      $a0, int_slot($a0)
    lw      $t1, 4($sp)
    add     $a0, $t1, $a0
    addiu   $sp, $sp, 4
    lw      $t1, 4($sp)
    sw      $a0, int_slot($t1)
    move    $a0 $t1
    addiu   $sp, $sp, 4
    sw      $a0, 0($sp)
    addiu   $sp, $sp -4
	la	$a0 int_const24
    lw      $t1, 4($sp)
    addiu   $sp, $sp, 4
    beq     $a0, $t1 true_label44
false_label44:
	la	$a0 bool_const0
    b     end_comp44
true_label44:
	la	$a0 bool_const1
end_comp44:
    lw      $t1, bool_slot($a0)
    beq     $t1, 1, true_branch45
false_branch45:
# push arguments on the stack
	la	$a0 int_const3
    sw    $a0 0($sp)
    addiu $sp $sp -4
    move    $a0 $s0
    lw    $t1 obj_disp($a0)
    lw    $t1 88($t1)     #Blah.bail
    jalr  $t1
    b       end_if45
true_branch45:
# start coding an if statement
	la	$a0 int_const1
# create a new int object and push it on the stack
    jal     Object.copy
    sw      $a0, 0($sp)
    addiu   $sp, $sp -4
    lw      $a0, int_slot($a0)
    sw      $a0, 0($sp)
    addiu   $sp, $sp -4
	la	$a0 int_const3
# create a new int object and push it on the stack
    jal     Object.copy
    sw      $a0, 0($sp)
    addiu   $sp, $sp -4
    lw      $a0, int_slot($a0)
    sw      $a0, 0($sp)
    addiu   $sp, $sp -4
	la	$a0 int_const0
# create a new int object and push it on the stack
    jal     Object.copy
    sw      $a0, 0($sp)
    addiu   $sp, $sp -4
    lw      $a0, int_slot($a0)
    sw      $a0, 0($sp)
    addiu   $sp, $sp -4
	la	$a0 int_const9
# create a new int object and push it on the stack
    jal     Object.copy
    sw      $a0, 0($sp)
    addiu   $sp, $sp -4
    lw      $a0, int_slot($a0)
    sw      $a0, 0($sp)
    addiu   $sp, $sp -4
	la	$a0 int_const4
# create a new int object and push it on the stack
    jal     Object.copy
    sw      $a0, 0($sp)
    addiu   $sp, $sp -4
    lw      $a0, int_slot($a0)
    sw      $a0, 0($sp)
    addiu   $sp, $sp -4
	la	$a0 int_const5
# create a new int object and push it on the stack
    jal     Object.copy
    sw      $a0, 0($sp)
    addiu   $sp, $sp -4
    lw      $a0, int_slot($a0)
    sw      $a0, 0($sp)
    addiu   $sp, $sp -4
	la	$a0 int_const25
# create a new int object and push it on the stack
    jal     Object.copy
    sw      $a0, 0($sp)
    addiu   $sp, $sp -4
    lw      $a0, int_slot($a0)
    sw      $a0, 0($sp)
    addiu   $sp, $sp -4
	la	$a0 int_const26
# create a new int object and push it on the stack
    jal     Object.copy
    sw      $a0, 0($sp)
    addiu   $sp, $sp -4
    lw      $a0, int_slot($a0)
    sw      $a0, 0($sp)
    addiu   $sp, $sp -4
	la	$a0 int_const7
# create a new int object and push it on the stack
    jal     Object.copy
    sw      $a0, 0($sp)
    addiu   $sp, $sp -4
    lw      $a0, int_slot($a0)
    sw      $a0, 0($sp)
    addiu   $sp, $sp -4
	la	$a0 int_const11
    lw      $a0, int_slot($a0)
    lw      $t1, 4($sp)
    add     $a0, $t1, $a0
    addiu   $sp, $sp, 4
    lw      $t1, 4($sp)
    sw      $a0, int_slot($t1)
    move    $a0 $t1
    addiu   $sp, $sp, 4
    lw      $a0, int_slot($a0)
    lw      $t1, 4($sp)
    add     $a0, $t1, $a0
    addiu   $sp, $sp, 4
    lw      $t1, 4($sp)
    sw      $a0, int_slot($t1)
    move    $a0 $t1
    addiu   $sp, $sp, 4
    lw      $a0, int_slot($a0)
    lw      $t1, 4($sp)
    add     $a0, $t1, $a0
    addiu   $sp, $sp, 4
    lw      $t1, 4($sp)
    sw      $a0, int_slot($t1)
    move    $a0 $t1
    addiu   $sp, $sp, 4
    lw      $a0, int_slot($a0)
    lw      $t1, 4($sp)
    add     $a0, $t1, $a0
    addiu   $sp, $sp, 4
    lw      $t1, 4($sp)
    sw      $a0, int_slot($t1)
    move    $a0 $t1
    addiu   $sp, $sp, 4
    lw      $a0, int_slot($a0)
    lw      $t1, 4($sp)
    add     $a0, $t1, $a0
    addiu   $sp, $sp, 4
    lw      $t1, 4($sp)
    sw      $a0, int_slot($t1)
    move    $a0 $t1
    addiu   $sp, $sp, 4
    lw      $a0, int_slot($a0)
    lw      $t1, 4($sp)
    add     $a0, $t1, $a0
    addiu   $sp, $sp, 4
    lw      $t1, 4($sp)
    sw      $a0, int_slot($t1)
    move    $a0 $t1
    addiu   $sp, $sp, 4
    lw      $a0, int_slot($a0)
    lw      $t1, 4($sp)
    add     $a0, $t1, $a0
    addiu   $sp, $sp, 4
    lw      $t1, 4($sp)
    sw      $a0, int_slot($t1)
    move    $a0 $t1
    addiu   $sp, $sp, 4
    lw      $a0, int_slot($a0)
    lw      $t1, 4($sp)
    add     $a0, $t1, $a0
    addiu   $sp, $sp, 4
    lw      $t1, 4($sp)
    sw      $a0, int_slot($t1)
    move    $a0 $t1
    addiu   $sp, $sp, 4
    lw      $a0, int_slot($a0)
    lw      $t1, 4($sp)
    add     $a0, $t1, $a0
    addiu   $sp, $sp, 4
    lw      $t1, 4($sp)
    sw      $a0, int_slot($t1)
    move    $a0 $t1
    addiu   $sp, $sp, 4
    lw      $a0, int_slot($a0)
    sw      $a0, 0($sp)
    addiu   $sp, $sp -4
	la	$a0 int_const18
    lw      $a0, int_slot($a0)
    lw      $t1, 4($sp)
    addiu   $sp, $sp, 4
	la	$a0 int_const1
# create a new int object and push it on the stack
    jal     Object.copy
    sw      $a0, 0($sp)
    addiu   $sp, $sp -4
    lw      $a0, int_slot($a0)
    sw      $a0, 0($sp)
    addiu   $sp, $sp -4
	la	$a0 int_const3
# create a new int object and push it on the stack
    jal     Object.copy
    sw      $a0, 0($sp)
    addiu   $sp, $sp -4
    lw      $a0, int_slot($a0)
    sw      $a0, 0($sp)
    addiu   $sp, $sp -4
	la	$a0 int_const0
# create a new int object and push it on the stack
    jal     Object.copy
    sw      $a0, 0($sp)
    addiu   $sp, $sp -4
    lw      $a0, int_slot($a0)
    sw      $a0, 0($sp)
    addiu   $sp, $sp -4
	la	$a0 int_const9
# create a new int object and push it on the stack
    jal     Object.copy
    sw      $a0, 0($sp)
    addiu   $sp, $sp -4
    lw      $a0, int_slot($a0)
    sw      $a0, 0($sp)
    addiu   $sp, $sp -4
	la	$a0 int_const4
# create a new int object and push it on the stack
    jal     Object.copy
    sw      $a0, 0($sp)
    addiu   $sp, $sp -4
    lw      $a0, int_slot($a0)
    sw      $a0, 0($sp)
    addiu   $sp, $sp -4
	la	$a0 int_const5
# create a new int object and push it on the stack
    jal     Object.copy
    sw      $a0, 0($sp)
    addiu   $sp, $sp -4
    lw      $a0, int_slot($a0)
    sw      $a0, 0($sp)
    addiu   $sp, $sp -4
	la	$a0 int_const25
# create a new int object and push it on the stack
    jal     Object.copy
    sw      $a0, 0($sp)
    addiu   $sp, $sp -4
    lw      $a0, int_slot($a0)
    sw      $a0, 0($sp)
    addiu   $sp, $sp -4
	la	$a0 int_const26
# create a new int object and push it on the stack
    jal     Object.copy
    sw      $a0, 0($sp)
    addiu   $sp, $sp -4
    lw      $a0, int_slot($a0)
    sw      $a0, 0($sp)
    addiu   $sp, $sp -4
	la	$a0 int_const7
# create a new int object and push it on the stack
    jal     Object.copy
    sw      $a0, 0($sp)
    addiu   $sp, $sp -4
    lw      $a0, int_slot($a0)
    sw      $a0, 0($sp)
    addiu   $sp, $sp -4
	la	$a0 int_const11
    lw      $a0, int_slot($a0)
    lw      $t1, 4($sp)
    add     $a0, $t1, $a0
    addiu   $sp, $sp, 4
    lw      $t1, 4($sp)
    sw      $a0, int_slot($t1)
    move    $a0 $t1
    addiu   $sp, $sp, 4
    lw      $a0, int_slot($a0)
    lw      $t1, 4($sp)
    add     $a0, $t1, $a0
    addiu   $sp, $sp, 4
    lw      $t1, 4($sp)
    sw      $a0, int_slot($t1)
    move    $a0 $t1
    addiu   $sp, $sp, 4
    lw      $a0, int_slot($a0)
    lw      $t1, 4($sp)
    add     $a0, $t1, $a0
    addiu   $sp, $sp, 4
    lw      $t1, 4($sp)
    sw      $a0, int_slot($t1)
    move    $a0 $t1
    addiu   $sp, $sp, 4
    lw      $a0, int_slot($a0)
    lw      $t1, 4($sp)
    add     $a0, $t1, $a0
    addiu   $sp, $sp, 4
    lw      $t1, 4($sp)
    sw      $a0, int_slot($t1)
    move    $a0 $t1
    addiu   $sp, $sp, 4
    lw      $a0, int_slot($a0)
    lw      $t1, 4($sp)
    add     $a0, $t1, $a0
    addiu   $sp, $sp, 4
    lw      $t1, 4($sp)
    sw      $a0, int_slot($t1)
    move    $a0 $t1
    addiu   $sp, $sp, 4
    lw      $a0, int_slot($a0)
    lw      $t1, 4($sp)
    add     $a0, $t1, $a0
    addiu   $sp, $sp, 4
    lw      $t1, 4($sp)
    sw      $a0, int_slot($t1)
    move    $a0 $t1
    addiu   $sp, $sp, 4
    lw      $a0, int_slot($a0)
    lw      $t1, 4($sp)
    add     $a0, $t1, $a0
    addiu   $sp, $sp, 4
    lw      $t1, 4($sp)
    sw      $a0, int_slot($t1)
    move    $a0 $t1
    addiu   $sp, $sp, 4
    lw      $a0, int_slot($a0)
    lw      $t1, 4($sp)
    add     $a0, $t1, $a0
    addiu   $sp, $sp, 4
    lw      $t1, 4($sp)
    sw      $a0, int_slot($t1)
    move    $a0 $t1
    addiu   $sp, $sp, 4
    lw      $a0, int_slot($a0)
    lw      $t1, 4($sp)
    add     $a0, $t1, $a0
    addiu   $sp, $sp, 4
    lw      $t1, 4($sp)
    sw      $a0, int_slot($t1)
    move    $a0 $t1
    addiu   $sp, $sp, 4
    sw      $a0, 0($sp)
    addiu   $sp, $sp -4
	la	$a0 int_const18
    lw      $t1, 4($sp)
    addiu   $sp, $sp, 4
    beq     $a0, $t1 true_label46
false_label46:
	la	$a0 bool_const0
    b     end_comp46
true_label46:
	la	$a0 bool_const1
end_comp46:
    lw      $t1, bool_slot($a0)
    beq     $t1, 1, true_branch47
false_branch47:
# push arguments on the stack
	la	$a0 int_const1
    sw    $a0 0($sp)
    addiu $sp $sp -4
    move    $a0 $s0
    lw    $t1 obj_disp($a0)
    lw    $t1 88($t1)     #Blah.bail
    jalr  $t1
    b       end_if47
true_branch47:
	la	$a0 bool_const1
end_if47:
end_if45:
end_if43:
end_if41:
end_if39:
end_if37:
end_if35:
end_if33:
end_if31:
end_if29:
# push arguments on the stack
    sw    $a0 0($sp)
    addiu $sp $sp -4
	la	$a0 int_const27
    sw    $a0 0($sp)
    addiu $sp $sp -4
    move    $a0 $s0
    lw    $t1 obj_disp($a0)
    lw    $t1 96($t1)     #Blah.assert
    jalr  $t1
# push arguments on the stack
    sw    $a0 0($sp)
    addiu $sp $sp -4
	la	$a0 int_const28
    sw    $a0 0($sp)
    addiu $sp $sp -4
    move    $a0 $s0
    lw    $t1 obj_disp($a0)
    lw    $t1 96($t1)     #Blah.assert
    jalr  $t1
# push arguments on the stack
	la	$a0 int_const0
    lw      $a0, int_slot($a0)
    sw      $a0, 0($sp)
    addiu   $sp, $sp -4
	la	$a0 int_const9
    lw      $a0, int_slot($a0)
    lw      $t1, 4($sp)
    sub     $a0, $t1, $a0
    addiu   $sp, $sp, 4
    bltz    true_label48
false_label48:
	la	$a0 bool_const0
    b     end_comp48
true_label48:
	la	$a0 bool_const1
end_comp48:
    sw    $a0 0($sp)
    addiu $sp $sp -4
	la	$a0 int_const29
    sw    $a0 0($sp)
    addiu $sp $sp -4
    move    $a0 $s0
    lw    $t1 obj_disp($a0)
    lw    $t1 96($t1)     #Blah.assert
    jalr  $t1
# push arguments on the stack
    sw    $a0 0($sp)
    addiu $sp $sp -4
	la	$a0 int_const30
    sw    $a0 0($sp)
    addiu $sp $sp -4
    move    $a0 $s0
    lw    $t1 obj_disp($a0)
    lw    $t1 96($t1)     #Blah.assert
    jalr  $t1
# push arguments on the stack
	la	$a0 int_const31
    lw      $a0, int_slot($a0)
    sw      $a0, 0($sp)
    addiu   $sp, $sp -4
	la	$a0 int_const32
    lw      $a0, int_slot($a0)
    lw      $t1, 4($sp)
    sub     $a0, $t1, $a0
    addiu   $sp, $sp, 4
    blez    true_label49
false_label49:
	la	$a0 bool_const0
    b     end_comp49
true_label49:
	la	$a0 bool_const1
end_comp49:
    sw    $a0 0($sp)
    addiu $sp $sp -4
	la	$a0 int_const33
    sw    $a0 0($sp)
    addiu $sp $sp -4
    move    $a0 $s0
    lw    $t1 obj_disp($a0)
    lw    $t1 96($t1)     #Blah.assert
    jalr  $t1
# push arguments on the stack
	la	$a0 int_const31
    lw      $a0, int_slot($a0)
    sw      $a0, 0($sp)
    addiu   $sp, $sp -4
	la	$a0 int_const31
    lw      $a0, int_slot($a0)
    lw      $t1, 4($sp)
    sub     $a0, $t1, $a0
    addiu   $sp, $sp, 4
    blez    true_label50
false_label50:
	la	$a0 bool_const0
    b     end_comp50
true_label50:
	la	$a0 bool_const1
end_comp50:
    sw    $a0 0($sp)
    addiu $sp $sp -4
	la	$a0 int_const33
    sw    $a0 0($sp)
    addiu $sp $sp -4
    move    $a0 $s0
    lw    $t1 obj_disp($a0)
    lw    $t1 96($t1)     #Blah.assert
    jalr  $t1
# push arguments on the stack
	la	$a0 int_const3
# create a new int object and push it on the stack
    jal     Object.copy
    sw      $a0, 0($sp)
    addiu   $sp, $sp -4
    lw      $a0, int_slot($a0)
    sw      $a0, 0($sp)
    addiu   $sp, $sp -4
    li      $t1, -1
    mul     $a0, $t1, $a0
    addiu   $sp, $sp, 4
    lw      $t1, 4($sp)
    sw      $a0, int_slot($t1)
    move    $a0 $t1
    addiu   $sp, $sp, 4
    lw      $a0, int_slot($a0)
    sw      $a0, 0($sp)
    addiu   $sp, $sp -4
	la	$a0 int_const2
# create a new int object and push it on the stack
    jal     Object.copy
    sw      $a0, 0($sp)
    addiu   $sp, $sp -4
    lw      $a0, int_slot($a0)
    sw      $a0, 0($sp)
    addiu   $sp, $sp -4
	la	$a0 int_const3
    lw      $a0, int_slot($a0)
    lw      $t1, 4($sp)
    sub     $a0, $t1, $a0
    addiu   $sp, $sp, 4
    lw      $t1, 4($sp)
    sw      $a0, int_slot($t1)
    move    $a0 $t1
    addiu   $sp, $sp, 4
    lw      $a0, int_slot($a0)
    lw      $t1, 4($sp)
    addiu   $sp, $sp, 4
	la	$a0 int_const3
# create a new int object and push it on the stack
    jal     Object.copy
    sw      $a0, 0($sp)
    addiu   $sp, $sp -4
    lw      $a0, int_slot($a0)
    sw      $a0, 0($sp)
    addiu   $sp, $sp -4
    li      $t1, -1
    mul     $a0, $t1, $a0
    addiu   $sp, $sp, 4
    lw      $t1, 4($sp)
    sw      $a0, int_slot($t1)
    move    $a0 $t1
    addiu   $sp, $sp, 4
    sw      $a0, 0($sp)
    addiu   $sp, $sp -4
	la	$a0 int_const2
# create a new int object and push it on the stack
    jal     Object.copy
    sw      $a0, 0($sp)
    addiu   $sp, $sp -4
    lw      $a0, int_slot($a0)
    sw      $a0, 0($sp)
    addiu   $sp, $sp -4
	la	$a0 int_const3
    lw      $a0, int_slot($a0)
    lw      $t1, 4($sp)
    sub     $a0, $t1, $a0
    addiu   $sp, $sp, 4
    lw      $t1, 4($sp)
    sw      $a0, int_slot($t1)
    move    $a0 $t1
    addiu   $sp, $sp, 4
    lw      $t1, 4($sp)
    addiu   $sp, $sp, 4
    beq     $a0, $t1 true_label51
false_label51:
	la	$a0 bool_const0
    b     end_comp51
true_label51:
	la	$a0 bool_const1
end_comp51:
    sw    $a0 0($sp)
    addiu $sp $sp -4
	la	$a0 int_const34
    sw    $a0 0($sp)
    addiu $sp $sp -4
    move    $a0 $s0
    lw    $t1 obj_disp($a0)
    lw    $t1 96($t1)     #Blah.assert
    jalr  $t1
# push arguments on the stack
	la	$a0 int_const3
# create a new int object and push it on the stack
    jal     Object.copy
    sw      $a0, 0($sp)
    addiu   $sp, $sp -4
    lw      $a0, int_slot($a0)
    sw      $a0, 0($sp)
    addiu   $sp, $sp -4
    li      $t1, -1
    mul     $a0, $t1, $a0
    addiu   $sp, $sp, 4
    lw      $t1, 4($sp)
    sw      $a0, int_slot($t1)
    move    $a0 $t1
    addiu   $sp, $sp, 4
    lw      $a0, int_slot($a0)
    sw      $a0, 0($sp)
    addiu   $sp, $sp -4
	la	$a0 int_const3
    lw      $a0, int_slot($a0)
    lw      $t1, 4($sp)
    sub     $a0, $t1, $a0
    addiu   $sp, $sp, 4
    bltz    true_label52
false_label52:
	la	$a0 bool_const0
    b     end_comp52
true_label52:
	la	$a0 bool_const1
end_comp52:
    sw    $a0 0($sp)
    addiu $sp $sp -4
	la	$a0 int_const35
    sw    $a0 0($sp)
    addiu $sp $sp -4
    move    $a0 $s0
    lw    $t1 obj_disp($a0)
    lw    $t1 96($t1)     #Blah.assert
    jalr  $t1
# push arguments on the stack
	la	$a0 int_const2
# create a new int object and push it on the stack
    jal     Object.copy
    sw      $a0, 0($sp)
    addiu   $sp, $sp -4
    lw      $a0, int_slot($a0)
    sw      $a0, 0($sp)
    addiu   $sp, $sp -4
    li      $t1, -1
    mul     $a0, $t1, $a0
    addiu   $sp, $sp, 4
    lw      $t1, 4($sp)
    sw      $a0, int_slot($t1)
    move    $a0 $t1
    addiu   $sp, $sp, 4
    lw      $a0, int_slot($a0)
    sw      $a0, 0($sp)
    addiu   $sp, $sp -4
	la	$a0 int_const2
    lw      $a0, int_slot($a0)
    lw      $t1, 4($sp)
    addiu   $sp, $sp, 4
	la	$a0 int_const2
# create a new int object and push it on the stack
    jal     Object.copy
    sw      $a0, 0($sp)
    addiu   $sp, $sp -4
    lw      $a0, int_slot($a0)
    sw      $a0, 0($sp)
    addiu   $sp, $sp -4
    li      $t1, -1
    mul     $a0, $t1, $a0
    addiu   $sp, $sp, 4
    lw      $t1, 4($sp)
    sw      $a0, int_slot($t1)
    move    $a0 $t1
    addiu   $sp, $sp, 4
    sw      $a0, 0($sp)
    addiu   $sp, $sp -4
	la	$a0 int_const2
    lw      $t1, 4($sp)
    addiu   $sp, $sp, 4
    beq     $a0, $t1 true_label53
false_label53:
	la	$a0 bool_const0
    b     end_comp53
true_label53:
	la	$a0 bool_const1
end_comp53:
    sw    $a0 0($sp)
    addiu $sp $sp -4
	la	$a0 int_const36
    sw    $a0 0($sp)
    addiu $sp $sp -4
    move    $a0 $s0
    lw    $t1 obj_disp($a0)
    lw    $t1 96($t1)     #Blah.assert
    jalr  $t1
    lw  $fp 12($sp)            # restore the caller's registers
    lw  $s0 8($sp)             # etc 
    lw  $ra 4($sp)             # etc 
    addiu $sp $sp 12           # restore stack pointer 
    jr  $ra                    # and jump back
Blah.assert:
    addiu   $sp $sp -12        # push 3 items on the stack:
    sw  $fp 12($sp)            # 1. the caller's frame pointer 
    sw  $s0 8($sp)             # 2. the caller's? self object
    sw  $ra 4($sp)             # 3. the return address 
    addiu   $fp $sp 4          # set the fp to the activation record of the function
    move    $s0 $a0            # move the self object to $a0
# start coding an if statement
# FIXME: generation of object references only (very) partically done
    lw      $a0 16($s0)
    lw      $t1, bool_slot($a0)
    beq     $t1, 1, true_branch54
false_branch54:
# push arguments on the stack
	la	$a0 str_const10
    sw    $a0 0($sp)
    addiu $sp $sp -4
# FIXME: generation of object references only (very) partically done
    lw      $a0 36($s0)
    lw    $t1 obj_disp($a0)
    lw    $t1 -4($t1)     #IO.out_string
    jalr  $t1
# push arguments on the stack
# FIXME: generation of object references only (very) partically done
    lw      $a0 8($s0)
    sw    $a0 0($sp)
    addiu $sp $sp -4
# FIXME: generation of object references only (very) partically done
    lw      $a0 36($s0)
    lw    $t1 obj_disp($a0)
    lw    $t1 -4($t1)     #IO.out_int
    jalr  $t1
# push arguments on the stack
	la	$a0 str_const8
    sw    $a0 0($sp)
    addiu $sp $sp -4
# FIXME: generation of object references only (very) partically done
    lw      $a0 36($s0)
    lw    $t1 obj_disp($a0)
    lw    $t1 -4($t1)     #IO.out_string
    jalr  $t1
# push arguments on the stack
    move    $a0 $s0
    lw    $t1 obj_disp($a0)
    lw    $t1 0($t1)     #Blah.abort
    jalr  $t1
    b       end_if54
true_branch54:
	la	$a0 bool_const1
end_if54:
    lw  $fp 12($sp)            # restore the caller's registers
    lw  $s0 8($sp)             # etc 
    lw  $ra 4($sp)             # etc 
    addiu $sp $sp 12           # restore stack pointer 
    jr  $ra                    # and jump back
Blah.bigAssign:
    addiu   $sp $sp -12        # push 3 items on the stack:
    sw  $fp 12($sp)            # 1. the caller's frame pointer 
    sw  $s0 8($sp)             # 2. the caller's? self object
    sw  $ra 4($sp)             # 3. the return address 
    addiu   $fp $sp 4          # set the fp to the activation record of the function
    move    $s0 $a0            # move the self object to $a0
# no expression here
    sw  $a0 0($s0) # and store the result
    addiu   $sp, $sp -4
# no expression here
    sw  $a0 0($s0) # and store the result
    addiu   $sp, $sp -4
# no expression here
    sw  $a0 0($s0) # and store the result
    addiu   $sp, $sp -4
# push arguments on the stack
	la	$a0 str_const11
    sw    $a0 0($sp)
    addiu $sp $sp -4
# FIXME: generation of object references only (very) partically done
    lw      $a0 36($s0)
    lw    $t1 obj_disp($a0)
    lw    $t1 -4($t1)     #IO.out_string
    jalr  $t1
# push arguments on the stack
# FIXME: generation of object references only (very) partically done
    lw      $a0 8($s0)
    lw      $a0, int_slot($a0)
    sw      $a0, 0($sp)
    addiu   $sp, $sp -4
	la	$a0 int_const2
    lw      $a0, int_slot($a0)
    lw      $t1, 4($sp)
    addiu   $sp, $sp, 4
# FIXME: generation of object references only (very) partically done
    lw      $a0 8($s0)
    sw      $a0, 0($sp)
    addiu   $sp, $sp -4
	la	$a0 int_const2
    lw      $t1, 4($sp)
    addiu   $sp, $sp, 4
    beq     $a0, $t1 true_label55
false_label55:
	la	$a0 bool_const0
    b     end_comp55
true_label55:
	la	$a0 bool_const1
end_comp55:
    sw    $a0 0($sp)
    addiu $sp $sp -4
	la	$a0 int_const1
    sw    $a0 0($sp)
    addiu $sp $sp -4
    move    $a0 $s0
    lw    $t1 obj_disp($a0)
    lw    $t1 96($t1)     #Blah.assert
    jalr  $t1
# push arguments on the stack
# FIXME: generation of object references only (very) partically done
    lw      $a0 8($s0)
    lw      $a0, int_slot($a0)
    sw      $a0, 0($sp)
    addiu   $sp, $sp -4
	la	$a0 int_const2
    lw      $a0, int_slot($a0)
    lw      $t1, 4($sp)
    addiu   $sp, $sp, 4
# FIXME: generation of object references only (very) partically done
    lw      $a0 8($s0)
    sw      $a0, 0($sp)
    addiu   $sp, $sp -4
	la	$a0 int_const2
    lw      $t1, 4($sp)
    addiu   $sp, $sp, 4
    beq     $a0, $t1 true_label56
false_label56:
	la	$a0 bool_const0
    b     end_comp56
true_label56:
	la	$a0 bool_const1
end_comp56:
    sw    $a0 0($sp)
    addiu $sp $sp -4
	la	$a0 int_const3
    sw    $a0 0($sp)
    addiu $sp $sp -4
    move    $a0 $s0
    lw    $t1 obj_disp($a0)
    lw    $t1 96($t1)     #Blah.assert
    jalr  $t1
# push arguments on the stack
# FIXME: generation of object references only (very) partically done
    lw      $a0 8($s0)
    lw      $a0, int_slot($a0)
    sw      $a0, 0($sp)
    addiu   $sp, $sp -4
	la	$a0 int_const2
    lw      $a0, int_slot($a0)
    lw      $t1, 4($sp)
    addiu   $sp, $sp, 4
# FIXME: generation of object references only (very) partically done
    lw      $a0 8($s0)
    sw      $a0, 0($sp)
    addiu   $sp, $sp -4
	la	$a0 int_const2
    lw      $t1, 4($sp)
    addiu   $sp, $sp, 4
    beq     $a0, $t1 true_label57
false_label57:
	la	$a0 bool_const0
    b     end_comp57
true_label57:
	la	$a0 bool_const1
end_comp57:
    sw    $a0 0($sp)
    addiu $sp $sp -4
	la	$a0 int_const0
    sw    $a0 0($sp)
    addiu $sp $sp -4
    move    $a0 $s0
    lw    $t1 obj_disp($a0)
    lw    $t1 96($t1)     #Blah.assert
    jalr  $t1
	la	$a0 int_const1
	la	$a0 int_const3
	la	$a0 int_const0
# push arguments on the stack
# FIXME: generation of object references only (very) partically done
    lw      $a0 8($s0)
    lw      $a0, int_slot($a0)
    sw      $a0, 0($sp)
    addiu   $sp, $sp -4
	la	$a0 int_const1
    lw      $a0, int_slot($a0)
    lw      $t1, 4($sp)
    addiu   $sp, $sp, 4
# FIXME: generation of object references only (very) partically done
    lw      $a0 8($s0)
    sw      $a0, 0($sp)
    addiu   $sp, $sp -4
	la	$a0 int_const1
    lw      $t1, 4($sp)
    addiu   $sp, $sp, 4
    beq     $a0, $t1 true_label58
false_label58:
	la	$a0 bool_const0
    b     end_comp58
true_label58:
	la	$a0 bool_const1
end_comp58:
    sw    $a0 0($sp)
    addiu $sp $sp -4
	la	$a0 int_const9
    sw    $a0 0($sp)
    addiu $sp $sp -4
    move    $a0 $s0
    lw    $t1 obj_disp($a0)
    lw    $t1 96($t1)     #Blah.assert
    jalr  $t1
# push arguments on the stack
# FIXME: generation of object references only (very) partically done
    lw      $a0 8($s0)
    lw      $a0, int_slot($a0)
    sw      $a0, 0($sp)
    addiu   $sp, $sp -4
	la	$a0 int_const3
    lw      $a0, int_slot($a0)
    lw      $t1, 4($sp)
    addiu   $sp, $sp, 4
# FIXME: generation of object references only (very) partically done
    lw      $a0 8($s0)
    sw      $a0, 0($sp)
    addiu   $sp, $sp -4
	la	$a0 int_const3
    lw      $t1, 4($sp)
    addiu   $sp, $sp, 4
    beq     $a0, $t1 true_label59
false_label59:
	la	$a0 bool_const0
    b     end_comp59
true_label59:
	la	$a0 bool_const1
end_comp59:
    sw    $a0 0($sp)
    addiu $sp $sp -4
	la	$a0 int_const4
    sw    $a0 0($sp)
    addiu $sp $sp -4
    move    $a0 $s0
    lw    $t1 obj_disp($a0)
    lw    $t1 96($t1)     #Blah.assert
    jalr  $t1
# push arguments on the stack
# FIXME: generation of object references only (very) partically done
    lw      $a0 8($s0)
    lw      $a0, int_slot($a0)
    sw      $a0, 0($sp)
    addiu   $sp, $sp -4
	la	$a0 int_const0
    lw      $a0, int_slot($a0)
    lw      $t1, 4($sp)
    addiu   $sp, $sp, 4
# FIXME: generation of object references only (very) partically done
    lw      $a0 8($s0)
    sw      $a0, 0($sp)
    addiu   $sp, $sp -4
	la	$a0 int_const0
    lw      $t1, 4($sp)
    addiu   $sp, $sp, 4
    beq     $a0, $t1 true_label60
false_label60:
	la	$a0 bool_const0
    b     end_comp60
true_label60:
	la	$a0 bool_const1
end_comp60:
    sw    $a0 0($sp)
    addiu $sp $sp -4
	la	$a0 int_const5
    sw    $a0 0($sp)
    addiu $sp $sp -4
    move    $a0 $s0
    lw    $t1 obj_disp($a0)
    lw    $t1 96($t1)     #Blah.assert
    jalr  $t1
	la	$a0 int_const1
	la	$a0 int_const3
	la	$a0 int_const0
# push arguments on the stack
# FIXME: generation of object references only (very) partically done
    lw      $a0 8($s0)
    lw      $a0, int_slot($a0)
    sw      $a0, 0($sp)
    addiu   $sp, $sp -4
	la	$a0 int_const1
    lw      $a0, int_slot($a0)
    lw      $t1, 4($sp)
    addiu   $sp, $sp, 4
# FIXME: generation of object references only (very) partically done
    lw      $a0 8($s0)
    sw      $a0, 0($sp)
    addiu   $sp, $sp -4
	la	$a0 int_const1
    lw      $t1, 4($sp)
    addiu   $sp, $sp, 4
    beq     $a0, $t1 true_label61
false_label61:
	la	$a0 bool_const0
    b     end_comp61
true_label61:
	la	$a0 bool_const1
end_comp61:
    sw    $a0 0($sp)
    addiu $sp $sp -4
	la	$a0 int_const22
    sw    $a0 0($sp)
    addiu $sp $sp -4
    move    $a0 $s0
    lw    $t1 obj_disp($a0)
    lw    $t1 96($t1)     #Blah.assert
    jalr  $t1
# push arguments on the stack
# FIXME: generation of object references only (very) partically done
    lw      $a0 8($s0)
    lw      $a0, int_slot($a0)
    sw      $a0, 0($sp)
    addiu   $sp, $sp -4
	la	$a0 int_const3
    lw      $a0, int_slot($a0)
    lw      $t1, 4($sp)
    addiu   $sp, $sp, 4
# FIXME: generation of object references only (very) partically done
    lw      $a0 8($s0)
    sw      $a0, 0($sp)
    addiu   $sp, $sp -4
	la	$a0 int_const3
    lw      $t1, 4($sp)
    addiu   $sp, $sp, 4
    beq     $a0, $t1 true_label62
false_label62:
	la	$a0 bool_const0
    b     end_comp62
true_label62:
	la	$a0 bool_const1
end_comp62:
    sw    $a0 0($sp)
    addiu $sp $sp -4
	la	$a0 int_const24
    sw    $a0 0($sp)
    addiu $sp $sp -4
    move    $a0 $s0
    lw    $t1 obj_disp($a0)
    lw    $t1 96($t1)     #Blah.assert
    jalr  $t1
# push arguments on the stack
# FIXME: generation of object references only (very) partically done
    lw      $a0 8($s0)
    lw      $a0, int_slot($a0)
    sw      $a0, 0($sp)
    addiu   $sp, $sp -4
	la	$a0 int_const0
    lw      $a0, int_slot($a0)
    lw      $t1, 4($sp)
    addiu   $sp, $sp, 4
# FIXME: generation of object references only (very) partically done
    lw      $a0 8($s0)
    sw      $a0, 0($sp)
    addiu   $sp, $sp -4
	la	$a0 int_const0
    lw      $t1, 4($sp)
    addiu   $sp, $sp, 4
    beq     $a0, $t1 true_label63
false_label63:
	la	$a0 bool_const0
    b     end_comp63
true_label63:
	la	$a0 bool_const1
end_comp63:
    sw    $a0 0($sp)
    addiu $sp $sp -4
	la	$a0 int_const37
    sw    $a0 0($sp)
    addiu $sp $sp -4
    move    $a0 $s0
    lw    $t1 obj_disp($a0)
    lw    $t1 96($t1)     #Blah.assert
    jalr  $t1
	la	$a0 int_const5
# push arguments on the stack
# FIXME: generation of object references only (very) partically done
    lw      $a0 8($s0)
    lw      $a0, int_slot($a0)
    sw      $a0, 0($sp)
    addiu   $sp, $sp -4
	la	$a0 int_const5
    lw      $a0, int_slot($a0)
    lw      $t1, 4($sp)
    addiu   $sp, $sp, 4
# FIXME: generation of object references only (very) partically done
    lw      $a0 8($s0)
    sw      $a0, 0($sp)
    addiu   $sp, $sp -4
	la	$a0 int_const5
    lw      $t1, 4($sp)
    addiu   $sp, $sp, 4
    beq     $a0, $t1 true_label64
false_label64:
	la	$a0 bool_const0
    b     end_comp64
true_label64:
	la	$a0 bool_const1
end_comp64:
    sw    $a0 0($sp)
    addiu $sp $sp -4
	la	$a0 int_const38
    sw    $a0 0($sp)
    addiu $sp $sp -4
    move    $a0 $s0
    lw    $t1 obj_disp($a0)
    lw    $t1 96($t1)     #Blah.assert
    jalr  $t1
# push arguments on the stack
# FIXME: generation of object references only (very) partically done
    lw      $a0 8($s0)
    lw      $a0, int_slot($a0)
    sw      $a0, 0($sp)
    addiu   $sp, $sp -4
	la	$a0 int_const5
    lw      $a0, int_slot($a0)
    lw      $t1, 4($sp)
    addiu   $sp, $sp, 4
# FIXME: generation of object references only (very) partically done
    lw      $a0 8($s0)
    sw      $a0, 0($sp)
    addiu   $sp, $sp -4
	la	$a0 int_const5
    lw      $t1, 4($sp)
    addiu   $sp, $sp, 4
    beq     $a0, $t1 true_label65
false_label65:
	la	$a0 bool_const0
    b     end_comp65
true_label65:
	la	$a0 bool_const1
end_comp65:
    sw    $a0 0($sp)
    addiu $sp $sp -4
	la	$a0 int_const39
    sw    $a0 0($sp)
    addiu $sp $sp -4
    move    $a0 $s0
    lw    $t1 obj_disp($a0)
    lw    $t1 96($t1)     #Blah.assert
    jalr  $t1
# push arguments on the stack
# FIXME: generation of object references only (very) partically done
    lw      $a0 8($s0)
    lw      $a0, int_slot($a0)
    sw      $a0, 0($sp)
    addiu   $sp, $sp -4
	la	$a0 int_const1
    lw      $a0, int_slot($a0)
    lw      $t1, 4($sp)
    addiu   $sp, $sp, 4
# FIXME: generation of object references only (very) partically done
    lw      $a0 8($s0)
    sw      $a0, 0($sp)
    addiu   $sp, $sp -4
	la	$a0 int_const1
    lw      $t1, 4($sp)
    addiu   $sp, $sp, 4
    beq     $a0, $t1 true_label66
false_label66:
	la	$a0 bool_const0
    b     end_comp66
true_label66:
	la	$a0 bool_const1
end_comp66:
    sw    $a0 0($sp)
    addiu $sp $sp -4
	la	$a0 int_const40
    sw    $a0 0($sp)
    addiu $sp $sp -4
    move    $a0 $s0
    lw    $t1 obj_disp($a0)
    lw    $t1 96($t1)     #Blah.assert
    jalr  $t1
# FIXME: generation of object references only (very) partically done
    lw      $a0 8($s0)
# create a new int object and push it on the stack
    jal     Object.copy
    sw      $a0, 0($sp)
    addiu   $sp, $sp -4
    lw      $a0, int_slot($a0)
    sw      $a0, 0($sp)
    addiu   $sp, $sp -4
	la	$a0 int_const9
    lw      $a0, int_slot($a0)
    lw      $t1, 4($sp)
    add     $a0, $t1, $a0
    addiu   $sp, $sp, 4
    lw      $t1, 4($sp)
    sw      $a0, int_slot($t1)
    move    $a0 $t1
    addiu   $sp, $sp, 4
# FIXME: generation of object references only (very) partically done
    lw      $a0 8($s0)
# create a new int object and push it on the stack
    jal     Object.copy
    sw      $a0, 0($sp)
    addiu   $sp, $sp -4
    lw      $a0, int_slot($a0)
    sw      $a0, 0($sp)
    addiu   $sp, $sp -4
	la	$a0 int_const0
    lw      $a0, int_slot($a0)
    lw      $t1, 4($sp)
    sub     $a0, $t1, $a0
    addiu   $sp, $sp, 4
    lw      $t1, 4($sp)
    sw      $a0, int_slot($t1)
    move    $a0 $t1
    addiu   $sp, $sp, 4
# FIXME: generation of object references only (very) partically done
    lw      $a0 8($s0)
# create a new int object and push it on the stack
    jal     Object.copy
    sw      $a0, 0($sp)
    addiu   $sp, $sp -4
    lw      $a0, int_slot($a0)
    sw      $a0, 0($sp)
    addiu   $sp, $sp -4
# FIXME: generation of object references only (very) partically done
    lw      $a0 8($s0)
    lw      $a0, int_slot($a0)
    lw      $t1, 4($sp)
    mul     $a0, $t1, $a0
    addiu   $sp, $sp, 4
# create a new int object and push it on the stack
    jal     Object.copy
    sw      $a0, 0($sp)
    addiu   $sp, $sp -4
    lw      $a0, int_slot($a0)
    sw      $a0, 0($sp)
    addiu   $sp, $sp -4
	la	$a0 int_const22
    lw      $a0, int_slot($a0)
    lw      $t1, 4($sp)
    add     $a0, $t1, $a0
    addiu   $sp, $sp, 4
    lw      $t1, 4($sp)
    sw      $a0, int_slot($t1)
    move    $a0 $t1
    addiu   $sp, $sp, 4
# FIXME: generation of object references only (very) partically done
    lw      $a0 8($s0)
# create a new int object and push it on the stack
    jal     Object.copy
    sw      $a0, 0($sp)
    addiu   $sp, $sp -4
    lw      $a0, int_slot($a0)
    sw      $a0, 0($sp)
    addiu   $sp, $sp -4
	la	$a0 int_const1
    lw      $a0, int_slot($a0)
    lw      $t1, 4($sp)
    add     $a0, $t1, $a0
    addiu   $sp, $sp, 4
    lw      $t1, 4($sp)
    sw      $a0, int_slot($t1)
    move    $a0 $t1
    addiu   $sp, $sp, 4
# push arguments on the stack
# FIXME: generation of object references only (very) partically done
    lw      $a0 8($s0)
    lw      $a0, int_slot($a0)
    sw      $a0, 0($sp)
    addiu   $sp, $sp -4
	la	$a0 int_const11
    lw      $a0, int_slot($a0)
    lw      $t1, 4($sp)
    addiu   $sp, $sp, 4
# FIXME: generation of object references only (very) partically done
    lw      $a0 8($s0)
    sw      $a0, 0($sp)
    addiu   $sp, $sp -4
	la	$a0 int_const11
    lw      $t1, 4($sp)
    addiu   $sp, $sp, 4
    beq     $a0, $t1 true_label67
false_label67:
	la	$a0 bool_const0
    b     end_comp67
true_label67:
	la	$a0 bool_const1
end_comp67:
    sw    $a0 0($sp)
    addiu $sp $sp -4
	la	$a0 int_const41
    sw    $a0 0($sp)
    addiu $sp $sp -4
    move    $a0 $s0
    lw    $t1 obj_disp($a0)
    lw    $t1 96($t1)     #Blah.assert
    jalr  $t1
# push arguments on the stack
# FIXME: generation of object references only (very) partically done
    lw      $a0 8($s0)
    lw      $a0, int_slot($a0)
    sw      $a0, 0($sp)
    addiu   $sp, $sp -4
	la	$a0 int_const26
    lw      $a0, int_slot($a0)
    lw      $t1, 4($sp)
    addiu   $sp, $sp, 4
# FIXME: generation of object references only (very) partically done
    lw      $a0 8($s0)
    sw      $a0, 0($sp)
    addiu   $sp, $sp -4
	la	$a0 int_const26
    lw      $t1, 4($sp)
    addiu   $sp, $sp, 4
    beq     $a0, $t1 true_label68
false_label68:
	la	$a0 bool_const0
    b     end_comp68
true_label68:
	la	$a0 bool_const1
end_comp68:
    sw    $a0 0($sp)
    addiu $sp $sp -4
	la	$a0 int_const42
    sw    $a0 0($sp)
    addiu $sp $sp -4
    move    $a0 $s0
    lw    $t1 obj_disp($a0)
    lw    $t1 96($t1)     #Blah.assert
    jalr  $t1
# push arguments on the stack
# FIXME: generation of object references only (very) partically done
    lw      $a0 8($s0)
    lw      $a0, int_slot($a0)
    sw      $a0, 0($sp)
    addiu   $sp, $sp -4
	la	$a0 int_const43
    lw      $a0, int_slot($a0)
    lw      $t1, 4($sp)
    addiu   $sp, $sp, 4
# FIXME: generation of object references only (very) partically done
    lw      $a0 8($s0)
    sw      $a0, 0($sp)
    addiu   $sp, $sp -4
	la	$a0 int_const43
    lw      $t1, 4($sp)
    addiu   $sp, $sp, 4
    beq     $a0, $t1 true_label69
false_label69:
	la	$a0 bool_const0
    b     end_comp69
true_label69:
	la	$a0 bool_const1
end_comp69:
    sw    $a0 0($sp)
    addiu $sp $sp -4
	la	$a0 int_const44
    sw    $a0 0($sp)
    addiu $sp $sp -4
    move    $a0 $s0
    lw    $t1 obj_disp($a0)
    lw    $t1 96($t1)     #Blah.assert
    jalr  $t1
# FIXME: generation of object references only (very) partically done
    lw      $a0 8($s0)
# FIXME: generation of object references only (very) partically done
    lw      $a0 8($s0)
# FIXME: generation of object references only (very) partically done
    lw      $a0 8($s0)
# push arguments on the stack
# FIXME: generation of object references only (very) partically done
    lw      $a0 8($s0)
    lw      $a0, int_slot($a0)
    sw      $a0, 0($sp)
    addiu   $sp, $sp -4
	la	$a0 int_const26
    lw      $a0, int_slot($a0)
    lw      $t1, 4($sp)
    addiu   $sp, $sp, 4
# FIXME: generation of object references only (very) partically done
    lw      $a0 8($s0)
    sw      $a0, 0($sp)
    addiu   $sp, $sp -4
	la	$a0 int_const26
    lw      $t1, 4($sp)
    addiu   $sp, $sp, 4
    beq     $a0, $t1 true_label70
false_label70:
	la	$a0 bool_const0
    b     end_comp70
true_label70:
	la	$a0 bool_const1
end_comp70:
    sw    $a0 0($sp)
    addiu $sp $sp -4
	la	$a0 int_const45
    sw    $a0 0($sp)
    addiu $sp $sp -4
    move    $a0 $s0
    lw    $t1 obj_disp($a0)
    lw    $t1 96($t1)     #Blah.assert
    jalr  $t1
# push arguments on the stack
# FIXME: generation of object references only (very) partically done
    lw      $a0 8($s0)
    lw      $a0, int_slot($a0)
    sw      $a0, 0($sp)
    addiu   $sp, $sp -4
	la	$a0 int_const43
    lw      $a0, int_slot($a0)
    lw      $t1, 4($sp)
    addiu   $sp, $sp, 4
# FIXME: generation of object references only (very) partically done
    lw      $a0 8($s0)
    sw      $a0, 0($sp)
    addiu   $sp, $sp -4
	la	$a0 int_const43
    lw      $t1, 4($sp)
    addiu   $sp, $sp, 4
    beq     $a0, $t1 true_label71
false_label71:
	la	$a0 bool_const0
    b     end_comp71
true_label71:
	la	$a0 bool_const1
end_comp71:
    sw    $a0 0($sp)
    addiu $sp $sp -4
	la	$a0 int_const46
    sw    $a0 0($sp)
    addiu $sp $sp -4
    move    $a0 $s0
    lw    $t1 obj_disp($a0)
    lw    $t1 96($t1)     #Blah.assert
    jalr  $t1
# push arguments on the stack
# FIXME: generation of object references only (very) partically done
    lw      $a0 8($s0)
    lw      $a0, int_slot($a0)
    sw      $a0, 0($sp)
    addiu   $sp, $sp -4
	la	$a0 int_const26
    lw      $a0, int_slot($a0)
    lw      $t1, 4($sp)
    addiu   $sp, $sp, 4
# FIXME: generation of object references only (very) partically done
    lw      $a0 8($s0)
    sw      $a0, 0($sp)
    addiu   $sp, $sp -4
	la	$a0 int_const26
    lw      $t1, 4($sp)
    addiu   $sp, $sp, 4
    beq     $a0, $t1 true_label72
false_label72:
	la	$a0 bool_const0
    b     end_comp72
true_label72:
	la	$a0 bool_const1
end_comp72:
    sw    $a0 0($sp)
    addiu $sp $sp -4
	la	$a0 int_const47
    sw    $a0 0($sp)
    addiu $sp $sp -4
    move    $a0 $s0
    lw    $t1 obj_disp($a0)
    lw    $t1 96($t1)     #Blah.assert
    jalr  $t1
# push arguments on the stack
# FIXME: generation of object references only (very) partically done
    lw      $a0 8($s0)
# create a new int object and push it on the stack
    jal     Object.copy
    sw      $a0, 0($sp)
    addiu   $sp, $sp -4
    lw      $a0, int_slot($a0)
    sw      $a0, 0($sp)
    addiu   $sp, $sp -4
# FIXME: generation of object references only (very) partically done
    lw      $a0 8($s0)
    lw      $a0, int_slot($a0)
    lw      $t1, 4($sp)
    add     $a0, $t1, $a0
    addiu   $sp, $sp, 4
    lw      $t1, 4($sp)
    sw      $a0, int_slot($t1)
    move    $a0 $t1
    addiu   $sp, $sp, 4
    lw      $a0, int_slot($a0)
    sw      $a0, 0($sp)
    addiu   $sp, $sp -4
	la	$a0 int_const48
    lw      $a0, int_slot($a0)
    lw      $t1, 4($sp)
    addiu   $sp, $sp, 4
# FIXME: generation of object references only (very) partically done
    lw      $a0 8($s0)
# create a new int object and push it on the stack
    jal     Object.copy
    sw      $a0, 0($sp)
    addiu   $sp, $sp -4
    lw      $a0, int_slot($a0)
    sw      $a0, 0($sp)
    addiu   $sp, $sp -4
# FIXME: generation of object references only (very) partically done
    lw      $a0 8($s0)
    lw      $a0, int_slot($a0)
    lw      $t1, 4($sp)
    add     $a0, $t1, $a0
    addiu   $sp, $sp, 4
    lw      $t1, 4($sp)
    sw      $a0, int_slot($t1)
    move    $a0 $t1
    addiu   $sp, $sp, 4
    sw      $a0, 0($sp)
    addiu   $sp, $sp -4
	la	$a0 int_const48
    lw      $t1, 4($sp)
    addiu   $sp, $sp, 4
    beq     $a0, $t1 true_label73
false_label73:
	la	$a0 bool_const0
    b     end_comp73
true_label73:
	la	$a0 bool_const1
end_comp73:
    sw    $a0 0($sp)
    addiu $sp $sp -4
	la	$a0 int_const49
    sw    $a0 0($sp)
    addiu $sp $sp -4
    move    $a0 $s0
    lw    $t1 obj_disp($a0)
    lw    $t1 96($t1)     #Blah.assert
    jalr  $t1
# push arguments on the stack
# FIXME: generation of object references only (very) partically done
    lw      $a0 8($s0)
    lw      $a0, int_slot($a0)
    sw      $a0, 0($sp)
    addiu   $sp, $sp -4
	la	$a0 int_const26
    lw      $a0, int_slot($a0)
    lw      $t1, 4($sp)
    addiu   $sp, $sp, 4
# FIXME: generation of object references only (very) partically done
    lw      $a0 8($s0)
    sw      $a0, 0($sp)
    addiu   $sp, $sp -4
	la	$a0 int_const26
    lw      $t1, 4($sp)
    addiu   $sp, $sp, 4
    beq     $a0, $t1 true_label74
false_label74:
	la	$a0 bool_const0
    b     end_comp74
true_label74:
	la	$a0 bool_const1
end_comp74:
    sw    $a0 0($sp)
    addiu $sp $sp -4
	la	$a0 int_const50
    sw    $a0 0($sp)
    addiu $sp $sp -4
    move    $a0 $s0
    lw    $t1 obj_disp($a0)
    lw    $t1 96($t1)     #Blah.assert
    jalr  $t1
# push arguments on the stack
# FIXME: generation of object references only (very) partically done
    lw      $a0 8($s0)
    lw      $a0, int_slot($a0)
    sw      $a0, 0($sp)
    addiu   $sp, $sp -4
	la	$a0 int_const43
    lw      $a0, int_slot($a0)
    lw      $t1, 4($sp)
    addiu   $sp, $sp, 4
# FIXME: generation of object references only (very) partically done
    lw      $a0 8($s0)
    sw      $a0, 0($sp)
    addiu   $sp, $sp -4
	la	$a0 int_const43
    lw      $t1, 4($sp)
    addiu   $sp, $sp, 4
    beq     $a0, $t1 true_label75
false_label75:
	la	$a0 bool_const0
    b     end_comp75
true_label75:
	la	$a0 bool_const1
end_comp75:
    sw    $a0 0($sp)
    addiu $sp $sp -4
	la	$a0 int_const51
    sw    $a0 0($sp)
    addiu $sp $sp -4
    move    $a0 $s0
    lw    $t1 obj_disp($a0)
    lw    $t1 96($t1)     #Blah.assert
    jalr  $t1
    addiu   $sp, $sp, 4
    addiu   $sp, $sp, 4
    addiu   $sp, $sp, 4
    lw  $fp 12($sp)            # restore the caller's registers
    lw  $s0 8($sp)             # etc 
    lw  $ra 4($sp)             # etc 
    addiu $sp $sp 12           # restore stack pointer 
    jr  $ra                    # and jump back
Blah.setI:
    addiu   $sp $sp -12        # push 3 items on the stack:
    sw  $fp 12($sp)            # 1. the caller's frame pointer 
    sw  $s0 8($sp)             # 2. the caller's? self object
    sw  $ra 4($sp)             # 3. the return address 
    addiu   $fp $sp 4          # set the fp to the activation record of the function
    move    $s0 $a0            # move the self object to $a0
# FIXME: generation of object references only (very) partically done
    lw      $a0 8($s0)
    lw  $fp 12($sp)            # restore the caller's registers
    lw  $s0 8($sp)             # etc 
    lw  $ra 4($sp)             # etc 
    addiu $sp $sp 12           # restore stack pointer 
    jr  $ra                    # and jump back
Blah.getI:
    addiu   $sp $sp -12        # push 3 items on the stack:
    sw  $fp 12($sp)            # 1. the caller's frame pointer 
    sw  $s0 8($sp)             # 2. the caller's? self object
    sw  $ra 4($sp)             # 3. the return address 
    addiu   $fp $sp 4          # set the fp to the activation record of the function
    move    $s0 $a0            # move the self object to $a0
# FIXME: generation of object references only (very) partically done
    lw      $a0 12($s0)
    lw  $fp 12($sp)            # restore the caller's registers
    lw  $s0 8($sp)             # etc 
    lw  $ra 4($sp)             # etc 
    addiu $sp $sp 12           # restore stack pointer 
    jr  $ra                    # and jump back
Blah.bigSelf:
    addiu   $sp $sp -12        # push 3 items on the stack:
    sw  $fp 12($sp)            # 1. the caller's frame pointer 
    sw  $s0 8($sp)             # 2. the caller's? self object
    sw  $ra 4($sp)             # 3. the return address 
    addiu   $fp $sp 4          # set the fp to the activation record of the function
    move    $s0 $a0            # move the self object to $a0
# no expression here
    sw  $a0 0($s0) # and store the result
    addiu   $sp, $sp -4
    move    $a0 $s0
    sw  $a0 0($s0) # and store the result
    addiu   $sp, $sp -4
la  $a0 Blah_protObj      # get the address of the prototype
jal Object.copy                          # make a copy
jal Blah_init              # and initialize it
    sw  $a0 0($s0) # and store the result
    addiu   $sp, $sp -4
# push arguments on the stack
	la	$a0 str_const12
    sw    $a0 0($sp)
    addiu $sp $sp -4
# FIXME: generation of object references only (very) partically done
    lw      $a0 36($s0)
    lw    $t1 obj_disp($a0)
    lw    $t1 -4($t1)     #IO.out_string
    jalr  $t1
# push arguments on the stack
# FIXME: generation of object references only (very) partically done
    lw      $a0 8($s0)
    move  $t1 $a0
    beqz   $t1, void_branch76   # test for void value
notvoid_branch76:
	la	$a0 bool_const0
    b     end_isvoid76
void_branch76:
	la	$a0 bool_const1
end_isvoid76:
    sw    $a0 0($sp)
    addiu $sp $sp -4
	la	$a0 int_const52
    sw    $a0 0($sp)
    addiu $sp $sp -4
    move    $a0 $s0
    lw    $t1 obj_disp($a0)
    lw    $t1 96($t1)     #Blah.assert
    jalr  $t1
# push arguments on the stack
    sw    $a0 0($sp)
    addiu $sp $sp -4
	la	$a0 int_const53
    sw    $a0 0($sp)
    addiu $sp $sp -4
    move    $a0 $s0
    lw    $t1 obj_disp($a0)
    lw    $t1 96($t1)     #Blah.assert
    jalr  $t1
# push arguments on the stack
    sw    $a0 0($sp)
    addiu $sp $sp -4
	la	$a0 int_const54
    sw    $a0 0($sp)
    addiu $sp $sp -4
    move    $a0 $s0
    lw    $t1 obj_disp($a0)
    lw    $t1 96($t1)     #Blah.assert
    jalr  $t1
# push arguments on the stack
    sw    $a0 0($sp)
    addiu $sp $sp -4
	la	$a0 int_const55
    sw    $a0 0($sp)
    addiu $sp $sp -4
    move    $a0 $s0
    lw    $t1 obj_disp($a0)
    lw    $t1 96($t1)     #Blah.assert
    jalr  $t1
# push arguments on the stack
	la	$a0 int_const0
    sw    $a0 0($sp)
    addiu $sp $sp -4
# FIXME: generation of object references only (very) partically done
    lw      $a0 20($s0)
    lw    $t1 obj_disp($a0)
    lw    $t1 104($t1)     #Blah.setI
    jalr  $t1
# push arguments on the stack
	la	$a0 int_const9
    sw    $a0 0($sp)
    addiu $sp $sp -4
# FIXME: generation of object references only (very) partically done
    lw      $a0 32($s0)
    lw    $t1 obj_disp($a0)
    lw    $t1 104($t1)     #Blah.setI
    jalr  $t1
# push arguments on the stack
    sw    $a0 0($sp)
    addiu $sp $sp -4
	la	$a0 int_const56
    sw    $a0 0($sp)
    addiu $sp $sp -4
    move    $a0 $s0
    lw    $t1 obj_disp($a0)
    lw    $t1 96($t1)     #Blah.assert
    jalr  $t1
    move    $a0 $s0
# push arguments on the stack
# FIXME: generation of object references only (very) partically done
    lw      $a0 20($s0)
    sw      $a0, 0($sp)
    addiu   $sp, $sp -4
# FIXME: generation of object references only (very) partically done
    lw      $a0 32($s0)
    lw      $t1, 4($sp)
    addiu   $sp, $sp, 4
    beq     $a0, $t1 true_label77
false_label77:
	la	$a0 bool_const0
    b     end_comp77
true_label77:
	la	$a0 bool_const1
end_comp77:
    sw    $a0 0($sp)
    addiu $sp $sp -4
	la	$a0 int_const57
    sw    $a0 0($sp)
    addiu $sp $sp -4
    move    $a0 $s0
    lw    $t1 obj_disp($a0)
    lw    $t1 96($t1)     #Blah.assert
    jalr  $t1
# push arguments on the stack
	la	$a0 int_const4
    sw    $a0 0($sp)
    addiu $sp $sp -4
# FIXME: generation of object references only (very) partically done
    lw      $a0 20($s0)
    lw    $t1 obj_disp($a0)
    lw    $t1 104($t1)     #Blah.setI
    jalr  $t1
# push arguments on the stack
	la	$a0 int_const5
    sw    $a0 0($sp)
    addiu $sp $sp -4
# FIXME: generation of object references only (very) partically done
    lw      $a0 32($s0)
    lw    $t1 obj_disp($a0)
    lw    $t1 104($t1)     #Blah.setI
    jalr  $t1
# push arguments on the stack
# push arguments on the stack
# FIXME: generation of object references only (very) partically done
    lw      $a0 20($s0)
    lw    $t1 obj_disp($a0)
    lw    $t1 108($t1)     #Blah.getI
    jalr  $t1
    lw      $a0, int_slot($a0)
    sw      $a0, 0($sp)
    addiu   $sp, $sp -4
# push arguments on the stack
# FIXME: generation of object references only (very) partically done
    lw      $a0 32($s0)
    lw    $t1 obj_disp($a0)
    lw    $t1 108($t1)     #Blah.getI
    jalr  $t1
    lw      $a0, int_slot($a0)
    lw      $t1, 4($sp)
    addiu   $sp, $sp, 4
# push arguments on the stack
# FIXME: generation of object references only (very) partically done
    lw      $a0 20($s0)
    lw    $t1 obj_disp($a0)
    lw    $t1 108($t1)     #Blah.getI
    jalr  $t1
    sw      $a0, 0($sp)
    addiu   $sp, $sp -4
# push arguments on the stack
# FIXME: generation of object references only (very) partically done
    lw      $a0 32($s0)
    lw    $t1 obj_disp($a0)
    lw    $t1 108($t1)     #Blah.getI
    jalr  $t1
    lw      $t1, 4($sp)
    addiu   $sp, $sp, 4
    beq     $a0, $t1 true_label78
false_label78:
	la	$a0 bool_const0
    b     end_comp78
true_label78:
	la	$a0 bool_const1
end_comp78:
    sw    $a0 0($sp)
    addiu $sp $sp -4
	la	$a0 int_const58
    sw    $a0 0($sp)
    addiu $sp $sp -4
    move    $a0 $s0
    lw    $t1 obj_disp($a0)
    lw    $t1 96($t1)     #Blah.assert
    jalr  $t1
    addiu   $sp, $sp, 4
    addiu   $sp, $sp, 4
    addiu   $sp, $sp, 4
    lw  $fp 12($sp)            # restore the caller's registers
    lw  $s0 8($sp)             # etc 
    lw  $ra 4($sp)             # etc 
    addiu $sp $sp 12           # restore stack pointer 
    jr  $ra                    # and jump back
Blah.bigStrCompare:
    addiu   $sp $sp -12        # push 3 items on the stack:
    sw  $fp 12($sp)            # 1. the caller's frame pointer 
    sw  $s0 8($sp)             # 2. the caller's? self object
    sw  $ra 4($sp)             # 3. the return address 
    addiu   $fp $sp 4          # set the fp to the activation record of the function
    move    $s0 $a0            # move the self object to $a0
	la	$a0 str_const13
    sw  $a0 0($s0) # and store the result
    addiu   $sp, $sp -4
	la	$a0 str_const14
    sw  $a0 0($s0) # and store the result
    addiu   $sp, $sp -4
	la	$a0 str_const15
    sw  $a0 0($s0) # and store the result
    addiu   $sp, $sp -4
# no expression here
    sw  $a0 0($s0) # and store the result
    addiu   $sp, $sp -4
# no expression here
    sw  $a0 0($s0) # and store the result
    addiu   $sp, $sp -4
# push arguments on the stack
	la	$a0 str_const16
    sw    $a0 0($sp)
    addiu $sp $sp -4
# FIXME: generation of object references only (very) partically done
    lw      $a0 36($s0)
    lw    $t1 obj_disp($a0)
    lw    $t1 -4($t1)     #IO.out_string
    jalr  $t1
# push arguments on the stack
    sw    $a0 0($sp)
    addiu $sp $sp -4
	la	$a0 int_const59
    sw    $a0 0($sp)
    addiu $sp $sp -4
    move    $a0 $s0
    lw    $t1 obj_disp($a0)
    lw    $t1 96($t1)     #Blah.assert
    jalr  $t1
# push arguments on the stack
# FIXME: generation of object references only (very) partically done
    lw      $a0 20($s0)
    lw      $a0, str_field($a0)
    sw      $a0, 0($sp)
    addiu   $sp, $sp -4
	la	$a0 str_const13
    lw      $a0, str_field($a0)
    lw      $t1, 4($sp)
    addiu   $sp, $sp, 4
    beq     $a0, $t1 true_label79
false_label79:
	la	$a0 bool_const0
    b     end_comp79
true_label79:
	la	$a0 bool_const1
end_comp79:
    sw    $a0 0($sp)
    addiu $sp $sp -4
	la	$a0 int_const60
    sw    $a0 0($sp)
    addiu $sp $sp -4
    move    $a0 $s0
    lw    $t1 obj_disp($a0)
    lw    $t1 96($t1)     #Blah.assert
    jalr  $t1
# push arguments on the stack
# FIXME: generation of object references only (very) partically done
    lw      $a0 32($s0)
    lw      $a0, str_field($a0)
    sw      $a0, 0($sp)
    addiu   $sp, $sp -4
	la	$a0 str_const14
    lw      $a0, str_field($a0)
    lw      $t1, 4($sp)
    addiu   $sp, $sp, 4
    beq     $a0, $t1 true_label80
false_label80:
	la	$a0 bool_const0
    b     end_comp80
true_label80:
	la	$a0 bool_const1
end_comp80:
    sw    $a0 0($sp)
    addiu $sp $sp -4
	la	$a0 int_const61
    sw    $a0 0($sp)
    addiu $sp $sp -4
    move    $a0 $s0
    lw    $t1 obj_disp($a0)
    lw    $t1 96($t1)     #Blah.assert
    jalr  $t1
# push arguments on the stack
# FIXME: generation of object references only (very) partically done
    lw      $a0 8($s0)
    lw      $a0, str_field($a0)
    sw      $a0, 0($sp)
    addiu   $sp, $sp -4
# FIXME: generation of object references only (very) partically done
    lw      $a0 8($s0)
    lw      $a0, str_field($a0)
    lw      $t1, 4($sp)
    addiu   $sp, $sp, 4
    beq     $a0, $t1 true_label81
false_label81:
	la	$a0 bool_const0
    b     end_comp81
true_label81:
	la	$a0 bool_const1
end_comp81:
    sw    $a0 0($sp)
    addiu $sp $sp -4
	la	$a0 int_const62
    sw    $a0 0($sp)
    addiu $sp $sp -4
    move    $a0 $s0
    lw    $t1 obj_disp($a0)
    lw    $t1 96($t1)     #Blah.assert
    jalr  $t1
# push arguments on the stack
    sw    $a0 0($sp)
    addiu $sp $sp -4
	la	$a0 int_const63
    sw    $a0 0($sp)
    addiu $sp $sp -4
    move    $a0 $s0
    lw    $t1 obj_disp($a0)
    lw    $t1 96($t1)     #Blah.assert
    jalr  $t1
# push arguments on the stack
	la	$a0 int_const2
    sw    $a0 0($sp)
    addiu $sp $sp -4
	la	$a0 int_const0
    sw    $a0 0($sp)
    addiu $sp $sp -4
# FIXME: generation of object references only (very) partically done
    lw      $a0 8($s0)
    lw    $t1 obj_disp($a0)
    lw    $t1 -4($t1)     #String.substr
    jalr  $t1
# push arguments on the stack
	la	$a0 int_const0
    sw    $a0 0($sp)
    addiu $sp $sp -4
	la	$a0 int_const0
    sw    $a0 0($sp)
    addiu $sp $sp -4
# FIXME: generation of object references only (very) partically done
    lw      $a0 8($s0)
    lw    $t1 obj_disp($a0)
    lw    $t1 -4($t1)     #String.substr
    jalr  $t1
# push arguments on the stack
    sw    $a0 0($sp)
    addiu $sp $sp -4
	la	$a0 int_const64
    sw    $a0 0($sp)
    addiu $sp $sp -4
    move    $a0 $s0
    lw    $t1 obj_disp($a0)
    lw    $t1 96($t1)     #Blah.assert
    jalr  $t1
# push arguments on the stack
# FIXME: generation of object references only (very) partically done
    lw      $a0 8($s0)
    lw      $a0, str_field($a0)
    sw      $a0, 0($sp)
    addiu   $sp, $sp -4
# FIXME: generation of object references only (very) partically done
    lw      $a0 20($s0)
    lw      $a0, str_field($a0)
    lw      $t1, 4($sp)
    addiu   $sp, $sp, 4
    beq     $a0, $t1 true_label82
false_label82:
	la	$a0 bool_const0
    b     end_comp82
true_label82:
	la	$a0 bool_const1
end_comp82:
    sw    $a0 0($sp)
    addiu $sp $sp -4
	la	$a0 int_const65
    sw    $a0 0($sp)
    addiu $sp $sp -4
    move    $a0 $s0
    lw    $t1 obj_disp($a0)
    lw    $t1 96($t1)     #Blah.assert
    jalr  $t1
# push arguments on the stack
# FIXME: generation of object references only (very) partically done
    lw      $a0 8($s0)
    lw      $a0, str_field($a0)
    sw      $a0, 0($sp)
    addiu   $sp, $sp -4
# FIXME: generation of object references only (very) partically done
    lw      $a0 32($s0)
    lw      $a0, str_field($a0)
    lw      $t1, 4($sp)
    addiu   $sp, $sp, 4
    beq     $a0, $t1 true_label83
false_label83:
	la	$a0 bool_const0
    b     end_comp83
true_label83:
	la	$a0 bool_const1
end_comp83:
    sw    $a0 0($sp)
    addiu $sp $sp -4
	la	$a0 int_const66
    sw    $a0 0($sp)
    addiu $sp $sp -4
    move    $a0 $s0
    lw    $t1 obj_disp($a0)
    lw    $t1 96($t1)     #Blah.assert
    jalr  $t1
# push arguments on the stack
    sw    $a0 0($sp)
    addiu $sp $sp -4
	la	$a0 int_const67
    sw    $a0 0($sp)
    addiu $sp $sp -4
    move    $a0 $s0
    lw    $t1 obj_disp($a0)
    lw    $t1 96($t1)     #Blah.assert
    jalr  $t1
# push arguments on the stack
# push arguments on the stack
	la	$a0 int_const1
    sw    $a0 0($sp)
    addiu $sp $sp -4
	la	$a0 int_const1
    sw    $a0 0($sp)
    addiu $sp $sp -4
# FIXME: generation of object references only (very) partically done
    lw      $a0 20($s0)
    lw    $t1 obj_disp($a0)
    lw    $t1 -4($t1)     #String.substr
    jalr  $t1
    lw      $a0, str_field($a0)
    sw      $a0, 0($sp)
    addiu   $sp, $sp -4
# push arguments on the stack
	la	$a0 int_const3
    sw    $a0 0($sp)
    addiu $sp $sp -4
	la	$a0 int_const1
    sw    $a0 0($sp)
    addiu $sp $sp -4
# FIXME: generation of object references only (very) partically done
    lw      $a0 20($s0)
    lw    $t1 obj_disp($a0)
    lw    $t1 -4($t1)     #String.substr
    jalr  $t1
    lw      $a0, str_field($a0)
    lw      $t1, 4($sp)
    addiu   $sp, $sp, 4
    beq     $a0, $t1 true_label84
false_label84:
	la	$a0 bool_const0
    b     end_comp84
true_label84:
	la	$a0 bool_const1
end_comp84:
    sw    $a0 0($sp)
    addiu $sp $sp -4
	la	$a0 int_const68
    sw    $a0 0($sp)
    addiu $sp $sp -4
    move    $a0 $s0
    lw    $t1 obj_disp($a0)
    lw    $t1 96($t1)     #Blah.assert
    jalr  $t1
    addiu   $sp, $sp, 4
    addiu   $sp, $sp, 4
    addiu   $sp, $sp, 4
    addiu   $sp, $sp, 4
    addiu   $sp, $sp, 4
    lw  $fp 12($sp)            # restore the caller's registers
    lw  $s0 8($sp)             # etc 
    lw  $ra 4($sp)             # etc 
    addiu $sp $sp 12           # restore stack pointer 
    jr  $ra                    # and jump back
Blah.bigCase:
    addiu   $sp $sp -12        # push 3 items on the stack:
    sw  $fp 12($sp)            # 1. the caller's frame pointer 
    sw  $s0 8($sp)             # 2. the caller's? self object
    sw  $ra 4($sp)             # 3. the return address 
    addiu   $fp $sp 4          # set the fp to the activation record of the function
    move    $s0 $a0            # move the self object to $a0
la  $a0 A_protObj      # get the address of the prototype
jal Object.copy                          # make a copy
jal A_init              # and initialize it
    sw  $a0 0($s0) # and store the result
    addiu   $sp, $sp -4
la  $a0 B_protObj      # get the address of the prototype
jal Object.copy                          # make a copy
jal B_init              # and initialize it
    sw  $a0 0($s0) # and store the result
    addiu   $sp, $sp -4
la  $a0 C_protObj      # get the address of the prototype
jal Object.copy                          # make a copy
jal C_init              # and initialize it
    sw  $a0 0($s0) # and store the result
    addiu   $sp, $sp -4
la  $a0 P_protObj      # get the address of the prototype
jal Object.copy                          # make a copy
jal P_init              # and initialize it
    sw  $a0 0($s0) # and store the result
    addiu   $sp, $sp -4
la  $a0 C1_protObj      # get the address of the prototype
jal Object.copy                          # make a copy
jal C1_init              # and initialize it
    sw  $a0 0($s0) # and store the result
    addiu   $sp, $sp -4
la  $a0 C2_protObj      # get the address of the prototype
jal Object.copy                          # make a copy
jal C2_init              # and initialize it
    sw  $a0 0($s0) # and store the result
    addiu   $sp, $sp -4
# no expression here
    sw  $a0 0($s0) # and store the result
    addiu   $sp, $sp -4
# no expression here
    sw  $a0 0($s0) # and store the result
    addiu   $sp, $sp -4
# push arguments on the stack
	la	$a0 str_const17
    sw    $a0 0($sp)
    addiu $sp $sp -4
# FIXME: generation of object references only (very) partically done
    lw      $a0 36($s0)
    lw    $t1 obj_disp($a0)
    lw    $t1 -4($t1)     #IO.out_string
    jalr  $t1
# FIXME: generation of object references only (very) partically done
    lw      $a0 8($s0)
# push arguments on the stack
# FIXME: generation of object references only (very) partically done
    lw      $a0 12($s0)
    lw      $a0, int_slot($a0)
    sw      $a0, 0($sp)
    addiu   $sp, $sp -4
	la	$a0 int_const3
    lw      $a0, int_slot($a0)
    lw      $t1, 4($sp)
    addiu   $sp, $sp, 4
# FIXME: generation of object references only (very) partically done
    lw      $a0 12($s0)
    sw      $a0, 0($sp)
    addiu   $sp, $sp -4
	la	$a0 int_const3
    lw      $t1, 4($sp)
    addiu   $sp, $sp, 4
    beq     $a0, $t1 true_label85
false_label85:
	la	$a0 bool_const0
    b     end_comp85
true_label85:
	la	$a0 bool_const1
end_comp85:
    sw    $a0 0($sp)
    addiu $sp $sp -4
	la	$a0 int_const69
    sw    $a0 0($sp)
    addiu $sp $sp -4
    move    $a0 $s0
    lw    $t1 obj_disp($a0)
    lw    $t1 96($t1)     #Blah.assert
    jalr  $t1
# FIXME: generation of object references only (very) partically done
    lw      $a0 8($s0)
# push arguments on the stack
# FIXME: generation of object references only (very) partically done
    lw      $a0 12($s0)
    lw      $a0, int_slot($a0)
    sw      $a0, 0($sp)
    addiu   $sp, $sp -4
	la	$a0 int_const3
    lw      $a0, int_slot($a0)
    lw      $t1, 4($sp)
    addiu   $sp, $sp, 4
# FIXME: generation of object references only (very) partically done
    lw      $a0 12($s0)
    sw      $a0, 0($sp)
    addiu   $sp, $sp -4
	la	$a0 int_const3
    lw      $t1, 4($sp)
    addiu   $sp, $sp, 4
    beq     $a0, $t1 true_label86
false_label86:
	la	$a0 bool_const0
    b     end_comp86
true_label86:
	la	$a0 bool_const1
end_comp86:
    sw    $a0 0($sp)
    addiu $sp $sp -4
	la	$a0 int_const70
    sw    $a0 0($sp)
    addiu $sp $sp -4
    move    $a0 $s0
    lw    $t1 obj_disp($a0)
    lw    $t1 96($t1)     #Blah.assert
    jalr  $t1
# FIXME: generation of object references only (very) partically done
    lw      $a0 8($s0)
# push arguments on the stack
# FIXME: generation of object references only (very) partically done
    lw      $a0 12($s0)
    lw      $a0, int_slot($a0)
    sw      $a0, 0($sp)
    addiu   $sp, $sp -4
	la	$a0 int_const0
    lw      $a0, int_slot($a0)
    lw      $t1, 4($sp)
    addiu   $sp, $sp, 4
# FIXME: generation of object references only (very) partically done
    lw      $a0 12($s0)
    sw      $a0, 0($sp)
    addiu   $sp, $sp -4
	la	$a0 int_const0
    lw      $t1, 4($sp)
    addiu   $sp, $sp, 4
    beq     $a0, $t1 true_label87
false_label87:
	la	$a0 bool_const0
    b     end_comp87
true_label87:
	la	$a0 bool_const1
end_comp87:
    sw    $a0 0($sp)
    addiu $sp $sp -4
	la	$a0 int_const71
    sw    $a0 0($sp)
    addiu $sp $sp -4
    move    $a0 $s0
    lw    $t1 obj_disp($a0)
    lw    $t1 96($t1)     #Blah.assert
    jalr  $t1
# FIXME: generation of object references only (very) partically done
    lw      $a0 8($s0)
# push arguments on the stack
# FIXME: generation of object references only (very) partically done
    lw      $a0 12($s0)
    lw      $a0, int_slot($a0)
    sw      $a0, 0($sp)
    addiu   $sp, $sp -4
	la	$a0 int_const1
    lw      $a0, int_slot($a0)
    lw      $t1, 4($sp)
    addiu   $sp, $sp, 4
# FIXME: generation of object references only (very) partically done
    lw      $a0 12($s0)
    sw      $a0, 0($sp)
    addiu   $sp, $sp -4
	la	$a0 int_const1
    lw      $t1, 4($sp)
    addiu   $sp, $sp, 4
    beq     $a0, $t1 true_label88
false_label88:
	la	$a0 bool_const0
    b     end_comp88
true_label88:
	la	$a0 bool_const1
end_comp88:
    sw    $a0 0($sp)
    addiu $sp $sp -4
	la	$a0 int_const72
    sw    $a0 0($sp)
    addiu $sp $sp -4
    move    $a0 $s0
    lw    $t1 obj_disp($a0)
    lw    $t1 96($t1)     #Blah.assert
    jalr  $t1
# FIXME: generation of object references only (very) partically done
    lw      $a0 16($s0)
# push arguments on the stack
# FIXME: generation of object references only (very) partically done
    lw      $a0 12($s0)
    lw      $a0, int_slot($a0)
    sw      $a0, 0($sp)
    addiu   $sp, $sp -4
	la	$a0 int_const3
    lw      $a0, int_slot($a0)
    lw      $t1, 4($sp)
    addiu   $sp, $sp, 4
# FIXME: generation of object references only (very) partically done
    lw      $a0 12($s0)
    sw      $a0, 0($sp)
    addiu   $sp, $sp -4
	la	$a0 int_const3
    lw      $t1, 4($sp)
    addiu   $sp, $sp, 4
    beq     $a0, $t1 true_label89
false_label89:
	la	$a0 bool_const0
    b     end_comp89
true_label89:
	la	$a0 bool_const1
end_comp89:
    sw    $a0 0($sp)
    addiu $sp $sp -4
	la	$a0 int_const73
    sw    $a0 0($sp)
    addiu $sp $sp -4
    move    $a0 $s0
    lw    $t1 obj_disp($a0)
    lw    $t1 96($t1)     #Blah.assert
    jalr  $t1
# FIXME: generation of object references only (very) partically done
    lw      $a0 28($s0)
# push arguments on the stack
# FIXME: generation of object references only (very) partically done
    lw      $a0 12($s0)
    lw      $a0, int_slot($a0)
    sw      $a0, 0($sp)
    addiu   $sp, $sp -4
	la	$a0 int_const0
    lw      $a0, int_slot($a0)
    lw      $t1, 4($sp)
    addiu   $sp, $sp, 4
# FIXME: generation of object references only (very) partically done
    lw      $a0 12($s0)
    sw      $a0, 0($sp)
    addiu   $sp, $sp -4
	la	$a0 int_const0
    lw      $t1, 4($sp)
    addiu   $sp, $sp, 4
    beq     $a0, $t1 true_label90
false_label90:
	la	$a0 bool_const0
    b     end_comp90
true_label90:
	la	$a0 bool_const1
end_comp90:
    sw    $a0 0($sp)
    addiu $sp $sp -4
	la	$a0 int_const74
    sw    $a0 0($sp)
    addiu $sp $sp -4
    move    $a0 $s0
    lw    $t1 obj_disp($a0)
    lw    $t1 96($t1)     #Blah.assert
    jalr  $t1
# FIXME: generation of object references only (very) partically done
    lw      $a0 8($s0)
# push arguments on the stack
# FIXME: generation of object references only (very) partically done
    lw      $a0 12($s0)
    lw      $a0, int_slot($a0)
    sw      $a0, 0($sp)
    addiu   $sp, $sp -4
	la	$a0 int_const9
    lw      $a0, int_slot($a0)
    lw      $t1, 4($sp)
    addiu   $sp, $sp, 4
# FIXME: generation of object references only (very) partically done
    lw      $a0 12($s0)
    sw      $a0, 0($sp)
    addiu   $sp, $sp -4
	la	$a0 int_const9
    lw      $t1, 4($sp)
    addiu   $sp, $sp, 4
    beq     $a0, $t1 true_label91
false_label91:
	la	$a0 bool_const0
    b     end_comp91
true_label91:
	la	$a0 bool_const1
end_comp91:
    sw    $a0 0($sp)
    addiu $sp $sp -4
	la	$a0 int_const75
    sw    $a0 0($sp)
    addiu $sp $sp -4
    move    $a0 $s0
    lw    $t1 obj_disp($a0)
    lw    $t1 96($t1)     #Blah.assert
    jalr  $t1
# FIXME: generation of object references only (very) partically done
    lw      $a0 16($s0)
# push arguments on the stack
# FIXME: generation of object references only (very) partically done
    lw      $a0 12($s0)
    lw      $a0, int_slot($a0)
    sw      $a0, 0($sp)
    addiu   $sp, $sp -4
	la	$a0 int_const9
    lw      $a0, int_slot($a0)
    lw      $t1, 4($sp)
    addiu   $sp, $sp, 4
# FIXME: generation of object references only (very) partically done
    lw      $a0 12($s0)
    sw      $a0, 0($sp)
    addiu   $sp, $sp -4
	la	$a0 int_const9
    lw      $t1, 4($sp)
    addiu   $sp, $sp, 4
    beq     $a0, $t1 true_label92
false_label92:
	la	$a0 bool_const0
    b     end_comp92
true_label92:
	la	$a0 bool_const1
end_comp92:
    sw    $a0 0($sp)
    addiu $sp $sp -4
	la	$a0 int_const76
    sw    $a0 0($sp)
    addiu $sp $sp -4
    move    $a0 $s0
    lw    $t1 obj_disp($a0)
    lw    $t1 96($t1)     #Blah.assert
    jalr  $t1
	la	$a0 bool_const1
# push arguments on the stack
# FIXME: generation of object references only (very) partically done
    lw      $a0 12($s0)
    lw      $a0, int_slot($a0)
    sw      $a0, 0($sp)
    addiu   $sp, $sp -4
	la	$a0 int_const1
    lw      $a0, int_slot($a0)
    lw      $t1, 4($sp)
    addiu   $sp, $sp, 4
# FIXME: generation of object references only (very) partically done
    lw      $a0 12($s0)
    sw      $a0, 0($sp)
    addiu   $sp, $sp -4
	la	$a0 int_const1
    lw      $t1, 4($sp)
    addiu   $sp, $sp, 4
    beq     $a0, $t1 true_label93
false_label93:
	la	$a0 bool_const0
    b     end_comp93
true_label93:
	la	$a0 bool_const1
end_comp93:
    sw    $a0 0($sp)
    addiu $sp $sp -4
	la	$a0 int_const77
    sw    $a0 0($sp)
    addiu $sp $sp -4
    move    $a0 $s0
    lw    $t1 obj_disp($a0)
    lw    $t1 96($t1)     #Blah.assert
    jalr  $t1
	la	$a0 int_const3
# push arguments on the stack
# FIXME: generation of object references only (very) partically done
    lw      $a0 12($s0)
    lw      $a0, int_slot($a0)
    sw      $a0, 0($sp)
    addiu   $sp, $sp -4
	la	$a0 int_const9
    lw      $a0, int_slot($a0)
    lw      $t1, 4($sp)
    addiu   $sp, $sp, 4
# FIXME: generation of object references only (very) partically done
    lw      $a0 12($s0)
    sw      $a0, 0($sp)
    addiu   $sp, $sp -4
	la	$a0 int_const9
    lw      $t1, 4($sp)
    addiu   $sp, $sp, 4
    beq     $a0, $t1 true_label94
false_label94:
	la	$a0 bool_const0
    b     end_comp94
true_label94:
	la	$a0 bool_const1
end_comp94:
    sw    $a0 0($sp)
    addiu $sp $sp -4
	la	$a0 int_const78
    sw    $a0 0($sp)
    addiu $sp $sp -4
    move    $a0 $s0
    lw    $t1 obj_disp($a0)
    lw    $t1 96($t1)     #Blah.assert
    jalr  $t1
	la	$a0 str_const15
# push arguments on the stack
# FIXME: generation of object references only (very) partically done
    lw      $a0 12($s0)
    lw      $a0, int_slot($a0)
    sw      $a0, 0($sp)
    addiu   $sp, $sp -4
	la	$a0 int_const3
    lw      $a0, int_slot($a0)
    lw      $t1, 4($sp)
    addiu   $sp, $sp, 4
# FIXME: generation of object references only (very) partically done
    lw      $a0 12($s0)
    sw      $a0, 0($sp)
    addiu   $sp, $sp -4
	la	$a0 int_const3
    lw      $t1, 4($sp)
    addiu   $sp, $sp, 4
    beq     $a0, $t1 true_label95
false_label95:
	la	$a0 bool_const0
    b     end_comp95
true_label95:
	la	$a0 bool_const1
end_comp95:
    sw    $a0 0($sp)
    addiu $sp $sp -4
	la	$a0 int_const79
    sw    $a0 0($sp)
    addiu $sp $sp -4
    move    $a0 $s0
    lw    $t1 obj_disp($a0)
    lw    $t1 96($t1)     #Blah.assert
    jalr  $t1
    addiu   $sp, $sp, 4
    addiu   $sp, $sp, 4
    addiu   $sp, $sp, 4
    addiu   $sp, $sp, 4
    addiu   $sp, $sp, 4
    addiu   $sp, $sp, 4
    addiu   $sp, $sp, 4
    addiu   $sp, $sp, 4
    lw  $fp 12($sp)            # restore the caller's registers
    lw  $s0 8($sp)             # etc 
    lw  $ra 4($sp)             # etc 
    addiu $sp $sp 12           # restore stack pointer 
    jr  $ra                    # and jump back
Blah.bigAttrAccess:
    addiu   $sp $sp -12        # push 3 items on the stack:
    sw  $fp 12($sp)            # 1. the caller's frame pointer 
    sw  $s0 8($sp)             # 2. the caller's? self object
    sw  $ra 4($sp)             # 3. the return address 
    addiu   $fp $sp 4          # set the fp to the activation record of the function
    move    $s0 $a0            # move the self object to $a0
la  $a0 C2_protObj      # get the address of the prototype
jal Object.copy                          # make a copy
jal C2_init              # and initialize it
    sw  $a0 0($s0) # and store the result
    addiu   $sp, $sp -4
# push arguments on the stack
	la	$a0 str_const18
    sw    $a0 0($sp)
    addiu $sp $sp -4
# FIXME: generation of object references only (very) partically done
    lw      $a0 36($s0)
    lw    $t1 obj_disp($a0)
    lw    $t1 -4($t1)     #IO.out_string
    jalr  $t1
# push arguments on the stack
# push arguments on the stack
# FIXME: generation of object references only (very) partically done
    lw      $a0 28($s0)
    lw    $t1 obj_disp($a0)
    lw    $t1 -4($t1)     #C2.getX
    jalr  $t1
    lw      $a0, int_slot($a0)
    sw      $a0, 0($sp)
    addiu   $sp, $sp -4
	la	$a0 int_const0
    lw      $a0, int_slot($a0)
    lw      $t1, 4($sp)
    addiu   $sp, $sp, 4
# push arguments on the stack
# FIXME: generation of object references only (very) partically done
    lw      $a0 28($s0)
    lw    $t1 obj_disp($a0)
    lw    $t1 -4($t1)     #C2.getX
    jalr  $t1
    sw      $a0, 0($sp)
    addiu   $sp, $sp -4
	la	$a0 int_const0
    lw      $t1, 4($sp)
    addiu   $sp, $sp, 4
    beq     $a0, $t1 true_label96
false_label96:
	la	$a0 bool_const0
    b     end_comp96
true_label96:
	la	$a0 bool_const1
end_comp96:
    sw    $a0 0($sp)
    addiu $sp $sp -4
	la	$a0 int_const80
    sw    $a0 0($sp)
    addiu $sp $sp -4
    move    $a0 $s0
    lw    $t1 obj_disp($a0)
    lw    $t1 96($t1)     #Blah.assert
    jalr  $t1
# push arguments on the stack
	la	$a0 int_const4
    sw    $a0 0($sp)
    addiu $sp $sp -4
# FIXME: generation of object references only (very) partically done
    lw      $a0 28($s0)
    lw    $t1 obj_disp($a0)
    lw    $t1 -4($t1)     #C2.setX
    jalr  $t1
# push arguments on the stack
# push arguments on the stack
# FIXME: generation of object references only (very) partically done
    lw      $a0 28($s0)
    lw    $t1 obj_disp($a0)
    lw    $t1 -4($t1)     #C2.getX
    jalr  $t1
    lw      $a0, int_slot($a0)
    sw      $a0, 0($sp)
    addiu   $sp, $sp -4
	la	$a0 int_const4
    lw      $a0, int_slot($a0)
    lw      $t1, 4($sp)
    addiu   $sp, $sp, 4
# push arguments on the stack
# FIXME: generation of object references only (very) partically done
    lw      $a0 28($s0)
    lw    $t1 obj_disp($a0)
    lw    $t1 -4($t1)     #C2.getX
    jalr  $t1
    sw      $a0, 0($sp)
    addiu   $sp, $sp -4
	la	$a0 int_const4
    lw      $t1, 4($sp)
    addiu   $sp, $sp, 4
    beq     $a0, $t1 true_label97
false_label97:
	la	$a0 bool_const0
    b     end_comp97
true_label97:
	la	$a0 bool_const1
end_comp97:
    sw    $a0 0($sp)
    addiu $sp $sp -4
	la	$a0 int_const81
    sw    $a0 0($sp)
    addiu $sp $sp -4
    move    $a0 $s0
    lw    $t1 obj_disp($a0)
    lw    $t1 96($t1)     #Blah.assert
    jalr  $t1
    addiu   $sp, $sp, 4
    lw  $fp 12($sp)            # restore the caller's registers
    lw  $s0 8($sp)             # etc 
    lw  $ra 4($sp)             # etc 
    addiu $sp $sp 12           # restore stack pointer 
    jr  $ra                    # and jump back
C2_init:
    addiu   $sp $sp -12 # start as a normal function definition
    sw  $fp 12($sp)
    sw  $s0 8($sp)
    sw  $ra 4($sp)
    addiu   $fp $sp 4
    move    $s0 $a0     # end of the function preambule
    jal P_init    # initialize the parent class
    move $a0 $s0
    lw  $fp 12($sp)
    lw  $s0 8($sp)
    lw  $ra 4($sp)
    addiu   $sp $sp 12
    jr  $ra
C2.getX:
    addiu   $sp $sp -12        # push 3 items on the stack:
    sw  $fp 12($sp)            # 1. the caller's frame pointer 
    sw  $s0 8($sp)             # 2. the caller's? self object
    sw  $ra 4($sp)             # 3. the return address 
    addiu   $fp $sp 4          # set the fp to the activation record of the function
    move    $s0 $a0            # move the self object to $a0
# FIXME: generation of object references only (very) partically done
    lw      $a0 12($s0)
    lw  $fp 12($sp)            # restore the caller's registers
    lw  $s0 8($sp)             # etc 
    lw  $ra 4($sp)             # etc 
    addiu $sp $sp 12           # restore stack pointer 
    jr  $ra                    # and jump back
C2.setX:
    addiu   $sp $sp -12        # push 3 items on the stack:
    sw  $fp 12($sp)            # 1. the caller's frame pointer 
    sw  $s0 8($sp)             # 2. the caller's? self object
    sw  $ra 4($sp)             # 3. the return address 
    addiu   $fp $sp 4          # set the fp to the activation record of the function
    move    $s0 $a0            # move the self object to $a0
# FIXME: generation of object references only (very) partically done
    lw      $a0 8($s0)
    lw  $fp 12($sp)            # restore the caller's registers
    lw  $s0 8($sp)             # etc 
    lw  $ra 4($sp)             # etc 
    addiu $sp $sp 12           # restore stack pointer 
    jr  $ra                    # and jump back
C1_init:
    addiu   $sp $sp -12 # start as a normal function definition
    sw  $fp 12($sp)
    sw  $s0 8($sp)
    sw  $ra 4($sp)
    addiu   $fp $sp 4
    move    $s0 $a0     # end of the function preambule
    jal P_init    # initialize the parent class
    move $a0 $s0
    lw  $fp 12($sp)
    lw  $s0 8($sp)
    lw  $ra 4($sp)
    addiu   $sp $sp 12
    jr  $ra
P_init:
    addiu   $sp $sp -12 # start as a normal function definition
    sw  $fp 12($sp)
    sw  $s0 8($sp)
    sw  $ra 4($sp)
    addiu   $fp $sp 4
    move    $s0 $a0     # end of the function preambule
    jal Object_init    # initialize the parent class
# initializer type15int_const_class
	la	$a0 int_const0
    sw  $a0 12($s0) # and store the result
    move $a0 $s0
    lw  $fp 12($sp)
    lw  $s0 8($sp)
    lw  $ra 4($sp)
    addiu   $sp $sp 12
    jr  $ra
String_init:
    addiu   $sp $sp -12 # start as a normal function definition
    sw  $fp 12($sp)
    sw  $s0 8($sp)
    sw  $ra 4($sp)
    addiu   $fp $sp 4
    move    $s0 $a0     # end of the function preambule
    jal Object_init    # initialize the parent class
    move $a0 $s0
    lw  $fp 12($sp)
    lw  $s0 8($sp)
    lw  $ra 4($sp)
    addiu   $sp $sp 12
    jr  $ra
Bool_init:
    addiu   $sp $sp -12 # start as a normal function definition
    sw  $fp 12($sp)
    sw  $s0 8($sp)
    sw  $ra 4($sp)
    addiu   $fp $sp 4
    move    $s0 $a0     # end of the function preambule
    jal Object_init    # initialize the parent class
    move $a0 $s0
    lw  $fp 12($sp)
    lw  $s0 8($sp)
    lw  $ra 4($sp)
    addiu   $sp $sp 12
    jr  $ra
Int_init:
    addiu   $sp $sp -12 # start as a normal function definition
    sw  $fp 12($sp)
    sw  $s0 8($sp)
    sw  $ra 4($sp)
    addiu   $fp $sp 4
    move    $s0 $a0     # end of the function preambule
    jal Object_init    # initialize the parent class
    move $a0 $s0
    lw  $fp 12($sp)
    lw  $s0 8($sp)
    lw  $ra 4($sp)
    addiu   $sp $sp 12
    jr  $ra
IO_init:
    addiu   $sp $sp -12 # start as a normal function definition
    sw  $fp 12($sp)
    sw  $s0 8($sp)
    sw  $ra 4($sp)
    addiu   $fp $sp 4
    move    $s0 $a0     # end of the function preambule
    jal Object_init    # initialize the parent class
    move $a0 $s0
    lw  $fp 12($sp)
    lw  $s0 8($sp)
    lw  $ra 4($sp)
    addiu   $sp $sp 12
    jr  $ra
Object_init:
    addiu   $sp $sp -12 # start as a normal function definition
    sw  $fp 12($sp)
    sw  $s0 8($sp)
    sw  $ra 4($sp)
    addiu   $fp $sp 4
    move    $s0 $a0     # end of the function preambule
    move $a0 $s0
    lw  $fp 12($sp)
    lw  $s0 8($sp)
    lw  $ra 4($sp)
    addiu   $sp $sp 12
    jr  $ra

# end of generated code
