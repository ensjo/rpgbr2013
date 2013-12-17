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
	
	; Moldura da área de texto.
	ld hl,16 * 256 + 0
	ld (yxAreaTxt),hl
	ld hl,8 * 256 + 32
	ld (dyxAreTxt),hl
	ld hl,pCorAzul + 256 * pCorAmare
	ld (coresTxt),hl
	ld a,canSupEsq
	call imprimirC
	ld b,30
mold0:
	push bc
	ld a,traHorizo
	call imprimirC
	pop bc
	djnz mold0
	ld a,canSupDir
	call imprimirC
	ld b,6
mold1:
	push bc
	ld a,traVertic
	call imprimirC
	ld a,31
	ld (xTexto),a
	ld a,traVertic
	call imprimirC
	pop bc
	djnz mold1
	ld a,canInfEsq
	call imprimirC
	ld b,30
mold2:
	push bc
	ld a,traHorizo
	call imprimirC
	pop bc
	djnz mold2
	ld a,canInfDir
	call imprimirC
	
	; Limpa janela em azul.
	ld hl,17 * 256 + 1
	ld (yxAreaTxt),hl
	ld hl,6 * 256 + 30
	ld (dyxAreTxt),hl
	;call limAreTxt
		
	; Posiciona texto.
	;ld hl,0 * 256 + 0
	;ld (yxTexto),hl
	
	; Copia o mapa.
	ld de,mapa
	ld hl,mapTeste
	ld bc,8*16
	ldir
	
	; Desenha o mapa.
	call desenMapa
	
	; Imprime strings.
	ld hl,string0
	call imprimirS
	
	ld hl,string1
	call imprimirS
	
do:
	; Desenha sprite(s) do mapa para apagar avatar.
	
	; Obtém coordenadas do avatar.
	ld hl,(yxAvatar)
	; Se yAvatar é ímpar:
	; desenhar sprites acima e abaixo.
	bit 0,h
	jr z,apagarAv0
	dec h
	call desenhaSM
	inc h
	inc h
	call desenhaSM
	jr apagarAv2
apagarAv0:
	; Se xAvatar é ímpar:
	; desenhar sprites à esquerda e à direita.
	bit 0,l
	jr z,apagarAv1
	dec l
	call desenhaSM
	inc l
	inc l
	call desenhaSM
	jr apagarAv2
apagarAv1:
	; Se xAvatar e yAvatar são pares:
	; desenhar o sprite sob o avatar.
	call desenhaSM
apagarAv2:


	; Avança posição do avatar.
	ld hl,(yxAvatar)
	inc l
	; Se chegou à borda direita do mapa,
	; reposiciona na borda esquerda.
	ld a,(dxMapa)
	dec a
	sub l
	jr nz,avancarA0
	ld l,a
avancarA0:
	ld (yxAvatar),hl
	
	; Desenha avatar na nova posição,
	; escolhendo o sprite conforme a posição,
	; para a animação de caminhada.
	ld a,h
	xor l
	bit 0,a
	jr nz,desenhaA0
	ld a,nsAvataD ; Avatar à direita, pés juntos.
	jr desenhaA2
desenhaA0:
	bit 1,a
	jr nz,desenhaA1
	ld a,nsAvatDD ; Avatar à direita, pé direito à frente.
	jr desenhaA2
desenhaA1:
	ld a,nsAvatDE ; Avatar à direita, pé esquerdo à frente.
desenhaA2:
	call desenharS
	
	; Pausa.
	ld bc,200 ; milissegundos.
	call DELAYB

	jp do


	; Espaço para onde são copiados os sprites do mapa atual.
mapa:
	defs 16*8, $ff

yxAvatar:
xAvatar:
	defb 12
yAvatar:
	defb 4

string0:
	defb $0c
	defb "   *** Projeto rpgbr2013 ***",$0d
	defb "2013-12-17: Teste do ZX BASIC",$0d
	defb "todo refeito em assembly!",$0d
	defb $00

string1:
	defb "Caracteres acentuados etc.:",$0d
	defb aMaiAgudo,aMaiGrave,aMaiCircu,aMaiTil,aOrdinal
	defb eMaiAgudo,eMaiCircu
	defb iMaiAgudo
	defb oMaiAgudo,oMaiCircu,oMaiTil,oOrdinal
	defb uMaiAgudo
	defb cMaiCedil
	defb aMinAgudo,aMinGrave,aMinCircu,aMinTil
	defb eMinAgudo,eMinCircu
	defb iMinAgudo
	defb oMinAgudo,oMinCircu,oMinTil
	defb uMinAgudo
	defb cMinCedil
	defb $0d
	defb "                             ",carEnter
	defb $00

#include "nomes.asm"
#include "sistema_de_textos.asm"
;#include "../tabela_de_caracteres_quadrados.asm"
#include "../tabela_de_caracteres_redondos.asm"
#include "../tabela_de_mapas.asm"
#include "../mc1000/sistema_de_sprites.asm"
#include "../mc6847/tabela_de_ladrilhos.asm"
#include "../mc6847/tabela_de_sprites.asm"
