;=========
tabLadRPG:
;=========

	; Grama 1/2
ladGrama1:
	defb %01000000
	defb %00000000
	defb %00110001
	defb %00000000
	defb %01000100
	defb %00000000
	defb %00000001
	defb %00000000
nlGrama1:	equ (ladGrama1 - tabLadRPG) >> 3

	; Grama 2/2
ladGrama2:
	defb %01000000
	defb %00000000
	defb %00010000
	defb %00000000
	defb %00100000
	defb %00000000
	defb %00010000
	defb %00000000
nlGrama2:	equ (ladGrama2 - tabLadRPG) >> 3

	; Árvore 1/4
ladArvor1:
	defb %00000100
	defb %00010001
	defb %01000100
	defb %00010000
	defb %01000000
	defb %00000000
	defb %10001100
	defb %01100011
nlArvor1:	equ (ladArvor1 - tabLadRPG) >> 3

	; Árvore 2/4
ladArvor2:
	defb %01000000
	defb %00010100
	defb %01000001
	defb %00000100
	defb %00000001
	defb %00001100
	defb %00110001
	defb %00001000
nlArvor2:	equ (ladArvor2 - tabLadRPG) >> 3

	; Árvore 3/4
ladArvor3:
	defb %10001011
	defb %00100010
	defb %00001011
	defb %00000010
	defb %00000011
	defb %00101111
	defb %10111111
	defb %00101111
nlArvor3:	equ (ladArvor3 - tabLadRPG) >> 3

	; Árvore 4/4
ladArvor4:
	defb %00100010
	defb %11001000
	defb %10100000
	defb %11000000
	defb %11000000
	defb %11001000
	defb %11110010
	defb %11111100
nlArvor4:	equ (ladArvor4 - tabLadRPG) >> 3

	; Água 1/2
ladAgua1:
	defb %10101010
	defb %10101010
	defb %10101010
	defb %10101010
	defb %10101010
	defb %10101010
	defb %10101010
	defb %10101010
nlAgua1:	equ (ladAgua1 - tabLadRPG) >> 3

	; Água 2/2
ladAgua2:
	defb %10101010
	defb %01100110
	defb %10101010
	defb %10011001
	defb %10101010
	defb %10101010
	defb %10101010
	defb %10101010
nlAgua2:	equ (ladAgua2 - tabLadRPG) >> 3

	; Rochas 1/4
ladRocha1:
	defb %10111111
	defb %10111111
	defb %10101110
	defb %01101101
	defb %11101011
	defb %11111001
	defb %11111011
	defb %11111001
nlRocha1:	equ (ladRocha1 - tabLadRPG) >> 3

	; Rochas 2/4
ladRocha2:
	defb %10111011
	defb %10111110
	defb %01101110
	defb %11011011
	defb %11111011
	defb %11101111
	defb %11101111
	defb %11101111
nlRocha2:	equ (ladRocha2 - tabLadRPG) >> 3

	; Rochas 3/4
ladRocha3:
	defb %11111011
	defb %10111011
	defb %10101010
	defb %10111011
	defb %11101110
	defb %11101011
	defb %10011110
	defb %10111111
nlRocha3:	equ (ladRocha3 - tabLadRPG) >> 3

	; Rochas 4/4
ladRocha4:
	defb %11101110
	defb %10111001
	defb %11100111
	defb %10101111
	defb %10011011
	defb %10111011
	defb %11111110
	defb %10111110
nlRocha4:	equ (ladRocha4 - tabLadRPG) >> 3

	; Pedras 1/4
ladPedra1:
	defb %11000000
	defb %11110000
	defb %10100001
	defb %00000111
	defb %00001101
	defb %00110111
	defb %00011111
	defb %00111111
nlPedra1:	equ (ladPedra1 - tabLadRPG) >> 3

	; Pedras 2/4
ladPedra2:
	defb %11000000
	defb %10000001
	defb %00110010
	defb %00110000
	defb %11101100
	defb %00000000
	defb %00001100
	defb %11000100
nlPedra2:	equ (ladPedra2 - tabLadRPG) >> 3

	; Pedras 3/4
ladPedra3:
	defb %00101111
	defb %00111011
	defb %00101110
	defb %11001011
	defb %10000000
	defb %00000000
	defb %00110011
	defb %00100000
nlPedra3:	equ (ladPedra3 - tabLadRPG) >> 3

	; Pedras 4/4
ladPedra4:
	defb %11001100
	defb %10110111
	defb %11101110
	defb %00111011
	defb %00001110
	defb %11000000
	defb %10001100
	defb %00001000
nlPedra4:	equ (ladPedra4 - tabLadRPG) >> 3

	; Parede de tijolos
ladTijolo:
	defb %01010101
	defb %11011111
	defb %11011111
	defb %11011111
	defb %01010101
	defb %11111101
	defb %11111101
	defb %11111101
