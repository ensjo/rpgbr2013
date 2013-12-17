;=====
mapas:
;=====
; Definições de mapas.

	; Mapa de teste.
mapTeste:
	defb nsPedra ,nsGrama ,nsGrama ,nsTelTij,nsTelTij,nsTelTij,nsTelTij,nsTelTij,nsTelTij,nsTelTij,nsGrama ,nsGrama ,nsGrama ,nsGrama ,nsArvore,nsArvore
	defb nsGrama ,nsArvore,nsGrama ,nsTijolo,nsJanela,nsTijolo,nsAberta,nsTijolo,nsJanela,nsTijolo,nsGrama ,nsArvore,nsGrama ,nsArvore,nsGrama ,nsArvore
	defb nsGrama ,nsGrama ,nsGrama ,nsGrama ,nsGrama ,nsGrama ,nsGrama ,nsGrama ,nsGrama ,nsGrama ,nsGrama ,nsGrama ,nsGrama ,nsGrama ,nsGrama ,nsGrama 
	defb nsAgua  ,nsAgua  ,nsAgua  ,nsPonte ,nsAgua  ,nsAgua  ,nsAgua  ,nsGrama ,nsGrama ,nsGrama ,nsGrama ,nsGrama ,nsGrama ,nsGrama ,nsGrama ,nsGrama 
	defb nsAgua  ,nsAgua  ,nsAgua  ,nsAgua  ,nsAgua  ,nsAgua  ,nsAgua  ,nsAgua  ,nsGrama ,nsGrama ,nsGrama ,nsGrama ,nsGrama ,nsGrama ,nsArvore,nsAgua  
	defb nsAgua  ,nsAgua  ,nsAgua  ,nsAgua  ,nsAgua  ,nsAgua  ,nsAgua  ,nsGrama ,nsGrama ,nsArvore,nsAgua  ,nsAgua  ,nsPonte ,nsAgua  ,nsAgua  ,nsAgua  
	defb nsArvore,nsPedra ,nsAgua  ,nsAgua  ,nsAgua  ,nsPedra ,nsPedra ,nsArvore,nsArvore,nsAgua  ,nsAgua  ,nsGrama ,nsGrama ,nsGrama ,nsGrama ,nsArvore
	defb nsPedra ,nsRocha ,nsAgua  ,nsAgua  ,nsRocha ,nsRocha ,nsPedra ,nsArvore,nsAgua  ,nsAgua  ,nsGrama ,nsGrama ,nsGrama ,nsGrama ,nsArvore,nsArvore
nmTeste:	equ (mapTeste - mapas) >> 7