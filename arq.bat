@echo off 

title Arquivos - batch

mode 80,40
color 02
:: comentario

:inicio
	cls
	echo. 
	echo --------------------------------------------
	echo Gerenciamento de Arquivos
	echo --------------------------------------------
	echo [G] Gerar Arquivos
	echo [o] Organizaer Arquivos 
	echo [R] Retornar ao Menu Principal
	echo --------------------------------------------
	:: o set /p é uma entrada via teclado
	set /p option=Digite uma opcao desejada: 
	echo %option%
	::pause mostra uma frase na tela "digite qualquer tecla para continuar"
	if /i %option% equ g (goto:gerar)
	if /i %option% equ o (goto:organizar)
	if /i %option% equ r (call aula02.bat) else (
		echo.
		echo Opçao invalida
		echo.
		pause
		goto inicio
		::pause > null coloca um cursor piscando na tela
	)
	
:gerar
	echo.
	set /p nome=Digite o nome do arquivo: 
	set /p qtde=Digite o quantidade de arquivos: 
	set /p tipo=Digite o tipo do arquivo: 
	for /L %%n in (1,1,%qtde%) do echo Fatec DSM > %nome%%%n.%tipo%
	echo.
	echo Arquivos Gerados 
	goto inicio

:organizar
	echo.
	set /p pasta=Digite a pasta para ser criada: 
	set /p tipo=Digite o Tipo de arquivo: 
	md %pasta%
	move *.%tipo%  C:\Users\lab5.LABTEC\Documents\1iw\%pasta%
	echo. 
	echo Arquivos organizados!
	echo.
	goto inicio