nlTijolo:	equ (ladTijolo - tabLadRPG) >> 3

; Telhado
ladTelhad:
	defb %01111110
	defb %11111111
	defb %01111110
	defb %11111111
	defb %01111110
	defb %11111111
	defb %01111110
	defb %11111111
nlTelhad:	equ (ladTelhad - tabLadRPG) >> 3

; Porta fechada 1/4
ladPorta1:
	defb %10111011
	defb %11111111
	defb %10111111
	defb %11111111
	defb %10111111
	defb %11111111
	defb %10111111
	defb %11111111
nlPorta1:	equ (ladPorta1 - tabLadRPG) >> 3

; Porta fechada 2/4
ladPorta2:
	defb %10111011
	defb %11111101
	defb %11111111
	defb %11111101
	defb %11111111
	defb %11111101
	defb %11111111
	defb %11011101
nlPorta2:	equ (ladPorta2 - tabLadRPG) >> 3

; Porta fechada 3/4
ladPorta3:
	defb %10111111
	defb %11111111
	defb %10111111
	defb %11111111
	defb %10111111
	defb %11111111
	defb %10111111
	defb %11011101
nlPorta3:	equ (ladPorta3 - tabLadRPG) >> 3

	; Porta fechada 4/4
ladPorta4:
	defb %11011111
	defb %11111101
	defb %11111111
	defb %11111101
	defb %11111111
	defb %11111101
	defb %11111111
	defb %11011101
nlPorta4:	equ (ladPorta4 - tabLadRPG) >> 3

	; Porta aberta 1/4
ladAbert1:
	defb %10111011
	defb %11101010
	defb %10101010
	defb %11101010
	defb %10101010
	defb %11101010
	defb %10101010
	defb %11101010
nlAbert1:	equ (ladAbert1 - tabLadRPG) >> 3

	; Porta aberta 2/4
ladAbert2:
	defb %10111011
	defb %10101001
	defb %10101011
	defb %10101001
	defb %10101011
	defb %10101001
	defb %10101011
	defb %10101001
nlAbert2:	equ (ladAbert2 - tabLadRPG) >> 3

	; Porta aberta 3/4
ladAbert3:
	defb %10101010
	defb %11101010
	defb %10101010
	defb %11011001
	defb %10100110
	defb %11011001
	defb %10010101
	defb %11011101
nlAbert3:	equ (ladAbert3 - tabLadRPG) >> 3

	; Porta aberta 4/4
ladAbert4:
	defb %10101011
	defb %10101001
	defb %10101011
	defb %10011001
	defb %01100111
	defb %10011001
	defb %01010111
	defb %11011101
nlAbert4:	equ (ladAbert4 - tabLadRPG) >> 3

	; Janela 1/2
ladJanel1:
	defb %01010101
	defb %11101010
	defb %11111010
	defb %11101010
	defb %01110000
	defb %11101010
	defb %11111010
	defb %11101010
nlJanel1:	equ (ladJanel1 - tabLadRPG) >> 3

	; Janela 2/2
ladJanel2:
	defb %01010101
	defb %00101011
	defb %00101001
	defb %00101011
	defb %00000001
	defb %00101011
	defb %00101001
	defb %00101011
nlJanel2:	equ (ladJanel2 - tabLadRPG) >> 3

	; Escada 1/2
ladEscad1:
	defb %01010101
	defb %01010101
	defb %01101110
	defb %01101011
	defb %01010101
	defb %01010101
	defb %01101110
	defb %01101011
nlEscad1: 	equ (ladEscad1 - tabLadRPG) >> 3

	; Escada 2/2
ladEscad2:
	defb %01010101
	defb %01010101
	defb %11101101
	defb %10111001
	defb %01010101
	defb %01010101
	defb %11101101
	defb %10111001
nlEscad2:	equ (ladEscad2 - tabLadRPG) >> 3

	; Cabeça de frente 1/2.
ladCabeF1:
	defb %00001010
	defb %00101010
	defb %00101010
	defb %00100110
	defb %00101001
	defb %00011001
	defb %00100101
	defb %00000101
nlCabeF1:	equ (ladCabeF1 - tabLadRPG) >> 3

	; Cabeça de frente 2/2.
ladCabeF2:
	defb %10100000
	defb %10101000
	defb %10101000
	defb %10011000
	defb %01101000
	defb %01100100
	defb %01011000
	defb %01010000
nlCabeF2:	equ (ladCabeF2 - tabLadRPG) >> 3

	; Corpo de frente parado 1/2.
ladCorpF1:
	defb %00001101
	defb %00111111
	defb %00011111
	defb %00011011
	defb %00011010
	defb %00001010
	defb %00001010
	defb %00001111
