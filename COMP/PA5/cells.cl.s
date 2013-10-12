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
str_const16:
	.word	2
	.word	5
	.word	String_dispTab
	.word	int_const1
	.byte	0	
	.align	2
	.word	-1
str_const15:
	.word	2
	.word	6
	.word	String_dispTab
	.word	int_const3
	.ascii	"Main"
	.byte	0	
	.align	2
	.word	-1
str_const14:
	.word	2
	.word	9
	.word	String_dispTab
	.word	int_const4
	.ascii	"CellularAutomaton"
	.byte	0	
	.align	2
	.word	-1
str_const13:
	.word	2
	.word	6
	.word	String_dispTab
	.word	int_const5
	.ascii	"String"
	.byte	0	
	.align	2
	.word	-1
str_const12:
	.word	2
	.word	6
	.word	String_dispTab
	.word	int_const3
	.ascii	"Bool"
	.byte	0	
	.align	2
	.word	-1
str_const11:
	.word	2
	.word	5
	.word	String_dispTab
	.word	int_const6
	.ascii	"Int"
	.byte	0	
	.align	2
	.word	-1
str_const10:
	.word	2
	.word	5
	.word	String_dispTab
	.word	int_const7
	.ascii	"IO"
	.byte	0	
	.align	2
	.word	-1
str_const9:
	.word	2
	.word	6
	.word	String_dispTab
	.word	int_const5
	.ascii	"Object"
	.byte	0	
	.align	2
	.word	-1
str_const8:
	.word	2
	.word	7
	.word	String_dispTab
	.word	int_const8
	.ascii	"_prim_slot"
	.byte	0	
	.align	2
	.word	-1
str_const7:
	.word	2
	.word	7
	.word	String_dispTab
	.word	int_const9
	.ascii	"SELF_TYPE"
	.byte	0	
	.align	2
	.word	-1
str_const6:
	.word	2
	.word	7
	.word	String_dispTab
	.word	int_const9
	.ascii	"_no_class"
	.byte	0	
	.align	2
	.word	-1
str_const5:
	.word	2
	.word	8
	.word	String_dispTab
	.word	int_const10
	.ascii	"<basic class>"
	.byte	0	
	.align	2
	.word	-1
str_const4:
	.word	2
	.word	9
	.word	String_dispTab
	.word	int_const11
	.ascii	"         X         "
	.byte	0	
	.align	2
	.word	-1
str_const3:
	.word	2
	.word	5
	.word	String_dispTab
	.word	int_const0
	.ascii	"."
	.byte	0	
	.align	2
	.word	-1
str_const2:
	.word	2
	.word	5
	.word	String_dispTab
	.word	int_const0
	.ascii	"X"
	.byte	0	
	.align	2
	.word	-1
str_const1:
	.word	2
	.word	5
	.word	String_dispTab
	.word	int_const0
	.ascii	"\n"
	.byte	0	
	.align	2
	.word	-1
str_const0:
	.word	2
	.word	7
	.word	String_dispTab
	.word	int_const12
	.ascii	"cells.cl"
	.byte	0	
	.align	2
	.word	-1
int_const12:
	.word	4
	.word	4
	.word	Int_dispTab
	.word	8
	.word	-1
int_const11:
	.word	4
	.word	4
	.word	Int_dispTab
	.word	19
	.word	-1
int_const10:
	.word	4
	.word	4
	.word	Int_dispTab
	.word	13
	.word	-1
int_const9:
	.word	4
	.word	4
	.word	Int_dispTab
	.word	9
	.word	-1
int_const8:
	.word	4
	.word	4
	.word	Int_dispTab
	.word	10
	.word	-1
int_const7:
	.word	4
	.word	4
	.word	Int_dispTab
	.word	2
	.word	-1
int_const6:
	.word	4
	.word	4
	.word	Int_dispTab
	.word	3
	.word	-1
