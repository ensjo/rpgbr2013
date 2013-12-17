;=========
tabSprRPG:
;=========

	; Grama
sprGrama:
	defb nlGrama1,nlGrama2,nlGrama2,nlGrama1
nsGrama:	equ (sprGrama - tabSprRPG) >> 2

	; Árvore
sprArvore:
	defb nlArvor1,nlArvor2,nlArvor3,nlArvor4
nsArvore:	equ (sprArvore - tabSprRPG) >> 2

	; Água
sprAgua
	defb nlAgua1,nlAgua2,nlAgua2,nlAgua1
nsAgua:	equ (sprAgua - tabSprRPG) >> 2

	; Rocha
sprRocha:
	defb nlRocha1,nlRocha2,nlRocha3,nlRocha4
nsRocha:	equ (sprRocha - tabSprRPG) >> 2

	; Pedra
sprPedra:
	defb nlPedra1,nlPedra2,nlPedra3,nlPedra4
nsPedra:	equ (sprPedra - tabSprRPG) >> 2

	; Tijolo
sprTijolo:
	defb nlTijolo,nlTijolo,nlTijolo,nlTijolo
nsTijolo:	equ (sprTijolo - tabSprRPG) >> 2

	; Telhado
sprTelhad:
	defb nlTelhad,nlTelhad,nlTelhad,nlTelhad
nsTelhad:	equ (sprTelhad - tabSprRPG) >> 2

	; Telhado/Tijolo
sprTelTij:
	defb nlTelhad,nlTelhad,nlTijolo,nlTijolo
nsTelTij:	equ (sprTelTij - tabSprRPG) >> 2

	; Porta fechada
sprPorta:
	defb nlPorta1,nlPorta2,nlPorta3,nlPorta4
nsPorta:	equ (sprPorta - tabSprRPG) >> 2

	; Porta aberta
sprAberta:
	defb nlAbert1,nlAbert2,nlAbert3,nlAbert4
nsAberta:	equ (sprAberta - tabSprRPG) >> 2

	; Janela
sprJanela:
	defb nlJanel1,nlJanel2,nlTijolo,nlTijolo
nsJanela:	equ (sprJanela - tabSprRPG) >> 2

	; Escada
sprEscada:
	defb nlEscad1,nlEscad2,nlEscad1,nlEscad2
nsEscada:	equ (sprEscada - tabSprRPG) >> 2

	; Ponte
sprPonte:
	defb nlTelhad,nlTelhad,nlTelhad,nlTelhad
nsPonte:	equ (sprPonte - tabSprRPG) >> 2

	; Avatar de frente parado.
sprAvataF:
	defb nlCabeF1,nlCabeF2,nlCorpF1,nlCorpF2
nsAvataF:	equ (sprAvataF - tabSprRPG) >> 2

	; Avatar de frente, pé direito à frente.
sprAvatFD:
	defb nlCabeF1,nlCabeF2,nlCrpFD1,nlCrpFD2
nsAvatFD:	equ (sprAvatFD - tabSprRPG) >> 2

	; Avatar de frente, pé esquerdo à frente.
sprAvatFE:
	defb nlCabeF1,nlCabeF2,nlCrpFE1,nlCrpFE2
nsAvatFE:	equ (sprAvatFE - tabSprRPG) >> 2

	; Avatar à direita parado.
sprAvataD:
	defb nlCabeD1,nlCabeD2,nlCorpD1,nlCorpD2
nsAvataD:	equ (sprAvataD - tabSprRPG) >> 2

	; Avatar à direita, pé direito à frente.
sprAvatDD:
	defb nlCabeD1,nlCabeD2,nlCrpDD1,nlCrpDD2
nsAvatDD:	equ (sprAvatDD - tabSprRPG) >> 2

	; Avatar à direita, pé esquerdo à frente.
sprAvatDE:
	defb nlCabeD1,nlCabeD2,nlCrpDE1,nlCrpDE2
nsAvatDE:	equ (sprAvatDE - tabSprRPG) >> 2

	; Avatar à esquerda parado.
sprAvataE:
	defb nlCabeE1,nlCabeE2,nlCorpE1,nlCorpE2
nsAvataE:	equ (sprAvataE - tabSprRPG) >> 2

	; Avatar à esquerda, pé direito à frente.
sprAvatED:
	defb nlCabeE1,nlCabeE2,nlCrpED1,nlCrpED2
nsAvatED:	equ (sprAvatED - tabSprRPG) >> 2

	; Avatar à esquerda, pé esquerdo à frente.
sprAvatEE:
	defb nlCabeE1,nlCabeE2,nlCrpEE1,nlCrpEE2
nsAvatEE:	equ (sprAvatEE - tabSprRPG) >> 2

	; Avatar de costas parado.
sprAvataC:
	defb nlCabeC1,nlCabeC2,nlCorpC1,nlCorpC2
nsAvataC:	equ (sprAvataC - tabSprRPG) >> 2

	; Avatar de costas, pé direito à frente.
sprAvatCD:
	defb nlCabeC1,nlCabeC2,nlCrpCD1,nlCrpCD2
nsAvatCD:	equ (sprAvatCD - tabSprRPG) >> 2

	; Avatar de costas, pé esquerdo à frente.
sprAvatCE:
	defb nlCabeC1,nlCabeC2,nlCrpCE1,nlCrpCE2
nsAvatCE:	equ (sprAvatCE - tabSprRPG) >> 2

qtdSprite:	equ ($ - tabSprRPG) >> 2