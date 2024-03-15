;==================================
;File: 
;Description:
;Author: 
;Version: 
;=================================

.code
while:
	MOV 50
	SUB value
	JZ end

do:
	LDA value
	SUB ten
	STA value
	JMP while

end:
	INT exit

.data
	;syscall exit
	exit: DD 25
	value: DD 100
	ten: DD 10	

.stack 10
