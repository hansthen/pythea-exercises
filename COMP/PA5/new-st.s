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
	.word	4
_bool_tag:
	.word	3
_string_tag:
	.word	2
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
str_const14:
	.word	2
	.word	5
	.word	String_dispTab
	.word	int_const1
	.byte	0	
	.align	2
	.word	-1
str_const13:
	.word	2
	.word	6
	.word	String_dispTab
	.word	int_const2
	.ascii	"Main"
	.byte	0	
	.align	2
	.word	-1
str_const12:
	.word	2
	.word	5
	.word	String_dispTab
	.word	int_const0
	.ascii	"A"
	.byte	0	
	.align	2
	.word	-1
str_const11:
	.word	2
	.word	6
	.word	String_dispTab
	.word	int_const3
	.ascii	"String"
	.byte	0	
	.align	2
	.word	-1
str_const10:
	.word	2
	.word	6
	.word	String_dispTab
	.word	int_const2
	.ascii	"Bool"
	.byte	0	
	.align	2
	.word	-1
str_const9:
	.word	2
	.word	5
	.word	String_dispTab
	.word	int_const4
	.ascii	"Int"
	.byte	0	
	.align	2
	.word	-1
str_const8:
	.word	2
	.word	5
	.word	String_dispTab
	.word	int_const5
	.ascii	"IO"
	.byte	0	
	.align	2
	.word	-1
str_const7:
	.word	2
	.word	6
	.word	String_dispTab
	.word	int_const3
	.ascii	"Object"
	.byte	0	
	.align	2
	.word	-1
str_const6:
	.word	2
	.word	7
	.word	String_dispTab
	.word	int_const6
	.ascii	"_prim_slot"
	.byte	0	
	.align	2
	.word	-1
str_const5:
	.word	2
	.word	7
	.word	String_dispTab
	.word	int_const7
	.ascii	"SELF_TYPE"
	.byte	0	
	.align	2
	.word	-1
str_const4:
	.word	2
	.word	7
	.word	String_dispTab
	.word	int_const7
	.ascii	"_no_class"
	.byte	0	
	.align	2
	.word	-1
str_const3:
	.word	2
	.word	8
	.word	String_dispTab
	.word	int_const8
	.ascii	"<basic class>"
	.byte	0	
	.align	2
	.word	-1
str_const2:
	.word	2
	.word	5
	.word	String_dispTab
	.word	int_const0
	.ascii	"\n"
	.byte	0	
	.align	2
	.word	-1
str_const1:
	.word	2
	.word	6
	.word	String_dispTab
	.word	int_const9
	.ascii	"x is "
	.byte	0	
	.align	2
	.word	-1
str_const0:
	.word	2
	.word	7
	.word	String_dispTab
	.word	int_const7
	.ascii	"new-st.cl"
	.byte	0	
	.align	2
	.word	-1
int_const9:
	.word	4
	.word	4
	.word	Int_dispTab
	.word	5
	.word	-1
int_const8:
	.word	4
	.word	4
	.word	Int_dispTab
	.word	13
	.word	-1
int_const7:
	.word	4
	.word	4
	.word	Int_dispTab
	.word	9
	.word	-1
int_const6:
	.word	4
	.word	4
	.word	Int_dispTab
	.word	10
	.word	-1
int_const5:
	.word	4
	.word	4
	.word	Int_dispTab
	.word	2
	.word	-1
int_const4:
	.word	4
	.word	4
	.word	Int_dispTab
	.word	3
	.word	-1
int_const3:
	.word	4
	.word	4
	.word	Int_dispTab
	.word	6
	.word	-1
int_const2:
	.word	4
	.word	4
	.word	Int_dispTab
	.word	4
	.word	-1
int_const1:
	.word	4
	.word	4
	.word	Int_dispTab
	.word	0
	.word	-1
int_const0:
	.word	4
	.word	4
	.word	Int_dispTab
	.word	1
	.word	-1
bool_const0:
	.word	3
	.word	4
	.word	Bool_dispTab
	.word	0
	.word	-1
bool_const1:
	.word	3
	.word	4
	.word	Bool_dispTab
	.word	1
Main_protObj:
	.word	0
	.word	3
	.word	Main_dispTab
	.word	-1
A_protObj:
	.word	1
	.word	4
	.word	A_dispTab
	.word	int_const1
	.word	-1
String_protObj:
	.word	2
	.word	5
	.word	String_dispTab
	.word	int_const1
	.word	0     #_prim_slot _str_field
	.word	-1
Bool_protObj:
	.word	3
	.word	4
	.word	Bool_dispTab
	.word	0     #_prim_slot _val
	.word	-1
Int_protObj:
	.word	4
	.word	4
	.word	Int_dispTab
	.word	0     #_prim_slot _val
	.word	-1
IO_protObj:
	.word	5
	.word	3
	.word	IO_dispTab
	.word	-1
Object_protObj:
	.word	6
	.word	3
	.word	Object_dispTab
	.word	-1
