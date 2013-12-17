;=========
tabCarRdd:
;=========
; Caracteres "redondos".

; ASCII PADRÃO.

	; ' '
	defb %00000000
	defb %00000000
	defb %00000000
	defb %00000000
	defb %00000000
	defb %00000000
	defb %00000000
	defb %00000000

	; '!'
	defb %00110000
	defb %00110000
	defb %00110000
	defb %00110000
	defb %00110000
	defb %00000000
	defb %00110000
	defb %00000000

	; '"'
	defb %11001100
	defb %11001100
	defb %11001100
	defb %00000000
	defb %00000000
	defb %00000000
	defb %00000000
	defb %00000000

	; '#'
	defb %00000000
	defb %11001100
	defb %11111100
	defb %11001100
	defb %11111100
	defb %11001100
	defb %00000000
	defb %00000000

	; '$'
	defb %00110000
	defb %00111100
	defb %11000000
	defb %00110000
	defb %00001100
	defb %11110000
	defb %00110000
	defb %00000000

	; '%'
	defb %11001100
	defb %00001100
	defb %00110000
	defb %00110000
	defb %00110000
	defb %11000000
	defb %11001100
	defb %00000000

	; '&'
	defb %00110000
	defb %11001100
	defb %00110000
	defb %00110011
	defb %11001100
	defb %11001100
	defb %00110011
	defb %00000000

	; '''
	defb %00110000
	defb %00110000
	defb %11000000
	defb %00000000
	defb %00000000
	defb %00000000
	defb %00000000
	defb %00000000

	; '('
	defb %00001100
	defb %00110000
	defb %11000000
	defb %11000000
	defb %11000000
	defb %00110000
	defb %00001100
	defb %00000000

	; ')'
	defb %11000000
	defb %00110000
	defb %00001100
	defb %00001100
	defb %00001100
	defb %00110000
	defb %11000000
	defb %00000000

	; '*'
	defb %00000000
	defb %11001100
	defb %00110000
	defb %11111100
	defb %00110000
	defb %11001100
	defb %00000000
	defb %00000000

	; '+'
	defb %00000000
	defb %00110000
	defb %00110000
	defb %11111100
	defb %00110000
	defb %00110000
	defb %00000000
	defb %00000000

	; ','
	defb %00000000
	defb %00000000
	defb %00000000
	defb %00000000
	defb %00000000
	defb %00110000
	defb %00110000
	defb %11000000

	; '-'
	defb %00000000
	defb %00000000
	defb %00000000
	defb %11111100
	defb %00000000
	defb %00000000
	defb %00000000
	defb %00000000

	; '.'
	defb %00000000
	defb %00000000
	defb %00000000
	defb %00000000
	defb %00000000
	defb %00110000
	defb %00110000
	defb %00000000

	; '/'
	defb %00001100
	defb %00001100
	defb %00110000
	defb %00110000
	defb %00110000
	defb %11000000
	defb %11000000
	defb %00000000

	; '0'
	defb %00111100
	defb %11001100
	defb %11111100
	defb %11111100
	defb %11111100
	defb %11001100
	defb %11110000
	defb %00000000

	; '1'
	defb %00110000
	defb %11110000
	defb %00110000
	defb %00110000
	defb %00110000
	defb %00110000
	defb %11111100
	defb %00000000

	; '2'
	defb %00110000
	defb %11001100
	defb %00001100
	defb %00110000
	defb %00110000
	defb %11000000
	defb %11111100
	defb %00000000

	; '3'
	defb %00110000
	defb %11001100
	defb %00001100
	defb %00110000
	defb %00001100
	defb %11001100
	defb %00110000
	defb %00000000

	; '4'
	defb %00001100
	defb %00111100
	defb %00111100
	defb %11001100
	defb %11111100
	defb %00001100
	defb %00001100
	defb %00000000

	; '5'
	defb %11111100
	defb %11000000
	defb %11110000
	defb %00001100
	defb %00001100
	defb %11001100
	defb %00110000
	defb %00000000

	; '6'
	defb %00110000
	defb %11001100
	defb %11000000
	defb %11110000
	defb %11001100
	defb %11001100
	defb %00110000
	defb %00000000

	; '7'
	defb %11111100
	defb %00001100
	defb %00110000
	defb %00110000
	defb %00110000
	defb %11000000
	defb %11000000
	defb %00000000

	; '8'
	defb %00110000
	defb %11001100
	defb %11001100
	defb %00110000
	defb %11001100
	defb %11001100
	defb %00110000
	defb %00000000

	; '9'
	defb %00110000
	defb %11001100
	defb %11001100
	defb %00111100
	defb %00001100
	defb %11001100
	defb %00110000
	defb %00000000

	; ':'
	defb %00000000
	defb %00110000
	defb %00110000
	defb %00000000
	defb %00000000
	defb %00110000
	defb %00110000
	defb %00000000

	; ';'
	defb %00000000
	defb %00110000
	defb %00110000
	defb %00000000
	defb %00000000
	defb %00110000
	defb %00110000
	defb %11000000

	; '<'
	defb %00000000
	defb %00001100
	defb %00110000
	defb %11000000
	defb %00110000
	defb %00001100
	defb %00000000
	defb %00000000

	; '='
	defb %00000000
	defb %00000000
	defb %11111100
	defb %00000000
	defb %11111100
	defb %00000000
	defb %00000000
	defb %00000000

	; '>'
	defb %00000000
	defb %11000000
	defb %00110000
	defb %00001100
	defb %00110000
	defb %11000000
	defb %00000000
	defb %00000000

	; '?'
	defb %00110000
	defb %11001100
	defb %00001100
	defb %00110000
	defb %00110000
	defb %00000000
	defb %00110000
	defb %00000000

	; '@'
	defb %00110000
	defb %11001100
	defb %11001100
	defb %11111100
	defb %11111100
	defb %11000000
	defb %00111100
	defb %00000000

	; 'A'
	defb %00110000
	defb %11001100
	defb %11001100
	defb %11111100
	defb %11001100
	defb %11001100
	defb %11001100
	defb %00000000

	; 'B'
	defb %11110000
	defb %11001100
	defb %11001100
	defb %11110000
	defb %11001100
	defb %11001100
	defb %11110000
	defb %00000000

	; 'C'
	defb %00110000
	defb %11001100
	defb %11000000
	defb %11000000
	defb %11000000
	defb %11001100
	defb %00110000
	defb %00000000

	; 'D'
	defb %11110000
	defb %11001100
	defb %11001100
	defb %11001100
	defb %11001100
	defb %11001100
	defb %11110000
	defb %00000000

	; 'E'
	defb %11111100
	defb %11000000
	defb %11000000
	defb %11110000
	defb %11000000
	defb %11000000
	defb %11111100
	defb %00000000

	; 'F'
	defb %11111100
	defb %11000000
	defb %11000000
	defb %11110000
	defb %11000000
	defb %11000000
	defb %11000000
	defb %00000000

	; 'G'
	defb %00110000
	defb %11001100
	defb %11000000
	defb %11111100
	defb %11001100
	defb %11001100
	defb %00110000
	defb %00000000

	; 'H'
	defb %11001100
	defb %11001100
	defb %11001100
	defb %11111100
	defb %11001100
	defb %11001100
	defb %11001100
	defb %00000000

	; 'I'
	defb %11111100
	defb %00110000
	defb %00110000
	defb %00110000
	defb %00110000
	defb %00110000
	defb %11111100
	defb %00000000

	; 'J'
	defb %00001100
	defb %00001100
	defb %00001100
	defb %00001100
	defb %00001100
	defb %11001100
	defb %00110000
	defb %00000000

	; 'K'
	defb %11001100
	defb %11001100
	defb %11110000
	defb %11110000
	defb %11110000
	defb %11001100
	defb %11001100
	defb %00000000

	; 'L'
	defb %11000000
	defb %11000000
	defb %11000000
	defb %11000000
	defb %11000000
	defb %11000000
	defb %11111100
	defb %00000000

	; 'M'
	defb %11001100
	defb %11111100
	defb %11111100
	defb %11111100
	defb %11001100
	defb %11001100
	defb %11001100
	defb %00000000

	; 'N'
	defb %11110000
	defb %11001100
	defb %11001100
	defb %11001100
	defb %11001100
	defb %11001100
	defb %11001100
	defb %00000000

	; 'O'
	defb %00110000
	defb %11001100
	defb %11001100
	defb %11001100
	defb %11001100
	defb %11001100
	defb %00110000
	defb %00000000

	; 'P'
	defb %11110000
	defb %11001100
	defb %11001100
	defb %11110000
	defb %11000000
	defb %11000000
	defb %11000000
	defb %00000000

	; 'Q'
	defb %00110000
	defb %11001100
	defb %11001100
	defb %11001100
	defb %11001100
	defb %11001100
	defb %00110000
	defb %00001100

	; 'R'
	defb %11110000
	defb %11001100
	defb %11001100
	defb %11110000
	defb %11110000
	defb %11001100
	defb %11001100
	defb %00000000

	; 'S'
	defb %00110000
	defb %11001100
	defb %11000000
	defb %00110000
	defb %00001100
	defb %11001100
	defb %00110000
	defb %00000000

	; 'T'
	defb %11111100
	defb %00110000
	defb %00110000
	defb %00110000
	defb %00110000
	defb %00110000
	defb %00110000
	defb %00000000

	; 'U'
	defb %11001100
	defb %11001100
	defb %11001100
	defb %11001100
	defb %11001100
	defb %11001100
	defb %00110000
	defb %00000000

	; 'V'
	defb %11001100
	defb %11001100
	defb %11001100
	defb %11001100
	defb %00110000
	defb %00110000
	defb %00110000
	defb %00000000

	; 'W'
	defb %11001100
	defb %11001100
	defb %11001100
	defb %11111100
	defb %11111100
	defb %11111100
	defb %11001100
	defb %00000000

	; 'X'
	defb %11001100
	defb %11001100
	defb %00110000
	defb %00110000
	defb %00110000
	defb %11001100
	defb %11001100
	defb %00000000

	; 'Y'
	defb %11001100
	defb %11001100
	defb %11001100
	defb %00110000
	defb %00110000
	defb %00110000
	defb %00110000
	defb %00000000

	; 'Z'
	defb %11111100
	defb %00001100
	defb %00110000
	defb %00110000
	defb %00110000
	defb %11000000
	defb %11111100
	defb %00000000

	; '['
	defb %00111100
	defb %00110000
	defb %00110000
	defb %00110000
	defb %00110000
	defb %00110000
	defb %00111100
	defb %00000000

	; '\'
	defb %11000000
	defb %11000000
	defb %00110000
	defb %00110000
	defb %00110000
	defb %00001100
	defb %00001100
	defb %00000000

	; ']'
	defb %11110000
	defb %00110000
	defb %00110000
	defb %00110000
	defb %00110000
	defb %00110000
	defb %11110000
	defb %00000000

	; '^'
	defb %00110000
	defb %00110000
	defb %11001100
	defb %11001100
	defb %00000000
	defb %00000000
	defb %00000000
	defb %00000000

	; '_'
	defb %00000000
	defb %00000000
	defb %00000000
	defb %00000000
	defb %00000000
	defb %00000000
	defb %00000000
	defb %11111111

	; '`'
	defb %00110000
	defb %00110000
	defb %00001100
	defb %00000000
	defb %00000000
	defb %00000000
	defb %00000000
	defb %00000000

	; 'a'
	defb %00000000
	defb %00000000
	defb %11110000
	defb %00001100
	defb %00111100
	defb %11001100
	defb %00111100
	defb %00000000

	; 'b'
	defb %11000000
	defb %11000000
	defb %11110000
	defb %11001100
	defb %11001100
	defb %11001100
	defb %11110000
	defb %00000000

	; 'c'
	defb %00000000
	defb %00000000
	defb %00110000
	defb %11001100
	defb %11000000
	defb %11001100
	defb %00110000
	defb %00000000

	; 'd'
	defb %00001100
	defb %00001100
	defb %00111100
	defb %11001100
	defb %11001100
	defb %11001100
	defb %00111100
	defb %00000000

	; 'e'
	defb %00000000
	defb %00000000
	defb %00110000
	defb %11001100
	defb %11111100
	defb %11000000
	defb %00111100
	defb %00000000

	; 'f'
	defb %00001100
	defb %00110000
	defb %00110000
	defb %11111100
	defb %00110000
	defb %00110000
	defb %00110000
	defb %00000000

	; 'g'
	defb %00000000
	defb %00000000
	defb %00111100
	defb %11001100
	defb %11001100
	defb %00111100
	defb %00001100
	defb %11110000

	; 'h'
	defb %11000000
	defb %11000000
	defb %11110000
	defb %11001100
	defb %11001100
	defb %11001100
	defb %11001100
	defb %00000000

	; 'i'
	defb %00110000
	defb %00000000
	defb %11110000
	defb %00110000
	defb %00110000
	defb %00110000
	defb %11111100
	defb %00000000

	; 'j'
	defb %00110000
	defb %00000000
	defb %11110000
	defb %00110000
	defb %00110000
	defb %00110000
	defb %00110000
	defb %11000000

	; 'k'
	defb %11000000
	defb %11000000
	defb %11001100
	defb %11110000
	defb %11110000
	defb %11001100
	defb %11001100
	defb %00000000

	; 'l'
	defb %11110000
	defb %00110000
	defb %00110000
	defb %00110000
	defb %00110000
	defb %00110000
	defb %11111100
	defb %00000000

	; 'm'
	defb %00000000
	defb %00000000
	defb %11110000
	defb %11111100
	defb %11111100
	defb %11111100
	defb %11001100
	defb %00000000

	; 'n'
	defb %00000000
	defb %00000000
	defb %11110000
	defb %11001100
	defb %11001100
	defb %11001100
	defb %11001100
	defb %00000000

	; 'o'
	defb %00000000
	defb %00000000
	defb %00110000
	defb %11001100
	defb %11001100
	defb %11001100
	defb %00110000
	defb %00000000

	; 'p'
	defb %00000000
	defb %00000000
	defb %11110000
	defb %11001100
	defb %11001100
	defb %11110000
	defb %11000000
	defb %11000000

	; 'q'
	defb %00000000
	defb %00000000
	defb %00111100
	defb %11001100
	defb %11001100
	defb %00111100
	defb %00001100
	defb %00001100

	; 'r'
	defb %00000000
	defb %00000000
	defb %11110000
	defb %11001100
	defb %11000000
	defb %11000000
	defb %11000000
	defb %00000000

	; 's'
	defb %00000000
	defb %00000000
	defb %00111100
	defb %11000000
	defb %00110000
	defb %00001100
	defb %11110000
	defb %00000000

	; 't'
	defb %00110000
	defb %00110000
	defb %11111100
	defb %00110000
	defb %00110000
	defb %00110000
	defb %00001100
	defb %00000000

	; 'u'
	defb %00000000
	defb %00000000
	defb %11001100
	defb %11001100
	defb %11001100
	defb %11001100
	defb %00111100
	defb %00000000

	; 'v'
	defb %00000000
	defb %00000000
	defb %11001100
	defb %11001100
	defb %11001100
	defb %00110000
	defb %00110000
	defb %00000000

	; 'w'
	defb %00000000
	defb %00000000
	defb %11001100
	defb %11001100
	defb %11111100
	defb %11111100
	defb %11001100
	defb %00000000

	; 'x'
	defb %00000000
	defb %00000000
	defb %11001100
	defb %11001100
	defb %00110000
	defb %11001100
	defb %11001100
	defb %00000000

	; 'y'
	defb %00000000
	defb %00000000
	defb %11001100
	defb %11001100
	defb %11001100
	defb %00111100
	defb %00001100
	defb %11110000

	; 'z'
	defb %00000000
	defb %00000000
	defb %11111100
	defb %00001100
	defb %00110000
	defb %11000000
	defb %11111100
	defb %00000000

	; '{'
	defb %00001100
	defb %00110000
	defb %00110000
	defb %11000000
	defb %00110000
	defb %00110000
	defb %00001100
	defb %00000000

	; '|'
	defb %00110000
	defb %00110000
	defb %00110000
	defb %00110000
	defb %00110000
	defb %00110000
	defb %00110000
	defb %00000000

	; '}'
	defb %11000000
	defb %00110000
	defb %00110000
	defb %00001100
	defb %00110000
	defb %00110000
	defb %11000000
	defb %00000000

	; '~'
	defb %00110011
	defb %11001100
	defb %00000000
	defb %00000000
	defb %00000000
	defb %00000000
	defb %00000000
	defb %00000000

	; DEL
	defb %11001100
	defb %00110011
	defb %11001100
	defb %00110011
	defb %11001100
	defb %00110011
	defb %11001100
	defb %00110011

; CARACTERES NÃO-ASCII.

	; 'Á'
aMaiAgudo:	equ ($ - tabCarRdd) >> 3 + 32
	defb %00001100
	defb %00110000
	defb %00110000
	defb %11001100
	defb %11111100
	defb %11001100
	defb %11001100
	defb %00000000

	; 'á'
aMinAgudo:	equ ($ - tabCarRdd) >> 3 + 32
	defb %00001100
	defb %00110000
	defb %11110000
	defb %00001100
	defb %00111100
	defb %11001100
	defb %00111100
	defb %00000000

	; 'À'
aMaiGrave:	equ ($ - tabCarRdd) >> 3 + 32
	defb %11000000
	defb %00110000
	defb %00110000
	defb %11001100
	defb %11111100
	defb %11001100
	defb %11001100
	defb %00000000

	; 'à'
aMinGrave:	equ ($ - tabCarRdd) >> 3 + 32
	defb %11000000
	defb %00110000
	defb %11110000
	defb %00001100
	defb %00111100
	defb %11001100
	defb %00111100
	defb %00000000

	; 'Â'
aMaiCircu:	equ ($ - tabCarRdd) >> 3 + 32
	defb %00110000
	defb %11001100
	defb %00110000
	defb %11001100
	defb %11111100
	defb %11001100
	defb %11001100
	defb %00000000

	; 'â'
aMinCircu:	equ ($ - tabCarRdd) >> 3 + 32
	defb %00110000
	defb %11001100
	defb %11110000
	defb %00001100
	defb %00111100
	defb %11001100
	defb %00111100
	defb %00000000

	; 'Ã'
aMaiTil:	equ ($ - tabCarRdd) >> 3 + 32
	defb %00110011
	defb %11001100
	defb %00110000
	defb %11001100
	defb %11111100
	defb %11001100
	defb %11001100
	defb %00000000

	; 'ã'
aMinTil:	equ ($ - tabCarRdd) >> 3 + 32
	defb %00110011
	defb %11001100
	defb %11110000
	defb %00001100
	defb %00111100
	defb %11001100
	defb %00111100
	defb %00000000

	; 'ª'
aOrdinal:	equ ($ - tabCarRdd) >> 3 + 32
	defb %00111100
	defb %11001100
	defb %11001100
	defb %00111100
	defb %00000000
	defb %11111100
	defb %00000000
	defb %00000000

	; 'É'
eMaiAgudo:	equ ($ - tabCarRdd) >> 3 + 32
	defb %00001100
	defb %00110000
	defb %11111100
	defb %11000000
	defb %11110000
	defb %11000000
	defb %11111100
	defb %00000000

	; 'é'
eMinAgudo:	equ ($ - tabCarRdd) >> 3 + 32
	defb %00001100
	defb %00110000
	defb %00110000
	defb %11001100
	defb %11111100
	defb %11000000
	defb %00111100
	defb %00000000

	; 'Ê'
eMaiCircu:	equ ($ - tabCarRdd) >> 3 + 32
	defb %00110000
	defb %11001100
	defb %11111100
	defb %11000000
	defb %11110000
	defb %11000000
	defb %11111100
	defb %00000000

	; 'ê'
eMinCircu:	equ ($ - tabCarRdd) >> 3 + 32
	defb %00110000
	defb %11001100
	defb %00110000
	defb %11001100
	defb %11111100
	defb %11000000
	defb %00111100
	defb %00000000

	; 'Í'
iMaiAgudo:	equ ($ - tabCarRdd) >> 3 + 32
	defb %00001100
	defb %00110000
	defb %11111100
	defb %00110000
	defb %00110000
	defb %00110000
	defb %11111100
	defb %00000000

	; 'í'
iMinAgudo:	equ ($ - tabCarRdd) >> 3 + 32
	defb %00001100
	defb %00110000
	defb %00000000
	defb %11110000
	defb %00110000
	defb %00110000
	defb %11111100
	defb %00000000

	; 'Ó'
oMaiAgudo:	equ ($ - tabCarRdd) >> 3 + 32
	defb %00001100
	defb %00110000
	defb %00110000
	defb %11001100
	defb %11001100
	defb %11001100
	defb %00110000
	defb %00000000

	; 'ó'
oMinAgudo:	equ ($ - tabCarRdd) >> 3 + 32
	defb %00001100
	defb %00110000
	defb %00000000
	defb %00110000
	defb %11001100
	defb %11001100
	defb %00110000
	defb %00000000

	; 'Ô'
oMaiCircu:	equ ($ - tabCarRdd) >> 3 + 32
	defb %00110000
	defb %11001100
	defb %00110000
	defb %11001100
	defb %11001100
	defb %11001100
	defb %00110000
	defb %00000000

	; 'ô'
oMinCircu:	equ ($ - tabCarRdd) >> 3 + 32
	defb %00110000
	defb %11001100
	defb %00000000
	defb %00110000
	defb %11001100
	defb %11001100
	defb %00110000
	defb %00000000

	; 'Õ'
oMaiTil:	equ ($ - tabCarRdd) >> 3 + 32
	defb %00110011
	defb %11001100
	defb %00110000
	defb %11001100
	defb %11001100
	defb %11001100
	defb %00110000
	defb %00000000

	; 'õ'
oMinTil:	equ ($ - tabCarRdd) >> 3 + 32
	defb %00110011
	defb %11001100
	defb %00000000
	defb %00110000
	defb %11001100
	defb %11001100
	defb %00110000
	defb %00000000

	; 'º'
oOrdinal:	equ ($ - tabCarRdd) >> 3 + 32
	defb %00110000
	defb %11001100
	defb %11001100
	defb %00110000
	defb %00000000
	defb %11111100
	defb %00000000
	defb %00000000

	; 'Ú'
uMaiAgudo:	equ ($ - tabCarRdd) >> 3 + 32
	defb %00001100
	defb %00110000
	defb %00000000
	defb %11001100
	defb %11001100
	defb %11001100
	defb %00110000
	defb %00000000

	; 'ú'
uMinAgudo:	equ ($ - tabCarRdd) >> 3 + 32
	defb %00001100
	defb %00110000
	defb %00000000
	defb %11001100
	defb %11001100
	defb %11001100
	defb %00111100
	defb %00000000

	; 'Ç'
cMaiCedil:	equ ($ - tabCarRdd) >> 3 + 32
	defb %00110000
	defb %11001100
	defb %11000000
	defb %11000000
	defb %11000000
	defb %11001100
	defb %00110000
	defb %11000000

	; 'ç'
cMinCedil:	equ ($ - tabCarRdd) >> 3 + 32
	defb %00000000
	defb %00000000
	defb %00110000
	defb %11001100
	defb %11000000
	defb %11001100
	defb %00110000
	defb %11000000

	; Canto superior esquerdo.
canSupEsq:	equ ($ - tabCarRdd) >> 3 + 32
	defb %00000000
	defb %00000000
	defb %00000000
	defb %00001111
	defb %00111111
	defb %00110000
	defb %00110000
	defb %00110000

	; Canto superior direito.
canSupDir:	equ ($ - tabCarRdd) >> 3 + 32
	defb %00000000
	defb %00000000
	defb %00000000
	defb %11000000
	defb %11110000
	defb %00110000
	defb %00110000
	defb %00110000

	; Canto inferior esquerdo.
canInfEsq:	equ ($ - tabCarRdd) >> 3 + 32
	defb %00110000
	defb %00110000
	defb %00110000
	defb %00111111
	defb %00001111
	defb %00000000
	defb %00000000
	defb %00000000

	; Canto inferior direito.
canInfDir:	equ ($ - tabCarRdd) >> 3 + 32
	defb %00110000
	defb %00110000
	defb %00110000
	defb %11110000
	defb %11000000
	defb %00000000
	defb %00000000
	defb %00000000

	; Traço horizontal.
traHorizo:	equ ($ - tabCarRdd) >> 3 + 32
	defb %00000000
	defb %00000000
	defb %00000000
	defb %11111111
	defb %11111111
	defb %00000000
	defb %00000000
	defb %00000000

	; Traço vertical.
traVertic:	equ ($ - tabCarRdd) >> 3 + 32
	defb %00110000
	defb %00110000
	defb %00110000
	defb %00110000
	defb %00110000
	defb %00110000
	defb %00110000
	defb %00110000

	; 'Enter'
carEnter:	equ ($ - tabCarRdd) >> 3 + 32
	defb %00000011
	defb %00000011
	defb %00000011
	defb %00001111
	defb %00110011
	defb %11111100
	defb %00110000
	defb %00001100
