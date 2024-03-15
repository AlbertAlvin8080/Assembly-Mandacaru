;==================================
;File: operacao AND
;Description:
;Author: 
;Version: 
;=================================

.code
	LDA v1
	NAND v2
	STA tmp
	NAND tmp

end:
	INT exit

.data
	;syscall exit
	exit: DD 25
	v1: DD 1000000000000001b
	v2: DD 0000000000000001b

.bss
	tmp: RESD 1

.stack 10


