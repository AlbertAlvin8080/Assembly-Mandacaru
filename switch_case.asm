;==================================
;File: 
;Description:
;Author: 
;Version: 
;=================================

.code
switch:
	MOV 1
	SUB v
	JZ case_1
	MOV 2
	SUB v
	JZ case_2
	MOV 3
	SUB v
	JZ case_3
	JMP default
	
case_1:
	MOV 9
	STA v
	JMP exit

case_2:
	MOV 11
	STA v
	JMP exit

case_3:
	MOV 33
	ADD v
	STA v
	JMP exit

default:	
	MOV 0
	STA v
	JMP exit

end:
	INT exit

.data
	;syscall exit
	exit: DD 25
	v: DD 3

.stack 10