nlCorpF1:	equ (ladCorpF1 - tabLadRPG) >> 3

	; Corpo de frente, parado 2/2.
ladCorpF2:
	defb %01110000
	defb %11111100
	defb %11110100
	defb %11100100
	defb %10100100
	defb %10100000
	defb %10100000
	defb %11110000
nlCorpF2:	equ (ladCorpF2 - tabLadRPG) >> 3

	; Corpo de frente, pé direito à frente 1/2.
ladCrpFD1:
	defb %00111101
	defb %00111111
	defb %00011111
	defb %00001011
	defb %00001010
	defb %00001010
	defb %00001010
	defb %00001111
nlCrpFD1:	equ (ladCrpFD1 - tabLadRPG) >> 3

	; Corpo de frente, pé direito à frente 2/2.
ladCrpFD2:
	defb %01110000
	defb %11111100
	defb %11110100
	defb %11010100
	defb %10010000
	defb %11110000
	defb %00000000
	defb %00000000
nlCrpFD2:	equ (ladCrpFD2 - tabLadRPG) >> 3

	; Corpo de frente, pé esquerdo à frente 1/2.
ladCrpFE1:
	defb %00001101
	defb %00111111
	defb %00011111
	defb %00010111
	defb %00000110
	defb %00001111
	defb %00000000
	defb %00000000
nlCrpFE1:	equ (ladCrpFE1 - tabLadRPG) >> 3

	; Corpo de frente, pé esquerdo à frente 2/2.
ladCrpFE2:
	defb %01111100
	defb %11111100
	defb %11110100
	defb %11100000
	defb %10100000
	defb %10100000
	defb %10100000
	defb %11110000
nlCrpFE2:	equ (ladCrpFE2 - tabLadRPG) >> 3

	; Cabeça à direita 1/2.
ladCabeD1: 
	defb %00001010
	defb %00101010
	defb %00101010
	defb %00101010
	defb %00101010
	defb %00100110
	defb %00001001
	defb %00000001
nlCabeD1:	equ (ladCabeD1 - tabLadRPG) >> 3

	; Cabeça à direita 2/2.
ladCabeD2: 
	defb %10100000
	defb %10101000
	defb %10101000
	defb %10010000
	defb %01100100
	defb %01100100
	defb %01010000
	defb %01010000
nlCabeD2:	equ (ladCabeD2 - tabLadRPG) >> 3

	; Corpo à direita parado 1/2.
ladCorpD1: 
	defb %00001101
	defb %00001111
	defb %00001111
	defb %00001011
	defb %00001001
	defb %00001001
	defb %00000010
	defb %00000011
nlCorpD1:	equ (ladCorpD1 - tabLadRPG) >> 3

	; Corpo à direita parado 1/2.
ladCorpD2: 
	defb %01110000
	defb %11110000
	defb %11110000
	defb %11100000
	defb %10100000
	defb %01110000
	defb %01110000
	defb %11110000
nlCorpD2:	equ (ladCorpD2 - tabLadRPG) >> 3

	; Corpo à direita, pé direito à frente 1/2
ladCrpDD1:
	defb %00001101
	defb %00001111
	defb %00001111
	defb %00010111
	defb %00011010
	defb %00011010
	defb %00111100
	defb %00000000
nlCrpDD1:	equ (ladCrpDD1 - tabLadRPG) >> 3

	; Corpo à direita, pé direito à frente 2/2
ladCrpDD2:
	defb %01110000
	defb %11110000
	defb %11110000
	defb %11100000
	defb %10100000
	defb %10100000
	defb %10101100
	defb %11111100
nlCrpDD2:	equ (ladCrpDD2 - tabLadRPG) >> 3

	; Corpo à direita, pé esquerdo à frente 1/2
ladCrpDE1:
	defb %00011101
	defb %00011111
	defb %00011111
	defb %00001011
	defb %00001010
	defb %00111010
	defb %00111010
	defb %00111100
nlCrpDE1:	equ (ladCrpDE1 - tabLadRPG) >> 3

	; Corpo à direita, pé esquerdo à frente 2/2
ladCrpDE2:
	defb %01110000
	defb %11110000
	defb %11110000
	defb %01100000
	defb %01010000
	defb %10011100
	defb %11111100
	defb %00000000
nlCrpDE2:	equ (ladCrpDE2 - tabLadRPG) >> 3

	; Cabeça à esquerda 1/2.
ladCabeE1: 
	defb %00001010
	defb %00101010
	defb %00101010
	defb %00000110
	defb %00011001
	defb %00011001
	defb %00000101
	defb %00000101
nlCabeE1:	equ (ladCabeE1 - tabLadRPG) >> 3

	; Cabeça à esquerda 2/2.
