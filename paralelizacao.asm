;==================================
;File: 
;Description:
;Author: 
;Version: 
;=================================

.code
	LDA s1 ;este bloco realiza: paralelo = s1 << 1.
	SHIFT esquerda
	STA paralelo
	ADD s2 ;este blc realiza: paralelo = (paralelo+s2) << 1.
	SHIFT esquerda
	STA paralelo
	ADD s3 ;este blc realiza: paralelo = (paralelo+s3) << 1.
	SHIFT esquerda
	STA paralelo
	ADD s4 ;este blc realiza: paralelo = paralelo + s4.
	STA paralelo

end:
	INT exit

.data
	;syscall exit
	exit: DD 25
	exit: DD 25
	s1: DD 1
	s2: DD 1
	s3: DD 1
	s4: DD 0
	esquerda: DD 1
	paralelo: DD 0

.stack 10
