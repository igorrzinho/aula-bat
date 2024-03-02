@echo off 

title Cadastro - batch

mode 80,40
color 02
:: comentario

:inicio
	cls
	echo. 
	echo --------------------------------------------
	echo Gerenciamento de Clientes
	echo --------------------------------------------
	echo [N] Novo cliente
	echo [L] Listar todos clientes
	echo [P] Pesquisar clientes
	echo [R] Retornar ao Menu Principal
	echo --------------------------------------------
	set /p option=Digite uma opcao desejada: 
	echo %option%
	if /i %option% == N (goto:novo)
	if /i %option% == L (goto:listar)
	if /i %option% == P (goto:pesquisar)
	if /i %option% == R (call aula02.bat) else (
		echo.
		echo Opçao invalida
		echo.
		goto inicio
	)

:novo
	cls
	echo.
	set /p cpf=Digite o cpf do cliente: 
	set /p nome=Digite o nome do cliente: 	
	echo.
	echo %date%:%time%   %cpf%   %nome% >> lista.txt
	echo.
	echo cliente adicionado !!!
	echo.
	set /p resp=gravar novo cliente? [S/N]
	if /i %resp% == s (goto:novo) else (goto:inicio)

:listar
	cls
	mode 120,60
	echo.
	echo --------------------------------------------
	echo       DATA:TEMPO    CPF    NOME
	echo --------------------------------------------
	type lista.txt
	echo --------------------------------------------
	pause
	goto inicio

:pesquisar
	cls
	mode 120,60
	echo.
	set /p busca=Digite o nome ou cpf do cliente
	echo --------------------------------------------
	echo       DATA:TEMPO    CPF    NOME
	echo --------------------------------------------
	findstr /i "%busca%" lista.txt
	echo --------------------------------------------
	set /p resp=pesquisar outro cliente? [S/N]
	if /i %resp% == s (goto:pesquisar) else (goto:inicio)


	
	
	