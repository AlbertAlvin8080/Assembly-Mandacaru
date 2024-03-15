;==================================
;File: 
;Description:
;Author: 
;Version: 
;=================================

.code
while:
	LDI ptr
	SUB zero
	JZ pos_while

do_if:
	LDI ptr
	SUB char
	JZ end
	
then:
	MOV 1
	ADD cnt
	STA cnt

	MOV 1
	ADD ptr
	STA ptr
	
	JMP while

pos_while:
	LDA negative
	STA cnt

end:
	INT exit

.data
	;syscall exit
	exit: DD 25
	str: INITB "Hello!",0
	ptr: DD str
	char: DB '!'

	cnt: DD 0
	zero: DD 0	
	negative: DD -1

.stack 1
