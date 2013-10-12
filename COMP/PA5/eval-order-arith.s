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
	.word	3
_bool_tag:
	.word	2
_string_tag:
	.word	1
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
str_const12:
	.word	1
	.word	5
	.word	String_dispTab
	.word	int_const14
	.byte	0	
	.align	2
	.word	-1
str_const11:
	.word	1
	.word	6
	.word	String_dispTab
	.word	int_const3
	.ascii	"Main"
	.byte	0	
	.align	2
	.word	-1
str_const10:
	.word	1
	.word	6
	.word	String_dispTab
	.word	int_const5
	.ascii	"String"
	.byte	0	
	.align	2
	.word	-1
str_const9:
	.word	1
	.word	6
	.word	String_dispTab
	.word	int_const3
	.ascii	"Bool"
	.byte	0	
	.align	2
	.word	-1
str_const8:
	.word	1
	.word	5
	.word	String_dispTab
	.word	int_const2
	.ascii	"Int"
	.byte	0	
	.align	2
	.word	-1
str_const7:
	.word	1
	.word	5
	.word	String_dispTab
	.word	int_const1
	.ascii	"IO"
	.byte	0	
	.align	2
	.word	-1
str_const6:
	.word	1
	.word	6
	.word	String_dispTab
	.word	int_const5
	.ascii	"Object"
	.byte	0	
	.align	2
	.word	-1
str_const5:
	.word	1
	.word	7
	.word	String_dispTab
	.word	int_const9
	.ascii	"_prim_slot"
	.byte	0	
	.align	2
	.word	-1
str_const4:
	.word	1
	.word	7
	.word	String_dispTab
	.word	int_const8
	.ascii	"SELF_TYPE"
	.byte	0	
	.align	2
	.word	-1
str_const3:
	.word	1
	.word	7
	.word	String_dispTab
	.word	int_const8
	.ascii	"_no_class"
	.byte	0	
	.align	2
	.word	-1
str_const2:
	.word	1
	.word	8
	.word	String_dispTab
	.word	int_const12
	.ascii	"<basic class>"
	.byte	0	
	.align	2
	.word	-1
str_const1:
	.word	1
	.word	5
	.word	String_dispTab
	.word	int_const0
	.ascii	"\n"
	.byte	0	
	.align	2
	.word	-1
str_const0:
	.word	1
	.word	9
	.word	String_dispTab
	.word	int_const15
	.ascii	"eval-order-arith.cl"
	.byte	0	
	.align	2
	.word	-1
int_const15:
	.word	3
	.word	4
	.word	Int_dispTab
	.word	19
	.word	-1
int_const14:
	.word	3
	.word	4
	.word	Int_dispTab
	.word	0
	.word	-1
int_const13:
	.word	3
	.word	4
	.word	Int_dispTab
	.word	14
	.word	-1
int_const12:
	.word	3
	.word	4
	.word	Int_dispTab
	.word	13
	.word	-1
int_const11:
	.word	3
	.word	4
	.word	Int_dispTab
	.word	12
	.word	-1
int_const10:
	.word	3
	.word	4
	.word	Int_dispTab
	.word	11
	.word	-1
int_const9:
	.word	3
	.word	4
	.word	Int_dispTab
	.word	10
	.word	-1
int_const8:
	.word	3
	.word	4
	.word	Int_dispTab
	.word	9
	.word	-1
int_const7:
	.word	3
	.word	4
	.word	Int_dispTab
	.word	8
	.word	-1
int_const6:
	.word	3
	.word	4
	.word	Int_dispTab
	.word	7
	.word	-1
int_const5:
	.word	3
	.word	4
	.word	Int_dispTab
	.word	6
	.word	-1
int_const4:
	.word	3
	.word	4
	.word	Int_dispTab
	.word	5
	.word	-1
int_const3:
	.word	3
	.word	4
	.word	Int_dispTab
	.word	4
	.word	-1
int_const2:
	.word	3
	.word	4
	.word	Int_dispTab
	.word	3
	.word	-1
int_const1:
	.word	3
	.word	4
	.word	Int_dispTab
	.word	2
	.word	-1
