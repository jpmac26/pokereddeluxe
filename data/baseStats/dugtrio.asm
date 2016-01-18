DugtrioBaseStats: ; 38956 (e:4956)
db DEX_DUGTRIO ; pokedex id
db 35 ; base hp
db 80 ; base attack
db 50 ; base defense
db 120 ; base speed
db 70 ; base special
db GROUND ; species type 1
db GROUND ; species type 2
db 50 ; catch rate
db 153 ; base exp yield
IF GEN_2_SPRITES
INCBIN "pic/gsmon/dugtrio.pic",0,1
ELSE
INCBIN "pic/bmon/dugtrio.pic",0,1
ENDC
dw DugtrioPicFront
dw DugtrioPicBack
; attacks known at lvl 0
db SCRATCH
db GROWL
db DIG
db 0
db 0 ; growth rate
; learnset
db %10100000
db %01000011
db %00000000
db %11001110
db %00000000
db %10001000
db %00000110
db BANK(DugtrioPicFront)