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
newline:
.asciiz "\n"
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
	.word	7
_bool_tag:
	.word	6
_string_tag:
	.word	5
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
str_const16:
	.word	5
	.word	5
	.word	String_dispTab
	.word	int_const2
	.byte	0	
	.align	2
	.word	-1
str_const15:
	.word	5
	.word	6
	.word	String_dispTab
	.word	int_const3
	.ascii	"Main"
	.byte	0	
	.align	2
	.word	-1
str_const14:
	.word	5
	.word	6
	.word	String_dispTab
	.word	int_const3
	.ascii	"Bazz"
	.byte	0	
	.align	2
	.word	-1
str_const13:
	.word	5
	.word	6
	.word	String_dispTab
	.word	int_const3
	.ascii	"Razz"
	.byte	0	
	.align	2
	.word	-1
str_const12:
	.word	5
	.word	5
	.word	String_dispTab
	.word	int_const4
	.ascii	"Bar"
	.byte	0	
	.align	2
	.word	-1
str_const11:
	.word	5
	.word	5
	.word	String_dispTab
	.word	int_const4
	.ascii	"Foo"
	.byte	0	
	.align	2
	.word	-1
str_const10:
	.word	5
	.word	6
	.word	String_dispTab
	.word	int_const5
	.ascii	"String"
	.byte	0	
	.align	2
	.word	-1
str_const9:
	.word	5
	.word	6
	.word	String_dispTab
	.word	int_const3
	.ascii	"Bool"
	.byte	0	
	.align	2
	.word	-1
str_const8:
	.word	5
	.word	5
	.word	String_dispTab
	.word	int_const4
	.ascii	"Int"
	.byte	0	
	.align	2
	.word	-1
str_const7:
	.word	5
	.word	5
	.word	String_dispTab
	.word	int_const0
	.ascii	"IO"
	.byte	0	
	.align	2
	.word	-1
str_const6:
	.word	5
	.word	6
	.word	String_dispTab
	.word	int_const5
	.ascii	"Object"
	.byte	0	
	.align	2
	.word	-1
str_const5:
	.word	5
	.word	7
	.word	String_dispTab
	.word	int_const6
	.ascii	"_prim_slot"
	.byte	0	
	.align	2
	.word	-1
str_const4:
	.word	5
	.word	7
	.word	String_dispTab
	.word	int_const7
	.ascii	"SELF_TYPE"
	.byte	0	
	.align	2
	.word	-1
str_const3:
	.word	5
	.word	7
	.word	String_dispTab
	.word	int_const7
	.ascii	"_no_class"
	.byte	0	
	.align	2
	.word	-1
str_const2:
	.word	5
	.word	8
	.word	String_dispTab
	.word	int_const8
	.ascii	"<basic class>"
	.byte	0	
	.align	2
	.word	-1
str_const1:
	.word	5
	.word	7
	.word	String_dispTab
	.word	int_const6
	.ascii	"do nothing"
	.byte	0	
	.align	2
	.word	-1
str_const0:
	.word	5
	.word	8
	.word	String_dispTab
	.word	int_const8
	.ascii	"hairyscary.cl"
	.byte	0	
	.align	2
	.word	-1
int_const8:
	.word	7
	.word	4
	.word	Int_dispTab
	.word	13
	.word	-1
int_const7:
	.word	7
	.word	4
	.word	Int_dispTab
	.word	9
	.word	-1
int_const6:
	.word	7
	.word	4
	.word	Int_dispTab
	.word	10
	.word	-1
int_const5:
	.word	7
	.word	4
	.word	Int_dispTab
	.word	6
	.word	-1
int_const4:
	.word	7
	.word	4
	.word	Int_dispTab
	.word	3
	.word	-1
int_const3:
	.word	7
	.word	4
	.word	Int_dispTab
	.word	4
	.word	-1
int_const2:
	.word	7
	.word	4
	.word	Int_dispTab
	.word	0
	.word	-1
int_const1:
	.word	7
	.word	4
	.word	Int_dispTab
	.word	1
	.word	-1
int_const0:
	.word	7
	.word	4
	.word	Int_dispTab
	.word	2
	.word	-1
bool_const0:
	.word	6
	.word	4
	.word	Bool_dispTab
	.word	0
	.word	-1
bool_const1:
	.word	6
	.word	4
	.word	Bool_dispTab
	.word	1