int_const5:
	.word	4
	.word	4
	.word	Int_dispTab
	.word	6
	.word	-1
int_const4:
	.word	4
	.word	4
	.word	Int_dispTab
	.word	17
	.word	-1
int_const3:
	.word	4
	.word	4
	.word	Int_dispTab
	.word	4
	.word	-1
int_const2:
	.word	4
	.word	4
	.word	Int_dispTab
	.word	20
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
	.word	4
	.word	Main_dispTab
	.word	0     #CellularAutomaton cells
	.word	-1
CellularAutomaton_protObj:
	.word	1
	.word	4
	.word	CellularAutomaton_dispTab
	.word	str_const16
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
    .word CellularAutomaton_protObj
    .word CellularAutomaton_init
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
Main_dispTab:
	.word	Object.abort
	.word	Object.type_name
	.word	Object.copy
	.word	Main.main
CellularAutomaton_dispTab:
	.word	Object.abort
	.word	Object.type_name
	.word	Object.copy
	.word	IO.out_string
	.word	IO.out_int
	.word	IO.in_string
	.word	IO.in_int
	.word	CellularAutomaton.init
	.word	CellularAutomaton.print
	.word	CellularAutomaton.num_cells
	.word	CellularAutomaton.cell
	.word	CellularAutomaton.cell_left_neighbor
	.word	CellularAutomaton.cell_right_neighbor
	.word	CellularAutomaton.cell_at_next_evolution
	.word	CellularAutomaton.evolve
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
 # offset = 16
    addiu   $sp $sp -16  # push 3 items on the stack:
    sw  $fp 16($sp)      # 1. the caller's frame pointer 
    sw  $s0 12($sp)    # 2. the caller's? self object
    sw  $ra 8($sp)    # 3. the return address 
    addiu   $fp $sp 4          # set the fp to the activation record of the function
    move    $s0 $a0            # move the self object to $a0
    la $a0 str_const4
    sw    $a0 0($sp)  # push arg 0 on stack
    addiu $sp $sp -4 # for call to init
la  $a0 CellularAutomaton_protObj      # get the address of the prottype
jal Object.copy                          # make a copy
jal CellularAutomaton_init              # and initialize it
    bne $a0 $zero label1
    la  $a0 str_const0
    li  $t1 1
    jal _dispatch_abort
label1:    lw    $t1 obj_disp($a0)
    lw    $t1 28($t1)     #CellularAutomaton.init
    jalr  $t1
    sw    $a0 12($s0) #    member var: Main.cells
    lw    $a0 12($s0) #    member var: Main.cells
    bne $a0 $zero label2
    la  $a0 str_const0
    li  $t1 1
    jal _dispatch_abort
label2:    lw    $t1 obj_disp($a0)
    lw    $t1 32($t1)     #CellularAutomaton.print
    jalr  $t1
    # start of let block
 nop # start let initializer identifier
    la $a0 int_const2 # load 20
# end let initializer
    sw  $a0 0($fp) # initialize let countdown
# start coding a loop statement
loop_start3:
    la $a0 int_const1 # load 0
    lw      $a0, int_slot($a0)
    sw      $a0, 0($sp)
    addiu   $sp, $sp -4
    lw    $a0 0($fp) #   local var: countdown
    lw      $a0, int_slot($a0)
    lw      $t1, 4($sp)
    sub     $a0, $t1, $a0
    addiu   $sp, $sp, 4
    bltz    $a0 true_label4
false_label4:
	la	$a0 bool_const0
    b     end_comp4
true_label4:
	la	$a0 bool_const1
end_comp4:
    lw      $t1, bool_slot($a0)
    beq     $t1, 0, loop_end3
    lw    $a0 12($s0) #    member var: Main.cells
    bne $a0 $zero label5
    la  $a0 str_const0
    li  $t1 1
    jal _dispatch_abort
