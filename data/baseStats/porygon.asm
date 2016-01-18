PorygonBaseStats: ; 392be (e:52be)
db DEX_PORYGON ; pokedex id
db 65 ; base hp
db 60 ; base attack
db 70 ; base defense
db 40 ; base speed
db 85 ; base special
db NORMAL ; species type 1
db NORMAL ; species type 2
db 45 ; catch rate
db 130 ; base exp yield
IF GEN_2_SPRITES
INCBIN "pic/gsmon/porygon.pic",0,1 ; 66, sprite dimensions
ELSE
INCBIN "pic/bmon/porygon.pic",0,1 ; 66, sprite dimensions
ENDC
dw PorygonPicFront
dw PorygonPicBack
; attacks known at lvl 0
db TACKLE
db SHARPEN
db CONVERSION
db 0
db 0 ; growth rate
; learnset
db %00100000
db %01110011
db %10000000
db %11010001
db %11000001
db %00111000
db %01000011
db BANK(PorygonPicFront)