int_const0:
	.word	3
	.word	4
	.word	Int_dispTab
	.word	1
	.word	-1
bool_const0:
	.word	2
	.word	4
	.word	Bool_dispTab
	.word	0
	.word	-1
bool_const1:
	.word	2
	.word	4
	.word	Bool_dispTab
	.word	1
Main_protObj:
	.word	0
	.word	3
	.word	Main_dispTab
	.word	-1
String_protObj:
	.word	1
	.word	5
	.word	String_dispTab
	.word	int_const14
	.word	0     #_prim_slot _str_field
	.word	-1
Bool_protObj:
	.word	2
	.word	4
	.word	Bool_dispTab
	.word	0     #_prim_slot _val
	.word	-1
Int_protObj:
	.word	3
	.word	4
	.word	Int_dispTab
	.word	0     #_prim_slot _val
	.word	-1
IO_protObj:
	.word	4
	.word	3
	.word	IO_dispTab
	.word	-1
Object_protObj:
	.word	5
	.word	3
	.word	Object_dispTab
	.word	-1
class_nameTab:
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
	.word	IO.out_string
	.word	IO.out_int
	.word	IO.in_string
	.word	IO.in_int
	.word	Main.recite
	.word	Main.main
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
    jal IO_init    # initialize the parent class
    move $a0 $s0
    lw  $fp 12($sp)
    lw  $s0 8($sp)
    lw  $ra 4($sp)
    addiu   $sp $sp 12
    jr  $ra
Main.recite:
# param 12($fp)  value:Int
 # offset = 12
    addiu   $sp $sp -12  # push 3 items on the stack:
    sw  $fp 12($sp)      # 1. the caller's frame pointer 
    sw  $s0 8($sp)    # 2. the caller's? self object
    sw  $ra 4($sp)    # 3. the return address 
    addiu   $fp $sp 4          # set the fp to the activation record of the function
    move    $s0 $a0            # move the self object to $a0
    addiu $sp $sp -4 # create space on stack
    lw    $a0 12($fp) #   local var: value
    sw    $a0 4($sp) # push on the stack
    move  $a0 $s0
    bne $a0 $zero label1
    la  $a0 str_const0
    li  $t1 1
    jal _dispatch_abort
label1:    lw    $t1 obj_disp($a0)
    lw    $t1 16($t1)     #Main.out_int
    jalr  $t1
    addiu $sp $sp -4 # create space on stack
	la	$a0 str_const1
    sw    $a0 4($sp) # push on the stack
    move  $a0 $s0
    bne $a0 $zero label2
    la  $a0 str_const0
    li  $t1 1
    jal _dispatch_abort
label2:    lw    $t1 obj_disp($a0)
    lw    $t1 12($t1)     #Main.out_string
    jalr  $t1
    lw    $a0 12($fp) #   local var: value
    lw  $fp 12($sp)            # restore the caller's registers
    lw  $s0 8($sp)             # etc 
    lw  $ra 4($sp)             # etc 
    addiu $sp $sp 16           # restore stack pointer 
    jr  $ra                    # and jump back
Main.main:
 # offset = 12
    addiu   $sp $sp -12  # push 3 items on the stack:
    sw  $fp 12($sp)      # 1. the caller's frame pointer 
    sw  $s0 8($sp)    # 2. the caller's? self object
    sw  $ra 4($sp)    # 3. the return address 
    addiu   $fp $sp 4          # set the fp to the activation record of the function
    move    $s0 $a0            # move the self object to $a0
    addiu $sp $sp -4 # create space on stack
	la	$a0 int_const0
    sw    $a0 4($sp) # push on the stack
    move  $a0 $s0
    bne $a0 $zero label3
    la  $a0 str_const0
    li  $t1 1
    jal _dispatch_abort
label3:    lw    $t1 obj_disp($a0)
    lw    $t1 28($t1)     #Main.recite
    jalr  $t1
# create a new int object and push it on the stack
    jal     Object.copy
    sw      $a0, 0($sp)
    addiu   $sp, $sp -4
    lw      $a0, int_slot($a0)
    sw      $a0, 0($sp)
    addiu   $sp, $sp -4
    addiu $sp $sp -4 # create space on stack
	la	$a0 int_const1
    sw    $a0 4($sp) # push on the stack
    move  $a0 $s0
    bne $a0 $zero label4
    la  $a0 str_const0
    li  $t1 1
    jal _dispatch_abort
