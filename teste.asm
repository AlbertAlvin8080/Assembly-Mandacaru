;==================================
;File: 
;Description:
;Author: 
;Version: 
;=================================

.code
end:
	INT exit

.data
	;syscall exit
	exit: DD 25
	var1: DD 10
	var2: DB 'A'
	array1: INITD 10,11,12
	array2: INITB 'A',"BC",0

.bss
	var3: RESD 1
	array3: RESB 3

ORG 3

.stack 2