classTab:
    .word Main_protObj
    .word Main_init
    .word A_protObj
    .word A_init
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
    .word str_const13
    .word str_const12
    .word str_const11
    .word str_const10
    .word str_const9
    .word str_const8
    .word str_const7
Main_dispTab:
	.word	Object.abort
	.word	Object.type_name
	.word	Object.copy
	.word	Main.main
A_dispTab:
	.word	Object.abort
	.word	Object.type_name
	.word	Object.copy
	.word	A.printX
	.word	A.new_st
	.word	A.bump
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
 # offset = 20
    addiu   $sp $sp -20  # push 3 items on the stack:
    sw  $fp 20($sp)      # 1. the caller's frame pointer 
    sw  $s0 16($sp)    # 2. the caller's? self object
    sw  $ra 12($sp)    # 3. the return address 
    addiu   $fp $sp 4          # set the fp to the activation record of the function
    move    $s0 $a0            # move the self object to $a0
    # start of let block
la  $a0 A_protObj      # get the address of the prottype
jal Object.copy                          # make a copy
jal A_init              # and initialize it
    sw  $a0 4($fp) # initialize let a1
    # start of let block
    la $a0 0     #A
    sw  $a0 0($fp) # initialize let a2
    lw    $a0 4($fp) #   local var: a1
    bne $a0 $zero label1
    la  $a0 str_const0
    li  $t1 1
    jal _dispatch_abort
label1:    lw    $t1 obj_disp($a0)
    lw    $t1 12($t1)     #A.printX
    jalr  $t1
    lw    $a0 4($fp) #   local var: a1
    bne $a0 $zero label2
    la  $a0 str_const0
    li  $t1 1
    jal _dispatch_abort
label2:    lw    $t1 obj_disp($a0)
    lw    $t1 20($t1)     #A.bump
    jalr  $t1
    lw    $a0 4($fp) #   local var: a1
    bne $a0 $zero label3
    la  $a0 str_const0
    li  $t1 1
    jal _dispatch_abort
label3:    lw    $t1 obj_disp($a0)
    lw    $t1 20($t1)     #A.bump
    jalr  $t1
    lw    $a0 4($fp) #   local var: a1
    bne $a0 $zero label4
    la  $a0 str_const0
    li  $t1 1
    jal _dispatch_abort
label4:    lw    $t1 obj_disp($a0)
    lw    $t1 20($t1)     #A.bump
    jalr  $t1
    lw    $a0 4($fp) #   local var: a1
    bne $a0 $zero label5
    la  $a0 str_const0
    li  $t1 1
    jal _dispatch_abort
label5:    lw    $t1 obj_disp($a0)
    lw    $t1 12($t1)     #A.printX
    jalr  $t1
    lw    $a0 4($fp) #   local var: a1
    bne $a0 $zero label6
    la  $a0 str_const0
    li  $t1 1
    jal _dispatch_abort
label6:    lw    $t1 obj_disp($a0)
    lw    $t1 16($t1)     #A.new_st
    jalr  $t1
    sw    $a0 0($fp) #   local var: a2
    lw    $a0 0($fp) #   local var: a2
    bne $a0 $zero label7
    la  $a0 str_const0
    li  $t1 1
    jal _dispatch_abort
label7:    lw    $t1 obj_disp($a0)
    lw    $t1 12($t1)     #A.printX
    jalr  $t1
    lw    $a0 4($fp) #   local var: a1
    bne $a0 $zero label8
    la  $a0 str_const0
    li  $t1 1
    jal _dispatch_abort
label8:    lw    $t1 obj_disp($a0)
    lw    $t1 12($t1)     #A.printX
    jalr  $t1
    # end of let block
    # end of let block
    lw  $fp 20($sp)            # restore the caller's registers
    lw  $s0 16($sp)             # etc 
    lw  $ra 12($sp)             # etc 
    addiu $sp $sp 20           # restore stack pointer 
    jr  $ra                    # and jump back
A_init:
    addiu   $sp $sp -12 # start as a normal function definition
    sw  $fp 12($sp)
    sw  $s0 8($sp)
    sw  $ra 4($sp)
    addiu   $fp $sp 4
    move    $s0 $a0     # end of the function preambule
    jal Object_init    # initialize the parent class
# initializer type10plus_class
    lw    $a0 12($s0) #    member var: A.x
# create a new int object and push it on the stack
    jal     Object.copy
    sw      $a0, 0($sp)
    addiu   $sp, $sp -4
    lw      $a0, int_slot($a0)
    sw      $a0, 0($sp)
    addiu   $sp, $sp -4
    la $a0 int_const0 # load 1
    lw      $a0, int_slot($a0)
    lw      $t1, 4($sp)
    add     $a0, $t1, $a0
    addiu   $sp, $sp, 4
    lw      $t1, 4($sp)
    sw      $a0, int_slot($t1)
    move    $a0 $t1
    addiu   $sp, $sp, 4
    sw  $a0 12($s0) # and store the result
    move $a0 $s0
    lw  $fp 12($sp)
    lw  $s0 8($sp)
    lw  $ra 4($sp)
    addiu   $sp $sp 12
    jr  $ra