Main_protObj:
	.word	0
	.word	7
	.word	Main_dispTab
	.word	0     #Bazz a
	.word	0     #Foo b
	.word	0     #Razz c
	.word	0     #Bar d
	.word	-1
Bazz_protObj:
	.word	1
	.word	6
	.word	Bazz_dispTab
	.word	int_const2
	.word	0     #Foo g
	.word	0     #Object i
	.word	-1
Razz_protObj:
	.word	2
	.word	10
	.word	Razz_dispTab
	.word	int_const2
	.word	0     #Foo g
	.word	0     #Object i
	.word	0     #Razz a
	.word	int_const2
	.word	0     #Bar e
	.word	int_const2
	.word	-1
Bar_protObj:
	.word	3
	.word	12
	.word	Bar_dispTab
	.word	int_const2
	.word	0     #Foo g
	.word	0     #Object i
	.word	0     #Razz a
	.word	int_const2
	.word	0     #Bar e
	.word	int_const2
	.word	int_const2
	.word	0     #Object d
	.word	-1
Foo_protObj:
	.word	4
	.word	8
	.word	Foo_dispTab
	.word	int_const2
	.word	0     #Foo g
	.word	0     #Object i
	.word	0     #Razz a
	.word	int_const2
	.word	-1
String_protObj:
	.word	5
	.word	5
	.word	String_dispTab
	.word	int_const2
	.word	0     #_prim_slot _str_field
	.word	-1
Bool_protObj:
	.word	6
	.word	4
	.word	Bool_dispTab
	.word	0     #_prim_slot _val
	.word	-1
Int_protObj:
	.word	7
	.word	4
	.word	Int_dispTab
	.word	0     #_prim_slot _val
	.word	-1
IO_protObj:
	.word	8
	.word	3
	.word	IO_dispTab
	.word	-1
Object_protObj:
	.word	9
	.word	3
	.word	Object_dispTab
	.word	-1
classTab:
    .word Main_protObj
    .word Main_init
    .word Bazz_protObj
    .word Bazz_init
    .word Razz_protObj
    .word Razz_init
    .word Bar_protObj
    .word Bar_init
    .word Foo_protObj
    .word Foo_init
    .word String_protObj
    .word String_init
    .word Bool_protObj
    .word Bool_init
    .word Int_protObj
    .word Int_init
    .word IO_protObj
    .word IO_init
    .word Object_protObj
    .word Object_init
class_nameTab:
    .word str_const15
    .word str_const14
    .word str_const13
    .word str_const12
    .word str_const11
    .word str_const10
    .word str_const9
    .word str_const8
    .word str_const7
    .word str_const6
Main_dispTab:
	.word	Object.abort
	.word	Object.type_name
	.word	Object.copy
	.word	Main.main
Bazz_dispTab:
	.word	Object.abort
	.word	Object.type_name
	.word	Object.copy
	.word	IO.out_string
	.word	IO.out_int
	.word	IO.in_string
	.word	IO.in_int
	.word	Bazz.printh
	.word	Bazz.doh
Razz_dispTab:
	.word	Object.abort
	.word	Object.type_name
	.word	Object.copy
	.word	IO.out_string
	.word	IO.out_int
	.word	IO.in_string
	.word	IO.in_int
	.word	Bazz.printh
	.word	Foo.doh
Bar_dispTab:
	.word	Object.abort
	.word	Object.type_name
	.word	Object.copy
	.word	IO.out_string
	.word	IO.out_int
	.word	IO.in_string
	.word	IO.in_int
	.word	Bazz.printh
	.word	Foo.doh
Foo_dispTab:
	.word	Object.abort
	.word	Object.type_name
	.word	Object.copy
	.word	IO.out_string
	.word	IO.out_int
	.word	IO.in_string
	.word	IO.in_int
	.word	Bazz.printh
	.word	Foo.doh
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
    la  $a0 Bazz_protObj      # get the address of the prottype
    jal Object.copy                          # make a copy
    jal Bazz_init              # and initialize it
    sw  $a0 12($s0) # and store the result
    la  $a0 Foo_protObj      # get the address of the prottype
    jal Object.copy                          # make a copy
    jal Foo_init              # and initialize it
    sw  $a0 16($s0) # and store the result
    la  $a0 Razz_protObj      # get the address of the prottype
    jal Object.copy                          # make a copy
    jal Razz_init              # and initialize it
    sw  $a0 20($s0) # and store the result
    la  $a0 Bar_protObj      # get the address of the prottype
    jal Object.copy                          # make a copy
    jal Bar_init              # and initialize it
    sw  $a0 24($s0) # and store the result
    move $a0 $s0
    lw  $fp 12($sp)
    lw  $s0 8($sp)
    lw  $ra 4($sp)
    addiu   $sp $sp 12
    jr  $ra
