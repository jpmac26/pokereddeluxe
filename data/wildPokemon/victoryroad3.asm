PlateauMons3:
	db $0F
IF CHALLENGE_MODE
	IF DEF(_RED)
		db 52,MACHOKE
		db 54,BOLDORE
		db 50,GOLBAT
		db 54,DONPHAN
		db 53,ZWEILOUS
		db 54,RHYDON
		db 53,DRUDDIGON
		db 55,DRUDDIGON
		db 55,ZWEILOUS
		db 55,STEELIX
	ENDC
	IF DEF(_BLUE)
		db 52,MACHOKE
		db 54,GRAVELER
		db 50,GOLBAT
		db 54,DONPHAN
		db 53,GOLURK
		db 54,RHYDON
		db 53,DRUDDIGON
		db 55,DRUDDIGON
		db 55,GOLURK
		db 55,STEELIX
	ENDC
ELSE
; Normal Mode
	IF DEF(_RED)
		db 42,MACHOKE
		db 44,BOLDORE
		db 40,GOLBAT
		db 44,DONPHAN
		db 43,DEINO
		db 44,RHYHORN
		db 43,DRUDDIGON
		db 45,DRUDDIGON
		db 45,ZWEILOUS
		db 45,STEELIX
	ENDC
	IF DEF(_BLUE)
		db 42,MACHOKE
		db 44,GRAVELER
		db 40,GOLBAT
		db 44,DONPHAN
		db 43,GOLETT
		db 44,RHYHORN
		db 43,DRUDDIGON
		db 45,DRUDDIGON
		db 45,GOLURK
		db 45,STEELIX
	ENDC
ENDC
	db $00

