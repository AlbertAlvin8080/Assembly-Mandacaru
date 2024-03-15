;==================================
;File: 
;Description:
;Author: 
;Version: 
;=================================

.code
while:
	LDA dividendo
	SUB divisor
	JN end
	
do:	
	LDA dividendo
	SUB divisor
	STA dividendo
	
	MOV 1
	ADD quociente
	STA quociente	

	JMP while

end:
	INT exit

.data
	;syscall exit
	exit: DD 25
	dividendo: DD 30
	divisor: DD 6

.bss
	quociente: RESD 1

.stack 10
