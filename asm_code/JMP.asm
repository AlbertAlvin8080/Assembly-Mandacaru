;==================================
;File: 
;Description:
;Author: 
;Version: 
;=================================

.code
	JMP end ;salta para end:.
	LDA var1 ;este bloco realiza: var1 = var1 + var2.
	ADD var2
	STA var1

end:
	INT exit

.data
	;syscall exit
	exit: DD 25
	var1: DD 10
	var2: DD 20

.stack 10
