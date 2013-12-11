; Define nomes de rotinas, endereços de memória e portas de E/S.

MODBUF:	equ $00f5 ; Modo de vídeo atual. (É preciso chamar BANK0 ou BANK1 para efetivar.)

SNAM4:	equ $8000 ; Endereço do início da VRAM.
VRAM:	equ $8000 ; Endereço do início da VRAM. (Um nome mais palatável.)

DELAYB:	equ $c30e ; Faz uma pausa de BC milissegundos.
BANK0:	equ $c879 ; Desabilita VRAM. (Bank switch.)
BANK1:	equ $c886 ; Habilita VRAM. (Bank switch.)
