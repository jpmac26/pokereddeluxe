MansionMons3:
	db $0A
	IF DEF(_RED)
		db 31,KOFFING
		db 33,GROWLITHE
		db 35,KOFFING
		db 32,RATICATE
		db 34,RATICATE
		db 40,WEEZING
		db 34,RATICATE
		db 38,WEEZING
		db 36,RATICATE
		db 15,MAGBY
	ENDC

	IF DEF(_BLUE)
		db 31,GRIMER
		db 33,VULPIX
		db 35,GRIMER
		db 32,RATICATE
		db 34,RATICATE
		db 40,MUK
		db 34,RATICATE
		db 38,MUK
		db 15,MAGBY
		db 15,MAGBY
	ENDC

	db $00

