; ## CONSTANTES ##

; ## VARIÁVEIS ##

; Tabela de ladrilhos.
tabLadril:	defw tabLadRPG

; Tabela de sprites.
tabSprite:	defw tabSprRPG

; Coordenadas da àrea de sprites (em unidades de 8x8 bits).
yxAreaSpr:
xAreaSpri:	defb 0
yAreaSpri:	defb 0

; Tamanho da área de sprites (em unidades de 8x8 bits).
dyxAreSpr:
dxAreaSpr:	defb 32
dyAreaSpr:	defb 16

;=========
desenharS:
;=========
; Desenha um sprite de 2x2 ladrilhos.
; A = Número do sprite.
; HL = Coordenadas y,x onde o sprite será desenhado
;      (em unidades de 8x8 bits).

	ex de,hl
	; Calcula endereço do sprite
	; na tabela de sprites.
	ld l,a
	ld h,0
	add hl,hl
	add hl,hl
	ld bc,(tabSprite)
	add hl,bc
	ex de,hl
	push hl
	push de
	ld a,(de)
	call desenharL
	pop de
	pop hl
	inc l
	inc de
	push hl
	push de
	ld a,(de)
	call desenharL
	pop de
	pop hl
	dec l
	inc h
	inc de
	push hl
	push de
	ld a,(de)
	call desenharL
	pop de
	pop hl
	inc l
	inc de
	ld a,(de)
	; call desenharL
	; ret

;=========
desenharL:
;=========
; Desenha um ladrilho de 8x8 bits.
; A = Número do ladrilho.
; HL = Coordenadas y,x onde o ladrilho será desenhado
;      (em unidades de 8x8 bits da tela).

	; Calcula posição na VRAM
	; correspondente às coordenadas.
	ld bc,VRAM
	add hl,bc
	ex de,hl
	; Calcula endereço do ladrilho
	; na tabela de ladrilhos.
	ld l,a
	ld h,0
	add hl,hl
	add hl,hl
	add hl,hl
	ld bc,(tabLadril)
	add hl,bc
	ex de,hl

;====
D4X8:
;====
; Desenha um ladrilho de 8x8 bits.
; HL = Endereço na VRAM onde se iniciará o desenho.
; DE = Endereço dos 8 bytes.

	; Habilita VRAM (bank switching.)
	call BANK1
	; Desenha os 8 bytes.
	ld b,8
	call D4XB
	; Desabilita VRAM (bank switching).
	jp BANK0
