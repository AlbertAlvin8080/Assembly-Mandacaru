;==================================
;File: 
;Description:
;Author: 
;Version: 
;=================================

.code
while:	
	LDI ptr
	SUB terminator
	JZ pos_while

do:
	LDI ptr
	STI ptr2
	
	MOV 1
	ADD ptr
	STA ptr

	MOV 1
	ADD ptr2
	STA ptr2

	JMP while
	
pos_while:
	MOV 0
	STI ptr2

end:
	INT exit

.data
	;syscall exit
	exit: DD 25
	str: INITB "hello",0
	ptr: DD str
	ptr2: DD str2
	terminator: DD 0

.bss
	str2: RESD 6

.stack 1
