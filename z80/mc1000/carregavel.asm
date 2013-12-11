; MODELO PARA PROGRAMA EM CÓDIGO DE MÁQUINA
; CARREGÁVEL NO MC-1000 VIA COMANDO TLOAD.
 
; (1) DADOS DO ARQUIVO EM FITA CASSETE:
;
; a) Nome do arquivo (até 14 caracteres).
;    * Se o nome do arquivo tiver menos de
;      14 caracteres, um caracter $0d é
;      usado para marcar o final do nome do
;      arquivo.
;    * O comando TLOAD ignora completamente
;      o nome do arquivo, então podemos
;      deixá-lo vazio (apenas um caracter
;      $0d) para reduzir o tempo de
;      carregamento.
;
; b) Endereço de início dos dados do arquivo.
;
; c) Endereço de fim dos dados do arquivo.
 
    defb  $0d ; Nome do arquivo vazio.
    defw  inicioarq
    defw  fimarq
 
; ==================================
 
; (2) VALORES INICIAIS DAS VARIÁVEIS DA
; INFRAESTRUTURA PARA JOGOS,
; do endereço $0100 ao $01ff (256 bytes):
;
; Para que o TLOAD termine sem erro é
; preciso que a variável HEAD ($0106)
; contenha o valor $00. As demais
; variáveis devem ser ajustadas conforme
; a necessidade do jogo.
 
    org   $0100
inicioarq:
 
;
    defb  $ff,$ff,$ff
PGM:
PGN:
MUSIC:
    defb  $ff
PLAY:
    defb  $01
PLAYMX:
    defb  $01
HEAD:
    defb  $00
RANDOM:
    defw  $ffff
RCRDPT:
    defw  RECORD
RECORD:
    defb  $00,$00
    defb  $00,$00
    defb  $00,$00
    defb  $00,$00
    defb  $00,$00
    defb  $00,$00
    defb  $00,$00
    defb  $00,$00
KEY0:
    defb  $ff,$ff,$ff,$ff
;
    defb  $ff
JOB:
    ret
    defb  $ff,$ff
SCOREA:
    defb  $00
SCOREB:
    defb  $00
SHAPE0:
    defb  $ff
;
    defb  $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
    defb  $ff,$ff
JOBM:
    ret
    defb  $ff,$ff
;
    defb  $ff,$ff
TABLE:
NSA:
    defw  $ffff
NAA:
    defw  $ffff
AVALUE:
    defb  $00
VOICEA:
    defb  $ff
INTRPA:
    defb  $ff
TEMPA:
    defb  $ff
INTA:
    defb  $ff
NSB:
    defw  $ffff
NBB:
    defw  $ffff
BVALUE:
    defb  $00
VOICEB:
    defb  $ff
INTRPB:
    defb  $ff
TEMPB:
    defb  $ff
INTB:
    defb  $ff
NSC:
    defw  $ffff
NCC:
    defw  $ffff
CVALUE:
    defb  $00
VOICEC:
    defb  $ff
INTRPC:
    defb  $ff
TEMPC:
    defb  $ff
INTC:
    defb  $ff
ENABLE:
    defb  $ff
AMPLIT:
    defb  $ff
REGIST:
    defw  $ffff
DEFIN:
    defb  $ff
ONAMP:
    defw  $ffff
LPLAY:
    defb  $ff
;
    defb  $ff,$ff,$ff,$ff,$ff,$ff
CHECK:
    defb  $00
;
    defb  $ff,$ff,$ff,$ff
DSNAM:
    defw  $8000
DENAM:
    defw  $8200
HISCOR:
    defw  $ffff
TEMP:
    defb  $ff
;
    defb  $ff,$ff
RIGHTJ:
    defb  $ff
CHANA:
    defw  $ffff
;
    defb  $ff,$ff,$ff
TONEA:
    defb  $ff
CHANB:
    defw  $ffff
;
    defb  $ff,$ff,$ff
TONEB:
    defb  $ff
CHANC:
    defw  $ffff
;
    defb  $ff,$ff,$ff
TONEC:
    defb  $ff
OBUF:
    defb  $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
    defb  $ff,$ff,$ff,$ff,$ff,$ff
FILNAM:
    defb  $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
    defb  $ff,$ff,$ff,$ff,$ff,$ff
;
    defb  $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
    defb  $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
    defb  $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
    defb  $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
    defb  $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
    defb  $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
    defb  $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
    defb  $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
    defb  $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
    defb  $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
    defb  $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
    defb  $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
    defb  $ff,$ff,$ff,$ff,$ff
 
; ==================================
 
; (3) PROGRAMA EM CÓDIGO DE MÁQUINA,
; a partir do endereço $0200.
 
#include "principal.asm"
 
; ==================================
 
fimarq:
;    defb  $ff