A.printX:
 # offset = 12
    addiu   $sp $sp -12  # push 3 items on the stack:
    sw  $fp 12($sp)      # 1. the caller's frame pointer 
    sw  $s0 8($sp)    # 2. the caller's? self object
    sw  $ra 4($sp)    # 3. the return address 
    addiu   $fp $sp 4          # set the fp to the activation record of the function
    move    $s0 $a0            # move the self object to $a0
    la $a0 str_const1 # x is 
    sw    $a0 0($sp)  # push arg 0 on stack
    addiu $sp $sp -4 # for call to out_string
la  $a0 IO_protObj      # get the address of the prottype
jal Object.copy                          # make a copy
jal IO_init              # and initialize it
    bne $a0 $zero label9
    la  $a0 str_const0
    li  $t1 1
    jal _dispatch_abort
label9:    lw    $t1 obj_disp($a0)
    lw    $t1 12($t1)     #IO.out_string
    jalr  $t1
    lw    $a0 12($s0) #    member var: A.x
    sw    $a0 0($sp)  # push arg 0 on stack
    addiu $sp $sp -4 # for call to out_int
la  $a0 IO_protObj      # get the address of the prottype
jal Object.copy                          # make a copy
jal IO_init              # and initialize it
    bne $a0 $zero label10
    la  $a0 str_const0
    li  $t1 1
    jal _dispatch_abort
label10:    lw    $t1 obj_disp($a0)
    lw    $t1 16($t1)     #IO.out_int
    jalr  $t1
    la $a0 str_const2 # 

    sw    $a0 0($sp)  # push arg 0 on stack
    addiu $sp $sp -4 # for call to out_string
la  $a0 IO_protObj      # get the address of the prottype
jal Object.copy                          # make a copy
jal IO_init              # and initialize it
    bne $a0 $zero label11
    la  $a0 str_const0
    li  $t1 1
    jal _dispatch_abort
label11:    lw    $t1 obj_disp($a0)
    lw    $t1 12($t1)     #IO.out_string
    jalr  $t1
    lw  $fp 12($sp)            # restore the caller's registers
    lw  $s0 8($sp)             # etc 
    lw  $ra 4($sp)             # etc 
    addiu $sp $sp 12           # restore stack pointer 
    jr  $ra                    # and jump back
A.new_st:
 # offset = 12
    addiu   $sp $sp -12  # push 3 items on the stack:
    sw  $fp 12($sp)      # 1. the caller's frame pointer 
    sw  $s0 8($sp)    # 2. the caller's? self object
    sw  $ra 4($sp)    # 3. the return address 
    addiu   $fp $sp 4          # set the fp to the activation record of the function
    move    $s0 $a0            # move the self object to $a0
lw  $a0 obj_tag($s0)            # get the type of the self object
li  $t1 8                       # 8 bytes per classTab entry
mul $a0 $a0 $t1                 # calculate the offset
la  $t1 classTab                # find the class table
add $a0 $a0 $t1                 # and find the _protObj entry inside it
lw  $t1 4($a0)                  # get the value from the address pointed to
sw  $t1 0($sp)                  # push
addiu $sp $sp -4                # 
lw  $a0 0($a0)                  # get the value from the address pointed to
jal Object.copy                 # make a copy
lw  $t1 4($sp)                  # pop the return address
addiu $sp $sp 4                 # 
jalr $t1                        # and initialize it
    lw  $fp 12($sp)            # restore the caller's registers
    lw  $s0 8($sp)             # etc 
    lw  $ra 4($sp)             # etc 
    addiu $sp $sp 12           # restore stack pointer 
    jr  $ra                    # and jump back
A.bump:
 # offset = 12
    addiu   $sp $sp -12  # push 3 items on the stack:
    sw  $fp 12($sp)      # 1. the caller's frame pointer 
    sw  $s0 8($sp)    # 2. the caller's? self object
    sw  $ra 4($sp)    # 3. the return address 
    addiu   $fp $sp 4          # set the fp to the activation record of the function
    move    $s0 $a0            # move the self object to $a0
    lw    $a0 12($s0) #    member var: A.x
# create a new int object and push it on the stack
    jal     Object.copy
    sw      $a0, 0($sp)
    addiu   $sp, $sp -4
    lw      $a0, int_slot($a0)
    sw      $a0, 0($sp)
    addiu   $sp, $sp -4
    la $a0 int_const0 # load 1
    lw      $a0, int_slot($a0)
    lw      $t1, 4($sp)
    add     $a0, $t1, $a0
    addiu   $sp, $sp, 4
    lw      $t1, 4($sp)
    sw      $a0, int_slot($t1)
    move    $a0 $t1
    addiu   $sp, $sp, 4
    sw    $a0 12($s0) #    member var: A.x
    lw  $fp 12($sp)            # restore the caller's registers
    lw  $s0 8($sp)             # etc 
    lw  $ra 4($sp)             # etc 
    addiu $sp $sp 12           # restore stack pointer 
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