Main.main:
    # offset = 12
    addiu   $sp $sp -12  # push 3 items on the stack:
    sw  $fp 12($sp)      # 1. the caller's frame pointer 
    sw  $s0 8($sp)    # 2. the caller's? self object
    sw  $ra 4($sp)    # 3. the return address 
    addiu   $fp $sp 4          # set the fp to the activation record of the function
    move    $s0 $a0            # move the self object to $a0
    la $a0 str_const1
    lw  $fp 12($sp)            # restore the caller's registers
    lw  $s0 8($sp)             # etc 
    lw  $ra 4($sp)             # etc 
    addiu $sp $sp 12           # restore stack pointer 
    jr  $ra                    # and jump back
Bazz_init:
    addiu   $sp $sp -16 # start as a normal function definition
    sw  $fp 16($sp)
    sw  $s0 12($sp)
    sw  $ra 8($sp)
    addiu   $fp $sp 4
    move    $s0 $a0     # end of the function preambule
    jal IO_init    # initialize the parent class
    la $a0 int_const1 # load 1
    sw  $a0 12($s0) # and store the result
    move  $a0 $s0
    bne $a0, $zero start_case1
    la  $a0 str_const0
    li  $t1 1
    jal _case_abort2
    # start of  block
start_case1:
    sw     $a0, 0($fp)   # push value in framepointer
    # start of case expression 
    lw     $t1, obj_tag($a0) # find the obj type
    li     $t2, 4            # use as offset into case table
    mul    $t1, $t1, $t2
    la     $t2, type_label1
    addu   $t2, $t2, $t1
    jr      $t2
type_label1:
   # Main 0
    b type_1_void
   # Bazz 1
# create a jump instruction to jump to Bazz
    b type_1_Bazz
   # Razz 2
# create a jump instruction to jump to Razz
    b type_1_Razz
   # Bar 3
# create a jump instruction to jump to Bar
    b type_1_Bar
   # Foo 4
# create a jump instruction to jump to Foo
    b type_1_Foo
   # String 5
    b type_1_void
   # Bool 6
    b type_1_void
   # Int 7
    b type_1_void
   # IO 8
    b type_1_void
   # Object 9
    b type_1_void
type_1_Bazz:
    la  $a0 Foo_protObj      # get the address of the prottype
    jal Object.copy                          # make a copy
    jal Foo_init              # and initialize it
    b  end_case1
type_1_Razz:
    la  $a0 Bar_protObj      # get the address of the prottype
    jal Object.copy                          # make a copy
    jal Bar_init              # and initialize it
    b  end_case1
type_1_Foo:
    la  $a0 Razz_protObj      # get the address of the prottype
    jal Object.copy                          # make a copy
    jal Razz_init              # and initialize it
    b  end_case1
type_1_Bar:
    lw    $a0 0($fp) #   local var: n
    b  end_case1
type_1_void:
    jal _case_abort
end_case1:
# end of case block
    sw  $a0 16($s0) # and store the result
    move  $a0 $s0
    bne $a0 $zero label2
    la  $a0 str_const0
    li  $t1 1
    jal _dispatch_abort
label2:    lw    $t1 obj_disp($a0)
    lw    $t1 28($t1)     #Bazz.printh
    jalr  $t1
    sw  $a0 20($s0) # and store the result
    move $a0 $s0
    lw  $fp 16($sp)
    lw  $s0 12($sp)
    lw  $ra 8($sp)
    addiu   $sp $sp 16
    jr  $ra
Bazz.printh:
    # offset = 12
    addiu   $sp $sp -12  # push 3 items on the stack:
    sw  $fp 12($sp)      # 1. the caller's frame pointer 
    sw  $s0 8($sp)    # 2. the caller's? self object
    sw  $ra 4($sp)    # 3. the return address 
    addiu   $fp $sp 4          # set the fp to the activation record of the function
    move    $s0 $a0            # move the self object to $a0
    lw    $a0 12($s0) #    member var: Bazz.h
    sw    $a0 0($sp)  # push arg 0 on stack
    addiu $sp $sp -4 # for call to out_int
    move  $a0 $s0
    bne $a0 $zero label3
    la  $a0 str_const0
    li  $t1 1
    jal _dispatch_abort