label4:    lw    $t1 obj_disp($a0)
    lw    $t1 28($t1)     #Main.recite
    jalr  $t1
    lw      $a0, int_slot($a0)
    lw      $t1, 4($sp)
    add     $a0, $t1, $a0
    addiu   $sp, $sp, 4
    lw      $t1, 4($sp)
    sw      $a0, int_slot($t1)
    move    $a0 $t1
    addiu   $sp, $sp, 4
    addiu $sp $sp -4 # create space on stack
	la	$a0 int_const2
    sw    $a0 4($sp) # push on the stack
    move  $a0 $s0
    bne $a0 $zero label5
    la  $a0 str_const0
    li  $t1 1
    jal _dispatch_abort
label5:    lw    $t1 obj_disp($a0)
    lw    $t1 28($t1)     #Main.recite
    jalr  $t1
# create a new int object and push it on the stack
    jal     Object.copy
    sw      $a0, 0($sp)
    addiu   $sp, $sp -4
    lw      $a0, int_slot($a0)
    sw      $a0, 0($sp)
    addiu   $sp, $sp -4
    addiu $sp $sp -4 # create space on stack
	la	$a0 int_const3
    sw    $a0 4($sp) # push on the stack
    move  $a0 $s0
    bne $a0 $zero label6
    la  $a0 str_const0
    li  $t1 1
    jal _dispatch_abort
label6:    lw    $t1 obj_disp($a0)
    lw    $t1 28($t1)     #Main.recite
    jalr  $t1
    lw      $a0, int_slot($a0)
    lw      $t1, 4($sp)
    sub     $a0, $t1, $a0
    addiu   $sp, $sp, 4
    lw      $t1, 4($sp)
    sw      $a0, int_slot($t1)
    move    $a0 $t1
    addiu   $sp, $sp, 4
    addiu $sp $sp -4 # create space on stack
	la	$a0 int_const4
    sw    $a0 4($sp) # push on the stack
    move  $a0 $s0
    bne $a0 $zero label7
    la  $a0 str_const0
    li  $t1 1
    jal _dispatch_abort
label7:    lw    $t1 obj_disp($a0)
    lw    $t1 28($t1)     #Main.recite
    jalr  $t1
# create a new int object and push it on the stack
    jal     Object.copy
    sw      $a0, 0($sp)
    addiu   $sp, $sp -4
    lw      $a0, int_slot($a0)
    sw      $a0, 0($sp)
    addiu   $sp, $sp -4
    addiu $sp $sp -4 # create space on stack
	la	$a0 int_const5
    sw    $a0 4($sp) # push on the stack
    move  $a0 $s0
    bne $a0 $zero label8
    la  $a0 str_const0
    li  $t1 1
    jal _dispatch_abort
label8:    lw    $t1 obj_disp($a0)
    lw    $t1 28($t1)     #Main.recite
    jalr  $t1
    lw      $a0, int_slot($a0)
    lw      $t1, 4($sp)
    mul     $a0, $t1, $a0
    addiu   $sp, $sp, 4
    addiu $sp $sp -4 # create space on stack
	la	$a0 int_const6
    sw    $a0 4($sp) # push on the stack
    move  $a0 $s0
    bne $a0 $zero label9
    la  $a0 str_const0
    li  $t1 1
    jal _dispatch_abort
label9:    lw    $t1 obj_disp($a0)
    lw    $t1 28($t1)     #Main.recite
    jalr  $t1
# create a new int object and push it on the stack
    jal     Object.copy
    sw      $a0, 0($sp)
    addiu   $sp, $sp -4
    lw      $a0, int_slot($a0)
    sw      $a0, 0($sp)
    addiu   $sp, $sp -4
    addiu $sp $sp -4 # create space on stack
	la	$a0 int_const7
    sw    $a0 4($sp) # push on the stack
    move  $a0 $s0
    bne $a0 $zero label10
    la  $a0 str_const0
    li  $t1 1
    jal _dispatch_abort
