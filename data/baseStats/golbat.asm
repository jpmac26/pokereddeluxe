GolbatBaseStats: ; 3885a (e:485a)
db DEX_GOLBAT ; pokedex id
db 75 ; base hp
db 80 ; base attack
db 70 ; base defense
db 90 ; base speed
db 75 ; base special
db POISON ; species type 1
db FLYING ; species type 2
db 90 ; catch rate
db 171 ; base exp yield
IF GEN_2_SPRITES
INCBIN "pic/gsmon/golbat.pic",0,1
ELSE
INCBIN "pic/bmon/golbat.pic",0,1
ENDC
dw GolbatPicFront
dw GolbatPicBack
; attacks known at lvl 0
db LEECH_LIFE
db SCREECH
db BITE
db 0
db 0 ; growth rate
; learnset
db %00101010
db %01001011
db %00010000
db %11000000
db %01000010
db %00001001
db %00000010
db BANK(GolbatPicFront)
