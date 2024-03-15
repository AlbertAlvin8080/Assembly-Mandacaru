;==================================
;File: 
;Description:
;Author: 
;Version: 
;=================================

.code
for:
	MOV 3
	SUB i
	JZ end
	
	MOV 1
	ADD i
	STA i

do:
	LDI ptr
	ADD soma
	STA soma
	
	MOV 1
	ADD ptr
	STA ptr
	
	JMP for

end:
	INT exit

.data
	;syscall exit
	exit: DD 25
	vetor: INITD 1, 3, 1
	ptr: DD vetor
	soma: DD 0
	i: DD 0

.stack 1