label10:    lw    $t1 obj_disp($a0)
    lw    $t1 28($t1)     #Main.recite
    jalr  $t1
    lw      $a0, int_slot($a0)
    lw      $t1, 4($sp)
    div     $a0, $t1, $a0
    addiu   $sp, $sp, 4
    lw      $t1, 4($sp)
    sw      $a0, int_slot($t1)
    move    $a0 $t1
    addiu   $sp, $sp, 4
    addiu $sp $sp -4 # create space on stack
	la	$a0 int_const8
    sw    $a0 4($sp) # push on the stack
    move  $a0 $s0
    bne $a0 $zero label11
    la  $a0 str_const0
    li  $t1 1
    jal _dispatch_abort
label11:    lw    $t1 obj_disp($a0)
    lw    $t1 28($t1)     #Main.recite
    jalr  $t1
    lw      $a0, int_slot($a0)
    sw      $a0, 0($sp)
    addiu   $sp, $sp -4
    addiu $sp $sp -4 # create space on stack
	la	$a0 int_const9
    sw    $a0 4($sp) # push on the stack
    move  $a0 $s0
    bne $a0 $zero label12
    la  $a0 str_const0
    li  $t1 1
    jal _dispatch_abort
label12:    lw    $t1 obj_disp($a0)
    lw    $t1 28($t1)     #Main.recite
    jalr  $t1
    lw      $a0, int_slot($a0)
    lw      $t1, 4($sp)
    sub     $a0, $t1, $a0
    addiu   $sp, $sp, 4
    bltz    $a0 true_label13
false_label13:
	la	$a0 bool_const0
    b     end_comp13
true_label13:
	la	$a0 bool_const1
end_comp13:
    addiu $sp $sp -4 # create space on stack
	la	$a0 int_const10
    sw    $a0 4($sp) # push on the stack
    move  $a0 $s0
    bne $a0 $zero label14
    la  $a0 str_const0
    li  $t1 1
    jal _dispatch_abort
label14:    lw    $t1 obj_disp($a0)
    lw    $t1 28($t1)     #Main.recite
    jalr  $t1
    lw      $a0, int_slot($a0)
    sw      $a0, 0($sp)
    addiu   $sp, $sp -4
    addiu $sp $sp -4 # create space on stack
	la	$a0 int_const11
    sw    $a0 4($sp) # push on the stack
    move  $a0 $s0
    bne $a0 $zero label15
    la  $a0 str_const0
    li  $t1 1
    jal _dispatch_abort
label15:    lw    $t1 obj_disp($a0)
    lw    $t1 28($t1)     #Main.recite
    jalr  $t1
    lw      $a0, int_slot($a0)
    lw      $t1, 4($sp)
    addiu   $sp, $sp, 4
    beq     $a0, $t1 true_label16
false_label16:
	la	$a0 bool_const0
    b     end_comp16
true_label16:
	la	$a0 bool_const1
end_comp16:
    addiu $sp $sp -4 # create space on stack
	la	$a0 int_const12
    sw    $a0 4($sp) # push on the stack
    move  $a0 $s0
    bne $a0 $zero label17
    la  $a0 str_const0
    li  $t1 1
    jal _dispatch_abort
label17:    lw    $t1 obj_disp($a0)
    lw    $t1 28($t1)     #Main.recite
    jalr  $t1
    lw      $a0, int_slot($a0)
    sw      $a0, 0($sp)
    addiu   $sp, $sp -4
    addiu $sp $sp -4 # create space on stack
	la	$a0 int_const13
    sw    $a0 4($sp) # push on the stack
    move  $a0 $s0
    bne $a0 $zero label18
    la  $a0 str_const0
    li  $t1 1
    jal _dispatch_abort
label18:    lw    $t1 obj_disp($a0)
    lw    $t1 28($t1)     #Main.recite
    jalr  $t1
    lw      $a0, int_slot($a0)
    lw      $t1, 4($sp)
    sub     $a0, $t1, $a0
    addiu   $sp, $sp, 4
    blez    $a0 true_label19
false_label19:
	la	$a0 bool_const0
    b     end_comp19
true_label19:
	la	$a0 bool_const1
end_comp19:
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
