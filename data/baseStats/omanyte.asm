OmanyteBaseStats: ; 392da (e:52da)
db DEX_OMANYTE ; pokedex id
db 35 ; base hp
db 40 ; base attack
db 100 ; base defense
db 35 ; base speed
db 90 ; base special
db ROCK ; species type 1
db WATER ; species type 2
db 45 ; catch rate
db 120 ; base exp yield
IF GEN_2_SPRITES
INCBIN "pic/gsmon/omanyte.pic",0,1 ; 55, sprite dimensions
ELSE
INCBIN "pic/bmon/omanyte.pic",0,1 ; 55, sprite dimensions
ENDC
dw OmanytePicFront
dw OmanytePicBack
; attacks known at lvl 0
db WATER_GUN
db WITHDRAW
db 0
db 0
db 0 ; growth rate
; learnset
db %10100000
db %00110111
db %00000000
db %11000000
db %00000001
db %00001000
db %00010010
db BANK(OmanytePicFront)
