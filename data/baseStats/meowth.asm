MeowthBaseStats: ; 38972 (e:4972)
db DEX_MEOWTH ; pokedex id
db 40 ; base hp
db 45 ; base attack
db 35 ; base defense
db 90 ; base speed
db 40 ; base special
db NORMAL ; species type 1
db NORMAL ; species type 2
db 255 ; catch rate
db 69 ; base exp yield
IF GEN_2_SPRITES
INCBIN "pic/gsmon/meowth.pic",0,1
ELSE
INCBIN "pic/bmon/meowth.pic",0,1
ENDC
dw MeowthPicFront
dw MeowthPicBack
; attacks known at lvl 0
db SCRATCH
db GROWL
db 0
db 0
db 0 ; growth rate
; learnset
db %10100000
db %10000111
db %10000000
db %11000001
db %11000000
db %00001001
db %00000010
db BANK(MeowthPicFront)
