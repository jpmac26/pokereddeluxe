SECTION "bank30",ROMX,BANK[$30]
LoadSGBPalette:
	ld a,e
	ld l,d
	ld h,0
	add hl
	add hl
	add hl
	ld de,SuperPalettes
	add hl,de

	ld de,W2_BgPaletteData
	jr startPaletteTransfer

LoadSGBPalette_Sprite:
	ld a,e

	ld l,d
	ld h,0
	add hl
	add hl
	add hl
	ld de,SuperPalettes
	add hl,de

	ld de,W2_BgPaletteData + $40

startPaletteTransfer:
	add a
	add a
	add a
	add e
	ld e,a
	ld b,8
	
.palLoop
	ld a,[hli]
	ld [de],a
	inc de
	dec b
	jr nz,.palLoop
	ret

	INCLUDE "data/super_palettes.asm"
