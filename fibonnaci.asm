;==================================
;File: 
;Description:
;Author: 
;Version: 
;=================================

.code
if:
	MOV 1
	SUB n
	JZ resultado_1

else_if:
	MOV 2
	SUB n
	JZ resultado_1

else_for:
	LDA n
	SUB i
	JZ fim_for
	MOV 1
	ADD i
	STA i

do:
	LDA penultimo
	ADD ultimo
	STA tmp

	LDA ultimo
	STA penultimo

	LDA tmp
	STA ultimo
	
	JMP else_for

fim_for:
	LDA ultimo
	STA resultado
	JMP end

resultado_1:
	MOV 1
	STA resultado

end:
	INT exit

.data
	;syscall exit
	exit: DD 25
	n: DD 8
	ultimo: DD 1
	penultimo: DD 1
	tmp: DD 0
	i: DD 2
	resultado: DD 0

.stack 10
