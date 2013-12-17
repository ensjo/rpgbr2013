; ## CONSTANTES ##

; ## VARIÁVEIS ##

; Tabela de ladrilhos.
tabLadril:	defw tabLadRPG

; Tabela de sprites.
tabSprite:	defw tabSprRPG

; Coordenadas do mapa (em unidades de 8x8 bits).
yxMapa:
xMapa:	defb 0
yMapa:	defb 0

; Tamanho do mapa (em unidades de 8x8 bits).
dyxMapa:
dxMapa:	defb 32
dyMapa:	defb 16

;=========
desenMapa:
;=========
; Desenha o conteúdo do mapa.

	ld hl,0 * 256 + 0
	ld de,(dyxMapa)
desenMap0:
	call desenhaSM
	inc l
	inc l
	ld a,l
	sub e
	jr nz,desenMap0
	ld l,a
	inc h
	inc h
	ld a,h
	cp d
	jr nz,desenMap0
	ret

;=========
desenhaSM:
;=========
; Desenha um sprite do mapa.
; HL = Coordenadas y,x do mapa (em unidades de 8x8 bits).

	push hl
	push de
	; Obtém o número do sprite nas coordenadas do mapa.
	call sprEmYx
	; Soma as coordenadas do mapa.
	ld de,(yxMapa)
	add hl,de
	call desenharS
	pop de
	pop hl
	ret

;=========
desenharS:
;=========
; Desenha um sprite de 2x2 ladrilhos.
; A = Número do sprite.
; HL = Coordenadas y,x da tela onde o sprite será desenhado
;      (em unidades de 8x8 bits).

	push hl
	push de
	ex de,hl
	; Calcula endereço do sprite
	; na tabela de sprites.
	ld l,a
	ld h,0
	add hl,hl
	add hl,hl
	push bc
	ld bc,(tabSprite)
	add hl,bc
	pop bc
	ex de,hl
	; Desenha ladrilho do canto superior esquerdo.
	ld a,(de)
	call desenharL
	; Desenha ladrilho do canto superior direito.
	inc l
	inc de
	ld a,(de)
	call desenharL
	; Desenha ladrilho do canto inferior esquerdo.
	dec l
	inc h
	inc de
	ld a,(de)
	call desenharL
	; Desenha ladrilho do canto inferior direito.
	inc l
	inc de
	ld a,(de)
	call desenharL
	pop de
	pop hl
	ret

;=========
desenharL:
;=========
; Desenha um ladrilho de 8x8 bits.
; A = Número do ladrilho.
; HL = Coordenadas y,x onde o ladrilho será desenhado
;      (em unidades de 8x8 bits da tela).

	push hl
	push de
	push bc
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
	; Desenha o ladrilho.
	call d4x8
	pop bc
	pop de
	pop hl
	ret

;====
d4x8:
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

;=======
sprEmYx:
;=======
; Obtém em A o número do sprite em um ponto do mapa.
; HL = Coordenadas y,x (em unidades de 8x8 bits) do mapa.

	push hl
	push de
	; Divide as coordenadas por dois.
	srl l
	srl h
	ex de,hl
	; Calcula a posição do número do sprite no mapa.
	ld a,(dxMapa)
	srl a
	push bc
	ld c,d
	call MPY ; HL = A * C
	pop bc
	ld d,0
	add hl,de
	ld de,mapa
	add hl,de
	; Obtém o número do sprite.
	ld a,(hl)
	pop de
	pop hl
	ret