label3:    lw    $t1 obj_disp($a0)
    lw    $t1 16($t1)     #Bazz.out_int
    jalr  $t1
    la $a0 int_const2 # load 0
    lw  $fp 12($sp)            # restore the caller's registers
    lw  $s0 8($sp)             # etc 
    lw  $ra 4($sp)             # etc 
    addiu $sp $sp 12           # restore stack pointer 
    jr  $ra                    # and jump back
Bazz.doh:
    # offset = 16
    addiu   $sp $sp -16  # push 3 items on the stack:
    sw  $fp 16($sp)      # 1. the caller's frame pointer 
    sw  $s0 12($sp)    # 2. the caller's? self object
    sw  $ra 8($sp)    # 3. the return address 
    addiu   $fp $sp 4          # set the fp to the activation record of the function
    move    $s0 $a0            # move the self object to $a0
    # start of let block
    lw    $a0 12($s0) #    member var: Bazz.h
    # end let initializer
    sw  $a0 0($fp) # initialize let i
    lw    $a0 12($s0) #    member var: Bazz.h
# create a new int object and push it on the stack
    jal     Object.copy
    sw      $a0, 0($sp)
    addiu   $sp, $sp -4
    lw      $a0, int_slot($a0)
    sw      $a0, 0($sp)
    addiu   $sp, $sp -4
    la $a0 int_const1 # load 1
    lw      $a0, int_slot($a0)
    lw      $t1, 4($sp)
    add     $a0, $t1, $a0
    addiu   $sp, $sp, 4
    lw      $t1, 4($sp)
    sw      $a0, int_slot($t1)
    move    $a0 $t1
    addiu   $sp, $sp, 4
    sw    $a0 12($s0) #    member var: Bazz.h
    lw    $a0 0($fp) #   local var: i
    # end of let block
    lw  $fp 16($sp)            # restore the caller's registers
    lw  $s0 12($sp)             # etc 
    lw  $ra 8($sp)             # etc 
    addiu $sp $sp 16           # restore stack pointer 
    jr  $ra                    # and jump back
Razz_init:
    addiu   $sp $sp -16 # start as a normal function definition
    sw  $fp 16($sp)
    sw  $s0 12($sp)
    sw  $ra 8($sp)
    addiu   $fp $sp 4
    move    $s0 $a0     # end of the function preambule
    jal Foo_init    # initialize the parent class
    move  $a0 $s0
    bne $a0, $zero start_case4
    la  $a0 str_const0
    li  $t1 1
    jal _case_abort2
    # start of  block
start_case4:
    sw     $a0, 0($fp)   # push value in framepointer
    # start of case expression 
    lw     $t1, obj_tag($a0) # find the obj type
    li     $t2, 4            # use as offset into case table
    mul    $t1, $t1, $t2
    la     $t2, type_label4
    addu   $t2, $t2, $t1
    jr      $t2
type_label4:
   # Main 0
    b type_4_void
   # Bazz 1
    b type_4_void
   # Razz 2
# create a jump instruction to jump to Razz
    b type_4_Razz
   # Bar 3
# create a jump instruction to jump to Bar
    b type_4_Bar
   # Foo 4
    b type_4_void
   # String 5
    b type_4_void
   # Bool 6
    b type_4_void
   # Int 7
    b type_4_void
   # IO 8
    b type_4_void
   # Object 9
    b type_4_void
type_4_Razz:
    la  $a0 Bar_protObj      # get the address of the prottype
    jal Object.copy                          # make a copy
    jal Bar_init              # and initialize it
    b  end_case4
type_4_Bar:
    lw    $a0 0($fp) #   local var: n
    b  end_case4
type_4_void:
    jal _case_abort
end_case4:
# end of case block
    sw  $a0 32($s0) # and store the result
    lw    $a0 24($s0) #    member var: Razz.a
    bne $a0 $zero label5
    la  $a0 str_const0
    li  $t1 1
    jal _dispatch_abort
label5:    la    $t1 Bazz_dispTab
    lw    $t1 32($t1)     #   @Bazz.doh
    jal   $t1 # 