label5:    lw    $t1 obj_disp($a0)
    lw    $t1 56($t1)     #CellularAutomaton.evolve
    jalr  $t1
    lw    $a0 12($s0) #    member var: Main.cells
    bne $a0 $zero label6
    la  $a0 str_const0
    li  $t1 1
    jal _dispatch_abort
label6:    lw    $t1 obj_disp($a0)
    lw    $t1 32($t1)     #CellularAutomaton.print
    jalr  $t1
    lw    $a0 0($fp) #   local var: countdown
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
    sub     $a0, $t1, $a0
    addiu   $sp, $sp, 4
    lw      $t1, 4($sp)
    sw      $a0, int_slot($t1)
    move    $a0 $t1
    addiu   $sp, $sp, 4
    sw    $a0 0($fp) #   local var: countdown
loop_end3:
    li      $a0, 0
    # end of let block
    move  $a0 $s0
    lw  $fp 16($sp)            # restore the caller's registers
    lw  $s0 12($sp)             # etc 
    lw  $ra 8($sp)             # etc 
    addiu $sp $sp 16           # restore stack pointer 
    jr  $ra                    # and jump back
CellularAutomaton_init:
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
CellularAutomaton.init:
# param 12($fp)  map:String
 # offset = 12
    addiu   $sp $sp -12  # push 3 items on the stack:
    sw  $fp 12($sp)      # 1. the caller's frame pointer 
    sw  $s0 8($sp)    # 2. the caller's? self object
    sw  $ra 4($sp)    # 3. the return address 
    addiu   $fp $sp 4          # set the fp to the activation record of the function
    move    $s0 $a0            # move the self object to $a0
    lw    $a0 12($fp) #   local var: map
    sw    $a0 12($s0) #    member var: CellularAutomaton.population_map
    move  $a0 $s0
    lw  $fp 12($sp)            # restore the caller's registers
    lw  $s0 8($sp)             # etc 
    lw  $ra 4($sp)             # etc 
    addiu $sp $sp 16           # restore stack pointer 
    jr  $ra                    # and jump back
CellularAutomaton.print:
 # offset = 12
    addiu   $sp $sp -12  # push 3 items on the stack:
    sw  $fp 12($sp)      # 1. the caller's frame pointer 
    sw  $s0 8($sp)    # 2. the caller's? self object
    sw  $ra 4($sp)    # 3. the return address 
    addiu   $fp $sp 4          # set the fp to the activation record of the function
    move    $s0 $a0            # move the self object to $a0
    la $a0 str_const1
    sw    $a0 0($sp)  # push arg 0 on stack
    addiu $sp $sp -4 # for call to concat
    lw    $a0 12($s0) #    member var: CellularAutomaton.population_map
    bne $a0 $zero label7
    la  $a0 str_const0
    li  $t1 1
    jal _dispatch_abort
label7:    lw    $t1 obj_disp($a0)
    lw    $t1 16($t1)     #String.concat
    jalr  $t1
    sw    $a0 0($sp)  # push arg 0 on stack
    addiu $sp $sp -4 # for call to out_string
    move  $a0 $s0
    bne $a0 $zero label8
    la  $a0 str_const0
    li  $t1 1
    jal _dispatch_abort
label8:    lw    $t1 obj_disp($a0)
    lw    $t1 12($t1)     #CellularAutomaton.out_string
    jalr  $t1
    move  $a0 $s0
    lw  $fp 12($sp)            # restore the caller's registers
    lw  $s0 8($sp)             # etc 
    lw  $ra 4($sp)             # etc 
    addiu $sp $sp 12           # restore stack pointer 
    jr  $ra                    # and jump back
CellularAutomaton.num_cells:
 # offset = 12
    addiu   $sp $sp -12  # push 3 items on the stack:
    sw  $fp 12($sp)      # 1. the caller's frame pointer 
    sw  $s0 8($sp)    # 2. the caller's? self object
    sw  $ra 4($sp)    # 3. the return address 
    addiu   $fp $sp 4          # set the fp to the activation record of the function
    move    $s0 $a0            # move the self object to $a0
    lw    $a0 12($s0) #    member var: CellularAutomaton.population_map
    bne $a0 $zero label9
    la  $a0 str_const0
    li  $t1 1
    jal _dispatch_abort
