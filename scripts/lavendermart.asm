LavenderMartScript: ; 5c92c (17:492c)
	jp EnableAutoTextBoxDrawing

LavenderMartTextPointers: ; 5c92f (17:492f)
	dw LavenderMartText1
	dw LavenderMartText2
	dw LavenderMartText3

INCLUDE "data/martInventories/lavender.asm"

LavenderMartText2: ; 5c935 (17:4935)
	TX_FAR _LavenderMartText2
	db "@"

LavenderMartText3: ; 5c93a (17:493a)
	db $08 ; asm
	ld a, [wd7e0]
	bit 7, a
	jr nz, .asm_c88d4 ; 0x5c940
	ld hl, LavenderMart_5c953
	call PrintText
	jr .asm_6d225 ; 0x5c948
.asm_c88d4 ; 0x5c94a
	ld hl, LavenderMart_5c958
	call PrintText
.asm_6d225 ; 0x5c950
	jp TextScriptEnd

LavenderMart_5c953: ; 5c953 (17:4953)
	TX_FAR _LavenderMart_5c953
	db "@"

LavenderMart_5c958: ; 5c958 (17:4958)
	TX_FAR _LavenderMart_5c958
	db "@"