# create a new int object and push it on the stack
    jal     Object.copy
    sw      $a0, 0($sp)
    addiu   $sp, $sp -4
    lw      $a0, int_slot($a0)
    sw      $a0, 0($sp)
    addiu   $sp, $sp -4
    lw    $a0 16($s0) #    member var: Razz.g
    bne $a0 $zero label6
    la  $a0 str_const0
    li  $t1 1
    jal _dispatch_abort
label6:    lw    $t1 obj_disp($a0)
    lw    $t1 32($t1)     #Foo.doh
    jalr  $t1
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
    lw    $a0 32($s0) #    member var: Razz.e
    bne $a0 $zero label7
    la  $a0 str_const0
    li  $t1 1
    jal _dispatch_abort
label7:    lw    $t1 obj_disp($a0)
    lw    $t1 32($t1)     #Bar.doh
    jalr  $t1
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
    move  $a0 $s0
    bne $a0 $zero label8
    la  $a0 str_const0
    li  $t1 1
    jal _dispatch_abort
label8:    lw    $t1 obj_disp($a0)
    lw    $t1 32($t1)     #Razz.doh
    jalr  $t1
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
    move  $a0 $s0
    bne $a0 $zero label9
    la  $a0 str_const0
    li  $t1 1
    jal _dispatch_abort
label9:    lw    $t1 obj_disp($a0)
    lw    $t1 28($t1)     #Razz.printh
    jalr  $t1
    lw      $a0, int_slot($a0)
    lw      $t1, 4($sp)
    add     $a0, $t1, $a0
    addiu   $sp, $sp, 4
    lw      $t1, 4($sp)
    sw      $a0, int_slot($t1)
    move    $a0 $t1
    addiu   $sp, $sp, 4
    sw  $a0 36($s0) # and store the result
    move $a0 $s0
    lw  $fp 16($sp)
    lw  $s0 12($sp)
    lw  $ra 8($sp)
    addiu   $sp $sp 16
    jr  $ra
Bar_init:
    addiu   $sp $sp -12 # start as a normal function definition
    sw  $fp 12($sp)
    sw  $s0 8($sp)
    sw  $ra 4($sp)
    addiu   $fp $sp 4
    move    $s0 $a0     # end of the function preambule
    jal Razz_init    # initialize the parent class
    move  $a0 $s0
    bne $a0 $zero label10
    la  $a0 str_const0
    li  $t1 1
    jal _dispatch_abort
label10:    lw    $t1 obj_disp($a0)
    lw    $t1 32($t1)     #Bar.doh
    jalr  $t1
    sw  $a0 40($s0) # and store the result
    move  $a0 $s0
    bne $a0 $zero label11
    la  $a0 str_const0
    li  $t1 1
    jal _dispatch_abort
label11:    lw    $t1 obj_disp($a0)
    lw    $t1 28($t1)     #Bar.printh
    jalr  $t1
    sw  $a0 44($s0) # and store the result
    move $a0 $s0
    lw  $fp 12($sp)
    lw  $s0 8($sp)
    lw  $ra 4($sp)
    addiu   $sp $sp 12
    jr  $ra
Foo_init:
    addiu   $sp $sp -16 # start as a normal function definition
    sw  $fp 16($sp)
    sw  $s0 12($sp)
    sw  $ra 8($sp)
    addiu   $fp $sp 4
    move    $s0 $a0     # end of the function preambule
    jal Bazz_init    # initialize the parent class
    move  $a0 $s0
    bne $a0, $zero start_case12
    la  $a0 str_const0
    li  $t1 1
    jal _case_abort2
    # start of  block
start_case12:
    sw     $a0, 0($fp)   # push value in framepointer
    # start of case expression 
    lw     $t1, obj_tag($a0) # find the obj type
    li     $t2, 4            # use as offset into case table
    mul    $t1, $t1, $t2
    la     $t2, type_label12
    addu   $t2, $t2, $t1
    jr      $t2
type_label12:
   # Main 0
    b type_12_void
   # Bazz 1
    b type_12_void
   # Razz 2
# create a jump instruction to jump to Razz
    b type_12_Razz
   # Bar 3
# create a jump instruction to jump to Bar
    b type_12_Bar
   # Foo 4