label9:    lw    $t1 obj_disp($a0)
    lw    $t1 12($t1)     #String.length
    jalr  $t1
    lw  $fp 12($sp)            # restore the caller's registers
    lw  $s0 8($sp)             # etc 
    lw  $ra 4($sp)             # etc 
    addiu $sp $sp 12           # restore stack pointer 
    jr  $ra                    # and jump back
CellularAutomaton.cell:
# param 12($fp)  position:Int
 # offset = 12
    addiu   $sp $sp -12  # push 3 items on the stack:
    sw  $fp 12($sp)      # 1. the caller's frame pointer 
    sw  $s0 8($sp)    # 2. the caller's? self object
    sw  $ra 4($sp)    # 3. the return address 
    addiu   $fp $sp 4          # set the fp to the activation record of the function
    move    $s0 $a0            # move the self object to $a0
    lw    $a0 12($fp) #   local var: position
    sw    $a0 0($sp)  # push arg 0 on stack
    addiu $sp $sp -4 # for call to substr
    la $a0 int_const0 # load 1
    sw    $a0 0($sp)  # push arg 1 on stack
    addiu $sp $sp -4 # for call to substr
    lw    $a0 12($s0) #    member var: CellularAutomaton.population_map
    bne $a0 $zero label10
    la  $a0 str_const0
    li  $t1 1
    jal _dispatch_abort
label10:    lw    $t1 obj_disp($a0)
    lw    $t1 20($t1)     #String.substr
    jalr  $t1
    lw  $fp 12($sp)            # restore the caller's registers
    lw  $s0 8($sp)             # etc 
    lw  $ra 4($sp)             # etc 
    addiu $sp $sp 16           # restore stack pointer 
    jr  $ra                    # and jump back
CellularAutomaton.cell_left_neighbor:
# param 12($fp)  position:Int
 # offset = 12
    addiu   $sp $sp -12  # push 3 items on the stack:
    sw  $fp 12($sp)      # 1. the caller's frame pointer 
    sw  $s0 8($sp)    # 2. the caller's? self object
    sw  $ra 4($sp)    # 3. the return address 
    addiu   $fp $sp 4          # set the fp to the activation record of the function
    move    $s0 $a0            # move the self object to $a0
# start coding an if statement
    lw    $a0 12($fp) #   local var: position
    lw      $a0, int_slot($a0)
    sw      $a0, 0($sp)
    addiu   $sp, $sp -4
    la $a0 int_const1 # load 0
    lw      $a0, int_slot($a0)
    lw      $t1, 4($sp)
    addiu   $sp, $sp, 4
    beq     $a0, $t1 true_label11
false_label11:
	la	$a0 bool_const0
    b     end_comp11
true_label11:
	la	$a0 bool_const1
end_comp11:
    lw      $t1, bool_slot($a0)
    beq     $t1, 1, true_branch12
false_branch12:
    lw    $a0 12($fp) #   local var: position
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
    sub     $a0, $t1, $a0
    addiu   $sp, $sp, 4
    lw      $t1, 4($sp)
    sw      $a0, int_slot($t1)
    move    $a0 $t1
    addiu   $sp, $sp, 4
    sw    $a0 0($sp)  # push arg 0 on stack
    addiu $sp $sp -4 # for call to cell
    move  $a0 $s0
    bne $a0 $zero label13
    la  $a0 str_const0
    li  $t1 1
    jal _dispatch_abort
label13:    lw    $t1 obj_disp($a0)
    lw    $t1 40($t1)     #CellularAutomaton.cell
    jalr  $t1
    b       end_if12
