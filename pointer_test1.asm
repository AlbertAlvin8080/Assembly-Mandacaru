;==================================
;File: 
;Description:
;Author: 
;Version: 
;=================================

.code
	LDI ptr
	STA v2
	STI ptr2

end:
	INT exit

.data
	;syscall exit
	exit: DD 25
	v1: DD 10
	v2: DD 0
	ptr: DD v1
	ptr2: DD v3
	
.bss
	v3: RESD 1
	
.stack 10
