; Define nomes de rotinas, endereços de memória e portas de E/S.

; ## PORTAS DE E/S ##


; ## VARIÁVEIS DO SISTEMA ##
MODBUF:	equ $00f5 ; Modo de vídeo atual. (É preciso chamar BANK0 ou BANK1 para efetivar.)

SNAM4:	equ $8000 ; Endereço do início da VRAM.
VRAM:	equ SNAM4 ; Endereço do início da VRAM. (Um nome mais palatável.)

; ## ROTINAS DA ROM. ##
DELAYB:	equ $c30e ; Faz uma pausa de BC milissegundos.

;delayb:
;	ld a,$d2
;delayb0:
;	dec a
;	jp nz,delayb0
;	dec bc
;	ld a,b
;	or c
;	jp nz,delayb
;	ret

MPY:	equ $c46e ; HL = A * C, sempre positivo.

;mpy:
;	push bc
;	push de
;	ld hl,0
;	ld b,h
;	ld d,8
;mpy0:
;	add hl,hl
;	rlca
;	jp nc,mpy1
;	add hl,bc
;mpy1:
;	dec d
;	jp nz,mpy0
;	pop de
;	pop bc
;	ret

BANK0:	equ $c879 ; Desabilita VRAM. (Bank switch.)
BANK1:	equ $c886 ; Habilita VRAM. (Bank switch.)

D4X5:	equ $cb6d ; Transfere uma sequência de 5 bytes de DE verticalmente para a VRAM (HL).

;d4x5:
;	ld b,5

D4XB:	equ $cb6f ; Transfere uma sequência de B bytes de DE verticalmente para a VRAM (HL).

;d4xb:
;	ld a,(de)
;	ld (hl),a
;	inc de
;	push de
;	ld de,32
;	add hl,de
;	pop de
;	dec b
;	jp nz,d4xb
;	ret

