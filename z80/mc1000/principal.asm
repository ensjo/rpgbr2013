	org $0200
principal:

	; Seleciona modo gráfico.
	ld a,$99 ; Color Graphics 6, CS 0.
	ld (MODBUF),a

	; Limpa tela inteira em verde.
	ld hl,0 * 256 + 0
	ld (yxAreaTxt),hl
	ld hl,24 * 256 + 32
	ld (dyxAreTxt),hl
	ld a,pCorVerde
	ld (corFundo),a
	call limAreTxt
	
	; Limpa area de "moldura" em vermelho.
	ld hl,16 * 256 + 0
	ld (yxAreaTxt),hl
	ld hl,8 * 256 + 32
	ld (dyxAreTxt),hl
	ld a,pCorVerme
	ld (corFundo),a
	call limAreTxt
	
	; Limpa janela em azul.
	ld hl,17 * 256 + 1
	ld (yxAreaTxt),hl
	ld hl,6 * 256 + 30
	ld (dyxAreTxt),hl
	ld hl,pCorAzul + 256 * pCorAmare
	ld (coresTxt),hl
	call limAreTxt
		
	; Posiciona texto.
	ld hl,0 * 256 + 0
	ld (yxTexto),hl
	
	xor a
	ld (s),a

laco1:
	ld hl,string0
	call imprimirS
	
	ld hl,string1
	call imprimirS
	
	ld hl,0 * 256 + 0
;	ld (syx),hl
	
laco2:
	ld a,(s)
	push af
	push hl
	call desenharS
	pop hl
	pop af
	inc a
	cp qtdSprite
	jp nz,jp1
	xor a
jp1:
	ld (s),a
	inc l
	inc l
	ld a,l
	and %00011111
	jr nz,laco2
	ld l,a
	inc h
	inc h
	ld a,h
	and %00001111
	jr nz,laco2
	jp laco1
	
fim:
	jp fim
	
s:
	defb 0

string0:
	defb "MC-1000 CCE COLOR COMPUTER. 14618 BYTES. (!!! :-P) ISTO E UM TESTE BY *EMERSON*. ^_^ "
	defb $00

string1:
	defb "[#DEU TUDO CERTO?] AD&D @ R$200,32, C/ +10%. <C:\COMMAND.COM>. "
	defb $00

#include "nomes.asm"
#include "sistema_de_textos.asm"
#include "../tabela_de_caracteres_quadrados.asm"
;#include "../tabela_de_caracteres_redondos.asm"
#include "../mc1000/sistema_de_sprites.asm"
#include "../mc6847/tabela_de_ladrilhos.asm"
#include "../mc6847/tabela_de_sprites.asm"
