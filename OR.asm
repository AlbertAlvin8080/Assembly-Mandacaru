;==================================
;File: operação OR
;Description:
;Author: 
;Version: 
;=================================

.code

	LDA v1
	NAND v1 ; operação NOT
	STA tmp
	
	LDA v2
	NAND v2
	NAND tmp

end:
	INT exit

.data
	;syscall exit
	exit: DD 25
	v1: DD 0000111100000111b
	v2: DD 0000000000001111b
	tmp: DD 0

.stack 2

