DungeonMons2:
	db $0F
IF CHALLENGE_MODE
	IF DEF(_RED)
		db 68,GOLBAT
		db 63,MACHOKE
		db 70,PARASECT
		db 72,KADABRA
		db 73,BOLDORE
		db 65,MAGNETON
		db 67,MACHOKE
		db 68,EXCADRILL
		db 71,ELECTRODE
		db 71,ELECTRODE
	ENDC
	IF DEF(_BLUE)
		db 68,GOLBAT
		db 63,MACHOKE
		db 70,BRELOOM
		db 72,KADABRA
		db 73,GRAVELER
		db 65,KLANG
		db 67,MACHOKE
		db 68,EXCADRILL
		db 71,ELECTRODE
		db 71,ELECTRODE
	ENDC
ELSE
; Normal Mode
	IF DEF(_RED)
		db 58,GOLBAT
		db 53,MACHOKE
		db 60,PARASECT
		db 62,KADABRA
		db 63,BOLDORE
		db 55,MAGNETON
		db 57,MACHOKE
		db 58,EXCADRILL
		db 61,ELECTRODE
		db 61,ELECTRODE
	ENDC
	IF DEF(_BLUE)
		db 58,GOLBAT
		db 53,MACHOKE
		db 60,BRELOOM
		db 62,KADABRA
		db 63,GRAVELER
		db 55,KLANG
		db 57,MACHOKE
		db 58,EXCADRILL
		db 61,ELECTRODE
		db 61,ELECTRODE
	ENDC
ENDC
	db $00

