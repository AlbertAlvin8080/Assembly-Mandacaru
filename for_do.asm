;==================================
;File: 
;Description:
;Author: 
;Version: 
;=================================

.code
for:
	MOV 2
	SUB cont
	JZ end
	MOV 1
	ADD cont
	STA cont

do:
	LDA v
	ADD v
	STA v
	JMP for

end:
	INT exit

.data
	;syscall exit
	exit: DD 25
	cont: DD 0
	v: DD 10

.stack 10
