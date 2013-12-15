; ## CONSTANTES ##

; Padrões de cor repetidos 4 vezes.
pCorVerde:	equ %00000000
pCorAmare:	equ %01010101
pCorAzul:	equ %10101010
pCorVerme:	equ %11111111

; ## VARIÁVEIS ##

; Tabela de caracteres.
tabCar:	defw tabCarQdd

; Coordenadas do texto (em unidades de 8x8 bits)
; dentro da área de texto.
yxTexto:
xTexto:	defb 0
yTexto:	defb 0

; Cores do texto.
coresTxt:
corFundo:	defb pCorVerde
corFrente:	defb pCorVerme

; Coordenadas da área de texto (em unidades de 8x8 bits).
yxAreaTxt:
xAreaTxt:	defb 0
yAreaTxt:	defb 0

; Tamanho da área de texto (em unidades de 8x8 bits).
dyxAreTxt:
dxAreaTxt:	defb 32
dyAreaTxt:	defb 8

;=========
imprimirS:
;=========
; Imprime uma string com uma sequência de chamadas a
; imprimirC, lendo os caracteres a partir de
; um endereço até que um byte $00 seja encontrado.
; HL = Endereço da string.

	; Obtém caracter.
	ld a,(hl)
	; Termina se $00.
	or a
	ret z
	; Imprime caracter.
	push hl
	call imprimirC
	pop hl
	; Avança o ponteiro e repete.
	inc hl
	jr imprimirS

;=========
imprimirC:
;=========
; Desenha um caracter na tela, dentro de uma área de texto.
; O ponto de impressão, as cores, a posição e o tamanho da
; área de texto são obtidos de variáveis.
; A = Código do caracter.

	push af
	call ajusYxTxt
	ld hl,(yxAreaTxt)
	ld de,(yxTexto)
	add hl,de
	ld bc,(coresTxt)
	pop af
	call desenharC
	ld hl,xTexto
	inc (hl)
	ret

;=========
desenharC:
;=========
; Desenha um caracter de 8x8 bits na tela,
; aplicando cor de frente e cor de fundo.
; A = Código do caracter.
; HL = Coordenadas y,x onde o caracter será desenhado
;      (em unidades de 8x8 bits da tela).
; BC = Byte de cor de frente, byte de cor de fundo.

	; Caracteres de controle não são impressos.
	sub $20
	ret c
	; Localiza o endereço da máscara do caracter
	; na tabela de caracteres.
	push hl
	ld h,0
	ld l,a
	add hl,hl
	add hl,hl
	add hl,hl
	ld de,(tabCar)
	add hl,de
	ex de,hl
	pop hl
	; Calcula a posição na VRAM
	; correspondente às coordenadas.
	push de
	ld de,VRAM
	add hl,de
	pop de

;=========
desenharM:
;=========
; Desenha um padrão de 8x8 bits na tela,
; aplicando cor de frente e cor de fundo
; a uma máscara.
; HL = Endereço da posição na VRAM onde se iniciará o desenho.
; DE = Endereço da máscara.
; BC = Byte de cor da frente, byte de cor do fundo.
;
; Exemplo:
; DE --> %11110000
;        %11001100
;        %11001100
;        %11110000
;        %11110000
;        %11001100
;        %11001100
;        %00000000
;
; B = %10101010 (azul-azul-azul-azul)
; C = %11111111 (vermelho-vermelho-vermelho-vermelho)
;
; Na VRAM será desenhado o padrão:
; %10101111
; %10111011
; %10111011
; %10101111
; %10101111
; %10111011
; %10111011
; %11111111

	; Habilita a VRAM.
	call BANK1
	ld a,8
desenhaM0:
	push af
	push bc
	; Calcula o padrão de fundo.
	ld a,(de)
	cpl
	and c
	ld c,a
	; Calcula o padrão de frente.
	ld a,(de)
	and b
	; Combina os padrões e coloca na VRAM.
	or c
	ld (hl),a
	; Avança à próxima posição.
	inc de
	ld bc,32
	add hl,bc
	pop bc
	pop af
	dec a
	jr nz,desenhaM0
	; Desabilita a VRAM e retorna.
	jp BANK0

