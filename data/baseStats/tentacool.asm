TentacoolBaseStats: ; 38ba2 (e:4ba2)
db DEX_TENTACOOL ; pokedex id
db 40 ; base hp
db 40 ; base attack
db 35 ; base defense
db 70 ; base speed
db 100 ; base special
db WATER ; species type 1
db POISON ; species type 2
db 190 ; catch rate
db 105 ; base exp yield
IF GEN_2_SPRITES
INCBIN "pic/gsmon/tentacool.pic",0,1 ; 55, sprite dimensions
ELSE
INCBIN "pic/bmon/tentacool.pic",0,1 ; 55, sprite dimensions
ENDC
dw TentacoolPicFront
dw TentacoolPicBack
; attacks known at lvl 0
db ACID
db 0
db 0
db 0
db 5 ; growth rate
; learnset
db %00100100
db %00110111
db %00011000
db %11100000
db %10000001
db %00001000
db %00010110
db BANK(TentacoolPicFront)
