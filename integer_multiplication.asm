;==================================
;File: 
;Description:
;Author: 
;Version: 
;=================================

.code
while:
	LDA v1
	SUB cnt
	JZ end

do:
	LDA result
	ADD v2
	STA result
	
	MOV 1
	ADD cnt
	STA cnt
	
	JMP while

end:
	INT exit

.data
	;syscall exit
	exit: DD 25
	v1: DD 5
	v2: DD 5
	cnt: DD 0

.bss
	result: RESD 1

.stack 1