ladCabeE2: 
	defb %10100000
	defb %10101000
	defb %10101000
	defb %10101000
	defb %10101000
	defb %10011000
	defb %01100000
	defb %01000000
nlCabeE2:	equ (ladCabeE2 - tabLadRPG) >> 3

	; Corpo à esquerda parado 1/2.
ladCorpE1: 
	defb %00001101
	defb %00001111
	defb %00001111
	defb %00001011
	defb %00001010
	defb %00001101
	defb %00001101
	defb %00001111
nlCorpE1:	equ (ladCorpE1 - tabLadRPG) >> 3

	; Corpo à esquerda parado 1/2.
ladCorpE2: 
	defb %01110000
	defb %11110000
	defb %11110000
	defb %11100000
	defb %01100000
	defb %01000000
	defb %10000000
	defb %11000000
nlCorpE2:	equ (ladCorpE2 - tabLadRPG) >> 3

	; Corpo à esquerda, pé direito à frente 1/2
ladCrpED1:
	defb %00001101
	defb %00001111
	defb %00001111
	defb %00001001
	defb %00000101
	defb %00110110
	defb %00111111
	defb %00000000
nlCrpED1:	equ (ladCrpED1 - tabLadRPG) >> 3

	; Corpo à esquerda, pé direito à frente 2/2
ladCrpED2:
	defb %01110100
	defb %11110100
	defb %11110100
	defb %11100000
	defb %10100000
	defb %10101100
	defb %10101100
	defb %00111100
nlCrpED2:	equ (ladCrpED2 - tabLadRPG) >> 3

	; Corpo à esquerda, pé esquerdo à frente 1/2
ladCrpEE1:
	defb %00001101
	defb %00001111
	defb %00001111
	defb %00001011
	defb %00001010
	defb %00001010
	defb %00111010
	defb %00111111
nlCrpEE1:	equ (ladCrpEE1 - tabLadRPG) >> 3

	; Corpo à esquerda, pé esquerdo à frente 2/2
ladCrpEE2:
	defb %01110000
	defb %11110000
	defb %11110000
	defb %11010100
	defb %10100100
	defb %10100100
	defb %00111100
	defb %00000000
nlCrpEE2:	equ (ladCrpEE2 - tabLadRPG) >> 3

	; Cabeça de costas 1/2.
ladCabeC1: 
	defb %00001010
	defb %00101010
	defb %00101010
	defb %00101010
	defb %00101010
	defb %00101010
	defb %00101010
	defb %00001010
nlCabeC1:	equ (ladCabeC1 - tabLadRPG) >> 3

	; Cabeça de costas 2/2.
ladCabeC2:
	defb %10100000
	defb %10101000
	defb %10101000
	defb %10101000
	defb %10101000
	defb %10101000
	defb %10101000
	defb %10100000
nlCabeC2:	equ (ladCabeC2 - tabLadRPG) >> 3

	; Corpo de costas parado 1/2.
ladCorpC1:
	defb %00001101
	defb %00111111
	defb %00011111
	defb %00011011
	defb %00011010
	defb %00001010
	defb %00001010
	defb %00001111
nlCorpC1:	equ (ladCorpC1 - tabLadRPG) >> 3

	; Corpo de costas, parado 2/2.
ladCorpC2:
	defb %01110000
	defb %11111100
	defb %11110100
	defb %11100100
	defb %10100100
	defb %10100000
	defb %10100000
	defb %11110000
nlCorpC2:	equ (ladCorpC2 - tabLadRPG) >> 3

	; Corpo de costas, pé direito à frente 1/2.
ladCrpCD1:
	defb %00111101
	defb %00111111
	defb %00011111
	defb %00001011
	defb %00001010
	defb %00001010
	defb %00001010
	defb %00001111
nlCrpCD1:	equ (ladCrpCD1 - tabLadRPG) >> 3

	; Corpo de costas, pé direito à frente 2/2.
ladCrpCD2:
	defb %01110000
	defb %11111100
	defb %11110100
	defb %11100100
	defb %10100100
	defb %11110100
	defb %00000000
	defb %00000000
nlCrpCD2:	equ (ladCrpCD2 - tabLadRPG) >> 3

	; Corpo de costas, pé esquerdo à frente 1/2.
ladCrpCE1:
	defb %00001101
	defb %00111111
	defb %00011111
	defb %00011011
	defb %00011010
	defb %00011111
	defb %00000000
	defb %00000000
nlCrpCE1:	equ (ladCrpCE1 - tabLadRPG) >> 3

	; Corpo de costas, pé esquerdo à frente 2/2.
ladCrpCE2:
	defb %01111100
	defb %11111100
	defb %11110100
	defb %11100000
	defb %10100000
	defb %10100000
	defb %10100000
	defb %11110000
nlCrpCE2:	equ (ladCrpCE2 - tabLadRPG) >> 3
