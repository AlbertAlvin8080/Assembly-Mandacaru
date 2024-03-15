;==================================
;File: 
;Description:
;Author: 
;Version: 
;=================================

.code

	LDA paralelo ;este bloco realiza: s1 = AND(paralelo, mascara).
	NAND mascara
	STA tmp
	NAND tmp
	STA s1

	LDA paralelo ;este blc realiza: paralelo=SHIFT(paralelo,direita).
	SHIFT direita
	STA paralelo

	NAND mascara ;este blc realiza: s2 = AND(paralelo, mascara).
	STA tmp
	NAND tmp
	STA s2

	LDA paralelo ;este blc realiza: paralelo=SHIFT(paralelo,direita).
	SHIFT direita
	STA paralelo

	NAND mascara ;este blc realiza: s3 = AND(paralelo, mascara).
	STA tmp
	NAND tmp
	STA s3

	LDA paralelo ;este blc realiza: paralelo=SHIFT(paralelo,direita).
	SHIFT direita
	STA paralelo

	NAND mascara ;este blc realiza: s4 = AND(paralelo, mascara).
	STA tmp
	NAND tmp
	STA s4

end:
	INT exit

.data
	;syscall exit
	exit: DD 25
	paralelo: DD 0000000000001010b
	mascara:  DD 0000000000000001b
	direita: DD 0
	s1: DD 0
	s2: DD 0
	s3: DD 0
	s4: DD 0
	tmp: DD 0

.stack 10


