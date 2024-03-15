;==================================
;File: teste condicionais
;Description:
;Author: 
;Version: 
;=================================

.code
if:
	LDA var1
	SUB var2
	JZ else
	JN else	

then:
	LDA var1 ;var2 = var1.
	STA var2
	JMP end
	
else:
	LDA var2 ;var1 = var2 + var2.
	ADD var2
	STA var1

end:
	INT exit

.data
	;syscall exit
	exit: DD 25
	var1: DD 25
	var2: DD 25

.stack 10
