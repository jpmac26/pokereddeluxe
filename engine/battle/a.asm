LeechSeedEffect_: ; 2bea9 (a:7ea9)
	callab MoveHitTest
	ld a, [W_MOVEMISSED] ; W_MOVEMISSED
	and a
	jr nz, .asm_2bee7
	ld hl, W_ENEMYBATTSTATUS2 ; W_ENEMYBATTSTATUS2
	ld de, wEnemyMonType1 ; wcfea (aliases: wEnemyMonType)
	ld a, [H_WHOSETURN] ; $fff3
	and a
	jr z, .asm_2bec8
	ld hl, W_PLAYERBATTSTATUS2 ; W_PLAYERBATTSTATUS2
	ld de, wBattleMonType1 ; wd019 (aliases: wBattleMonType)
.asm_2bec8
	call CheckTargetSubstitute3
	jr nz, .asm_2bee7 ; can't leech seed a substitute target
	ld a, [de]
	cp GRASS
	jr z, .asm_2bee7
	inc de
	ld a, [de]
	cp GRASS
	jr z, .asm_2bee7
	bit 7, [hl]
	jr nz, .asm_2bee7
	set 7, [hl]
	callab Func_3fba8
	ld hl, WasSeededText ; $7ef2
	jp PrintText
.asm_2bee7
	ld c, $32
	call DelayFrames
	ld hl, EvadedAttackText ; $7ef7
	jp PrintText

CheckTargetSubstitute3: ; 3fb79 (f:7b79)
	push hl
	ld hl, W_ENEMYBATTSTATUS2
	ld a, [$fff3]   ;whose turn?
	and a
	jr z, .next1
	ld hl, W_PLAYERBATTSTATUS2
.next1
	bit 4, [hl]         ;test bit 4 in d063/d068 flags
	pop hl
	ret

WasSeededText: ; 2bef2 (a:7ef2)
	TX_FAR _WasSeededText
	db "@"

EvadedAttackText: ; 2bef7 (a:7ef7)
	TX_FAR _EvadedAttackText
	db "@"
