SlowpokeBaseStats: ; 38c66 (e:4c66)
db DEX_SLOWPOKE ; pokedex id
db 90 ; base hp
db 65 ; base attack
db 65 ; base defense
db 15 ; base speed
db 40 ; base special
db WATER ; species type 1
db PSYCHIC ; species type 2
db 190 ; catch rate
db 99 ; base exp yield
IF GEN_2_SPRITES
INCBIN "pic/gsmon/slowpoke.pic",0,1 ; 55, sprite dimensions
ELSE
INCBIN "pic/bmon/slowpoke.pic",0,1 ; 55, sprite dimensions
ENDC
dw SlowpokePicFront
dw SlowpokePicBack
; attacks known at lvl 0
db CONFUSION
db 0
db 0
db 0
db 0 ; growth rate
; learnset
db %10100000
db %10110111
db %00000000
db %11011110
db %11100001
db %00111000
db %01110011
db BANK(SlowpokePicFront)
