@echo off 

title Aula02 - batch

mode 80,40
color 02
:: comentario

:inicio
	cls
	echo. 
	echo --------------------------------------------
	echo Menu Princpal
	echo --------------------------------------------
	echo [N] Navegar na Web
	echo [G] Gerenciar os Arquivos
	echo [C] Cadastro Clientes
	echo [J] Jogos
	echo [S] Sair do Script
	echo --------------------------------------------
	:: o set /p é uma entrada via teclado
	set /p option=Digite uma opcao desejada: 
	echo %option%
	::pause mostra uma frase na tela "digite qualquer tecla para continuar"
	if /i %option% equ n (goto:web)
	if /i %option% equ g (call arq.bat)
	if /i %option% equ c (call cad.bat)
	if /i %option% equ j (call jogos.bat)
	if /i %option% equ s (exit) else (
		echo.
		echo Opçao invalida
		echo.
		pause
		goto inicio
		::pause > null coloca um cursor piscando na tela
	)
	
:web 
	echo.
	set /p site=Digite o endereco da pagina desejada: 
	start chrome.exe %site%
	pause 
	goto:inicio
	