;=========
ajusYxTxt:
;=========
; Ajusta coordenadas aos limites da área de texto,
; rolando a área se necessário.

	ld de,(dyxAreTxt)
	ld hl,(yxTexto)
	ld a,l
ajuYxTxt0:
	sub e
	jr c,ajuYxTxt1
	ld l,a
	inc h
	jr ajuYxTxt0
ajuYxTxt1:
	ld a,h
ajuYxTxt2:
	cp d
	jr c,ajuYxTxt3
	push af
	push hl
	push de
	call rolAreTxt
	pop de
	pop hl
	pop af
	dec a
	ld h,a
	jr ajuYxTxt2
ajuYxTxt3:
	ld (yxTexto),hl
	ret

;=========
rolAreTxt:
;=========
; Faz a rolagem ("scroll") da área de texto
; uma linha para cima.

	; Calcula endereço do início da área de texto:
	; VRAM + 256 * yAreaDeTexto + xAreaDeTexto.
	ld hl,(yxAreaTxt)
	ld de,VRAM
	add hl,de
	ld d,h
	ld e,l
	; Calcula endereço de uma linha de texto abaixo:
	; endereço da área de texto + 256.
	inc h
	; Calcula quantidade de linhas gráficas a copiar:
	; (altura da área de texto - 1) * 8.
	ld a,(dyAreaTxt)
	dec a
	jr z,roAreTxt1
	add a,a
	add a,a
	add a,a
	ld b,a
	; Habilita VRAM.
	call BANK1
roAreTxt0:
	; Salva quantidade de linhas restantes a copiar.
	push bc
	; Salva posições da margem esquerda.
	push de
	push hl
	; Copia uma linha gráfica.
	ld a,(dxAreaTxt)
	ld c,a
	ld b,0
	ldir
	; Recupera posições da margem esquerda e
	; calcula uma linha gráfica abaixo (+32).
	pop de
	pop hl
	ld bc,32
	add hl,bc
	ex de,hl
	add hl,bc
	; Recupera quantidade de linhas restantes a copiar.
	pop bc
	; Decrementa e repete até zerar.
	djnz roAreTxt0
	
roAreTxt1:
	; Depois de rolar os caracteres para cima,
	; é hora de apagar a última linha de texto.
	
	; 8 linhas gráficas a apagar.
	ld b,8
	
	; DE já está apontando para o endereço de início
	; da linha de texto a ser apagada.
	; Copiar para HL e fazer DE apontar para o byte seguinte.
	ld h,d
	ld l,e
	inc de
	; Segue rotina de apagamento.
	jp liAreTxt0

;=========
limAreTxt:
;=========
; Limpa a área de texto, preenchendo-a com a cor de fundo.

	; Calcula endereço do início da área de texto:
	; VRAM + 256 * yAreaDeTexto + xAreaDeTexto.
	ld hl,(yxAreaTxt)
	ld de,VRAM
	add hl,de
	ld d,h
	ld e,l
	; Fazer DE apontar para o byte seguinte.
	inc de
	; Calcula quantidade de linhas gráficas a limpar:
	; altura da área de texto * 8.
	ld a,(dyAreaTxt)
	add a,a
	add a,a
	add a,a
	ld b,a
	; Habilita VRAM.
	call BANK1
liAreTxt0:
	; Salva quantidade de linhas restantes a limpar.
	push bc
	; Salva posições da margem esquerda.
	push de
	push hl
	; Limpa uma linha gráfica.
	ld a,(corFundo)
	ld (hl),a
	ld a,(dxAreaTxt)
	dec a
	jr z,liAreTxt1
	ld c,a
	ld b,0
	ldir
liAreTxt1:
	; Recupera posições da margem esquerda e
	; calcula uma linha gráfica abaixo (+32).
	pop de
	pop hl
	ld bc,32
	add hl,bc
	ex de,hl
	add hl,bc
	; Recupera quantidade de linhas restantes a limpar.
	pop bc
	; Decrementa e repete até zerar.
	djnz liAreTxt0
	
	; Desabilita a VRAM e retorna.
	jp BANK0

