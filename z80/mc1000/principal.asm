	org $0200
principal:

	; Seleciona modo gráfico.
	ld a,$99 ; Color Graphics 6, CS 0.
	ld (MODBUF),a

	; Limpa tela inteira em amarelo.
	ld a,pCorVerme
	ld (corFundo),a
	ld a,24
	ld (dyAreaTxt),a
	call limAreTxt
	
	; Limpa janela em azul.
	ld hl,pCorAzul + 256 * pCorAmare
	ld (coresTxt),hl
	ld hl,1 * 256 + 1
	ld (yxAreaTxt),hl
	ld hl,22 * 256 + 30
	ld (dyxAreTxt),hl
	call limAreTxt
		
	; Posiciona texto.
	ld hl,0 * 256 + 0
	ld (yxTexto),hl
	

laco1:
	ld a,(cs)
	xor $ff
	ld (cs),a
	ld hl,tabCarQdd
	jr z,cs0
	ld hl,tabCarRdd
cs0:
	ld (tabCar),hl
	
	ld hl,string0
	call imprimirS
	
	; Pausa de 2 segundos.
	ld bc,2000
	call DELAYB
	
	; Executa 1 scroll.
	ld b,1
principa0:
	push bc
	call rolAreTxt
	pop bc
	djnz principa0
	
	ld hl,string1
	call imprimirS
	
	ld bc,5000
	call DELAYB
	
	jp laco1
		
fim:
	jp fim
	
cs:
	db $00

string0:
	db "MC-1000 CCE COLOR COMPUTER. 14618 BYTES. (!!! :-P) ISTO E UM TESTE BY *EMERSON*. ^_^ "
	db $00

string1:
	db "[#DEU TUDO CERTO?] {AD&D @ R$200,32, C/ +10%}. <C:\COMMAND.COM>. Minusculas tambem. "
	db $00

#include "../tabela_de_caracteres_redondos.asm"
#include "../tabela_de_caracteres_quadrados.asm"
#include "nomes.asm"
#include "sistema_de_textos.asm"