# create a jump instruction to jump to Foo
    b type_12_Foo
   # String 5
    b type_12_void
   # Bool 6
    b type_12_void
   # Int 7
    b type_12_void
   # IO 8
    b type_12_void
   # Object 9
    b type_12_void
type_12_Razz:
    la  $a0 Bar_protObj      # get the address of the prottype
    jal Object.copy                          # make a copy
    jal Bar_init              # and initialize it
    b  end_case12
type_12_Foo:
    la  $a0 Razz_protObj      # get the address of the prottype
    jal Object.copy                          # make a copy
    jal Razz_init              # and initialize it
    b  end_case12
type_12_Bar:
    lw    $a0 0($fp) #   local var: n
    b  end_case12
type_12_void:
    jal _case_abort
end_case12:
# end of case block
    sw  $a0 24($s0) # and store the result
    lw    $a0 24($s0) #    member var: Foo.a
    bne $a0 $zero label13
    la  $a0 str_const0
    li  $t1 1
    jal _dispatch_abort
label13:    lw    $t1 obj_disp($a0)
    lw    $t1 32($t1)     #Razz.doh
    jalr  $t1
# create a new int object and push it on the stack
    jal     Object.copy
    sw      $a0, 0($sp)
    addiu   $sp, $sp -4
    lw      $a0, int_slot($a0)
    sw      $a0, 0($sp)
    addiu   $sp, $sp -4
    lw    $a0 16($s0) #    member var: Foo.g
    bne $a0 $zero label14
    la  $a0 str_const0
    li  $t1 1
    jal _dispatch_abort
label14:    lw    $t1 obj_disp($a0)
    lw    $t1 32($t1)     #Foo.doh
    jalr  $t1
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
    move  $a0 $s0
    bne $a0 $zero label15
    la  $a0 str_const0
    li  $t1 1
    jal _dispatch_abort
label15:    lw    $t1 obj_disp($a0)
    lw    $t1 32($t1)     #Foo.doh
    jalr  $t1
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
    move  $a0 $s0
    bne $a0 $zero label16
    la  $a0 str_const0
    li  $t1 1
    jal _dispatch_abort
label16:    lw    $t1 obj_disp($a0)
    lw    $t1 28($t1)     #Foo.printh
    jalr  $t1
    lw      $a0, int_slot($a0)
    lw      $t1, 4($sp)
    add     $a0, $t1, $a0
    addiu   $sp, $sp, 4
    lw      $t1, 4($sp)
    sw      $a0, int_slot($t1)
    move    $a0 $t1
    addiu   $sp, $sp, 4
    sw  $a0 28($s0) # and store the result
    move $a0 $s0
    lw  $fp 16($sp)
    lw  $s0 12($sp)
    lw  $ra 8($sp)
    addiu   $sp $sp 16
    jr  $ra
Foo.doh:
    # offset = 16
    addiu   $sp $sp -16  # push 3 items on the stack:
    sw  $fp 16($sp)      # 1. the caller's frame pointer 
    sw  $s0 12($sp)    # 2. the caller's? self object
    sw  $ra 8($sp)    # 3. the return address 
    addiu   $fp $sp 4          # set the fp to the activation record of the function
    move    $s0 $a0            # move the self object to $a0
    # start of let block
    lw    $a0 12($s0) #    member var: Foo.h
    # end let initializer
    sw  $a0 0($fp) # initialize let i
    lw    $a0 12($s0) #    member var: Foo.h
# create a new int object and push it on the stack
    jal     Object.copy
    sw      $a0, 0($sp)
    addiu   $sp, $sp -4
    lw      $a0, int_slot($a0)
    sw      $a0, 0($sp)
    addiu   $sp, $sp -4
    la $a0 int_const0 # load 2
    lw      $a0, int_slot($a0)
    lw      $t1, 4($sp)
    add     $a0, $t1, $a0
    addiu   $sp, $sp, 4
    lw      $t1, 4($sp)
    sw      $a0, int_slot($t1)
    move    $a0 $t1
    addiu   $sp, $sp, 4
    sw    $a0 12($s0) #    member var: Foo.h
    lw    $a0 0($fp) #   local var: i
    # end of let block
    lw  $fp 16($sp)            # restore the caller's registers
    lw  $s0 12($sp)             # etc 
    lw  $ra 8($sp)             # etc 
    addiu $sp $sp 16           # restore stack pointer 
    jr  $ra                    # and jump back
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