true_branch12:
    move  $a0 $s0
    bne $a0 $zero label14
    la  $a0 str_const0
    li  $t1 1
    jal _dispatch_abort
label14:    lw    $t1 obj_disp($a0)
    lw    $t1 36($t1)     #CellularAutomaton.num_cells
    jalr  $t1
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
    sub     $a0, $t1, $a0
    addiu   $sp, $sp, 4
    lw      $t1, 4($sp)
    sw      $a0, int_slot($t1)
    move    $a0 $t1
    addiu   $sp, $sp, 4
    sw    $a0 0($sp)  # push arg 0 on stack
    addiu $sp $sp -4 # for call to cell
    move  $a0 $s0
    bne $a0 $zero label15
    la  $a0 str_const0
    li  $t1 1
    jal _dispatch_abort
label15:    lw    $t1 obj_disp($a0)
    lw    $t1 40($t1)     #CellularAutomaton.cell
    jalr  $t1
end_if12:
    lw  $fp 12($sp)            # restore the caller's registers
    lw  $s0 8($sp)             # etc 
    lw  $ra 4($sp)             # etc 
    addiu $sp $sp 16           # restore stack pointer 
    jr  $ra                    # and jump back
CellularAutomaton.cell_right_neighbor:
# param 12($fp)  position:Int
 # offset = 12
    addiu   $sp $sp -12  # push 3 items on the stack:
    sw  $fp 12($sp)      # 1. the caller's frame pointer 
    sw  $s0 8($sp)    # 2. the caller's? self object
    sw  $ra 4($sp)    # 3. the return address 
    addiu   $fp $sp 4          # set the fp to the activation record of the function
    move    $s0 $a0            # move the self object to $a0
# start coding an if statement
    lw    $a0 12($fp) #   local var: position
    lw      $a0, int_slot($a0)
    sw      $a0, 0($sp)
    addiu   $sp, $sp -4
    move  $a0 $s0
    bne $a0 $zero label16
    la  $a0 str_const0
    li  $t1 1
    jal _dispatch_abort
label16:    lw    $t1 obj_disp($a0)
    lw    $t1 36($t1)     #CellularAutomaton.num_cells
    jalr  $t1
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
    sub     $a0, $t1, $a0
    addiu   $sp, $sp, 4
    lw      $t1, 4($sp)
    sw      $a0, int_slot($t1)
    move    $a0 $t1
    addiu   $sp, $sp, 4
    lw      $a0, int_slot($a0)
    lw      $t1, 4($sp)
    addiu   $sp, $sp, 4
    beq     $a0, $t1 true_label17
false_label17:
	la	$a0 bool_const0
    b     end_comp17
true_label17:
	la	$a0 bool_const1
end_comp17:
    lw      $t1, bool_slot($a0)
    beq     $t1, 1, true_branch18
false_branch18:
    lw    $a0 12($fp) #   local var: position
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
    sw    $a0 0($sp)  # push arg 0 on stack
    addiu $sp $sp -4 # for call to cell
    move  $a0 $s0
    bne $a0 $zero label19
    la  $a0 str_const0
    li  $t1 1
    jal _dispatch_abort
label19:    lw    $t1 obj_disp($a0)
    lw    $t1 40($t1)     #CellularAutomaton.cell
    jalr  $t1
    b       end_if18
true_branch18:
    la $a0 int_const1 # load 0
    sw    $a0 0($sp)  # push arg 0 on stack
    addiu $sp $sp -4 # for call to cell
    move  $a0 $s0
    bne $a0 $zero label20
    la  $a0 str_const0
    li  $t1 1
    jal _dispatch_abort
label20:    lw    $t1 obj_disp($a0)
    lw    $t1 40($t1)     #CellularAutomaton.cell
    jalr  $t1
end_if18:
    lw  $fp 12($sp)            # restore the caller's registers
    lw  $s0 8($sp)             # etc 
    lw  $ra 4($sp)             # etc 
    addiu $sp $sp 16           # restore stack pointer 
    jr  $ra                    # and jump back
