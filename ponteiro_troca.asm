;==================================
;File: 
;Description:
;Author: 
;Version: 
;=================================

.code
	LDI ptr
	ADD v2
	STA v2

	MOV v3
	STA ptr
	LDA v1
	STI ptr

end:
	INT exit

.data
	;syscall exit
	exit: DD 25
	v1: DD 10
	v2: DD 20
	ptr: DD v1

.bss
	v3: RESD 1

.stack 10
