Route22Mons:
	db $19
	IF DEF(_RED)
		db 3,RATTATA
		db 3,NIDORAN_M
		db 4,RATTATA
		db 4,NIDORAN_M
		db 5,MANKEY
		db 2,NIDORAN_M
		db 5,SPEAROW
		db 6,SPEAROW
		db 3,NIDORAN_F
		db 5,PANCHAM
	ENDC
	IF DEF(_BLUE)
		db 3,RATTATA
		db 3,NIDORAN_F
		db 4,RATTATA
		db 4,NIDORAN_F
		db 5,PANCHAM
		db 2,NIDORAN_F
		db 5,SPEAROW
		db 6,SPEAROW
		db 3,NIDORAN_M
		db 5,MANKEY
	ENDC
	db $00