CellularAutomaton.cell_at_next_evolution:
# param 12($fp)  position:Int
 # offset = 12
    addiu   $sp $sp -12  # push 3 items on the stack:
    sw  $fp 12($sp)      # 1. the caller's frame pointer 
    sw  $s0 8($sp)    # 2. the caller's? self object
    sw  $ra 4($sp)    # 3. the return address 
    addiu   $fp $sp 4          # set the fp to the activation record of the function
    move    $s0 $a0            # move the self object to $a0
# start coding an if statement
# start coding an if statement
    lw    $a0 12($fp) #   local var: position
    sw    $a0 0($sp)  # push arg 0 on stack
    addiu $sp $sp -4 # for call to cell
    move  $a0 $s0
    bne $a0 $zero label21
    la  $a0 str_const0
    li  $t1 1
    jal _dispatch_abort
label21:    lw    $t1 obj_disp($a0)
    lw    $t1 40($t1)     #CellularAutomaton.cell
    jalr  $t1
    lw      $a0, str_field($a0)
    sw      $a0, 0($sp)
    addiu   $sp, $sp -4
    la $a0 str_const2
    lw      $a0, str_field($a0)
    lw      $t1, 4($sp)
    addiu   $sp, $sp, 4
    beq     $a0, $t1 true_label22
false_label22:
	la	$a0 bool_const0
    b     end_comp22
true_label22:
	la	$a0 bool_const1
end_comp22:
    lw      $t1, bool_slot($a0)
    beq     $t1, 1, true_branch23
false_branch23:
    la $a0 int_const1 # load 0
    b       end_if23
true_branch23:
    la $a0 int_const0 # load 1
end_if23:
# create a new int object and push it on the stack
    jal     Object.copy
    sw      $a0, 0($sp)
    addiu   $sp, $sp -4
    lw      $a0, int_slot($a0)
    sw      $a0, 0($sp)
    addiu   $sp, $sp -4
# start coding an if statement
    lw    $a0 12($fp) #   local var: position
    sw    $a0 0($sp)  # push arg 0 on stack
    addiu $sp $sp -4 # for call to cell_left_neighbor
    move  $a0 $s0
    bne $a0 $zero label24
    la  $a0 str_const0
    li  $t1 1
    jal _dispatch_abort
label24:    lw    $t1 obj_disp($a0)
    lw    $t1 44($t1)     #CellularAutomaton.cell_left_neighbor
    jalr  $t1
    lw      $a0, str_field($a0)
    sw      $a0, 0($sp)
    addiu   $sp, $sp -4
    la $a0 str_const2
    lw      $a0, str_field($a0)
    lw      $t1, 4($sp)
    addiu   $sp, $sp, 4
    beq     $a0, $t1 true_label25
false_label25:
	la	$a0 bool_const0
    b     end_comp25
true_label25:
	la	$a0 bool_const1
end_comp25:
    lw      $t1, bool_slot($a0)
    beq     $t1, 1, true_branch26
false_branch26:
    la $a0 int_const1 # load 0
    b       end_if26
true_branch26:
    la $a0 int_const0 # load 1
end_if26:
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
# start coding an if statement
    lw    $a0 12($fp) #   local var: position
    sw    $a0 0($sp)  # push arg 0 on stack
    addiu $sp $sp -4 # for call to cell_right_neighbor
    move  $a0 $s0
    bne $a0 $zero label27
    la  $a0 str_const0
    li  $t1 1
    jal _dispatch_abort
label27:    lw    $t1 obj_disp($a0)
    lw    $t1 48($t1)     #CellularAutomaton.cell_right_neighbor
    jalr  $t1
    lw      $a0, str_field($a0)
    sw      $a0, 0($sp)
    addiu   $sp, $sp -4
    la $a0 str_const2
    lw      $a0, str_field($a0)
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
    la $a0 int_const1 # load 0
    b       end_if29
true_branch29:
    la $a0 int_const0 # load 1
end_if29:
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
    la $a0 int_const0 # load 1
    lw      $a0, int_slot($a0)
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
    la $a0 str_const3
    b       end_if31
true_branch31:
    la $a0 str_const2
end_if31:
    lw  $fp 12($sp)            # restore the caller's registers
    lw  $s0 8($sp)             # etc 
    lw  $ra 4($sp)             # etc 
    addiu $sp $sp 16           # restore stack pointer 
    jr  $ra                    # and jump back
CellularAutomaton.evolve:
 # offset = 24
    addiu   $sp $sp -24  # push 3 items on the stack:
    sw  $fp 24($sp)      # 1. the caller's frame pointer 
    sw  $s0 20($sp)    # 2. the caller's? self object
    sw  $ra 16($sp)    # 3. the return address 
    addiu   $fp $sp 4          # set the fp to the activation record of the function
    move    $s0 $a0            # move the self object to $a0
    # start of let block
    la $a0 int_const1
    sw  $a0 8($fp) # initialize let position
    # start of let block
 nop # start let initializer identifier
    move  $a0 $s0
    bne $a0 $zero label32
    la  $a0 str_const0
    li  $t1 1
    jal _dispatch_abort
label32:    lw    $t1 obj_disp($a0)
    lw    $t1 36($t1)     #CellularAutomaton.num_cells
    jalr  $t1
# end let initializer
    sw  $a0 4($fp) # initialize let num
    # start of let block
    la $a0 str_const16
    sw  $a0 0($fp) # initialize let temp
# start coding a loop statement
loop_start33:
    lw    $a0 8($fp) #   local var: position
    lw      $a0, int_slot($a0)
    sw      $a0, 0($sp)
    addiu   $sp, $sp -4
    lw    $a0 4($fp) #   local var: num
    lw      $a0, int_slot($a0)
    lw      $t1, 4($sp)
    sub     $a0, $t1, $a0
    addiu   $sp, $sp, 4
    bltz    $a0 true_label34
false_label34:
	la	$a0 bool_const0
    b     end_comp34
true_label34:
	la	$a0 bool_const1
end_comp34:
    lw      $t1, bool_slot($a0)
    beq     $t1, 0, loop_end33
    lw    $a0 8($fp) #   local var: position
    sw    $a0 0($sp)  # push arg 0 on stack
    addiu $sp $sp -4 # for call to cell_at_next_evolution
    move  $a0 $s0
    bne $a0 $zero label35
    la  $a0 str_const0
    li  $t1 1
    jal _dispatch_abort
label35:    lw    $t1 obj_disp($a0)
    lw    $t1 52($t1)     #CellularAutomaton.cell_at_next_evolution
    jalr  $t1
    sw    $a0 0($sp)  # push arg 0 on stack
    addiu $sp $sp -4 # for call to concat
    lw    $a0 0($fp) #   local var: temp
    bne $a0 $zero label36
    la  $a0 str_const0
    li  $t1 1
    jal _dispatch_abort
label36:    lw    $t1 obj_disp($a0)
    lw    $t1 16($t1)     #String.concat
    jalr  $t1
    sw    $a0 0($fp) #   local var: temp
    lw    $a0 8($fp) #   local var: position
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
    sw    $a0 8($fp) #   local var: position
loop_end33:
    li      $a0, 0
    lw    $a0 0($fp) #   local var: temp
    sw    $a0 12($s0) #    member var: CellularAutomaton.population_map
    move  $a0 $s0
    # end of let block
    # end of let block
    # end of let block
    lw  $fp 24($sp)            # restore the caller's registers
    lw  $s0 20($sp)             # etc 
    lw  $ra 16($sp)             # etc 
    addiu $sp $sp 24           # restore stack pointer 
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
