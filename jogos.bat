@echo off
title sorteio

color 0a
set /a count=0
:sorteio
	cls
	set /a n=(%random% %%100) + 1
	set /a count = %cont% + 1
	echo.
	echo Numero sorteado %n%
	echo Quantidade de sorteios %cont%
	echo. 
	set /p resp= Novo sorteio? [S/N]
	if /i %resp% == s (goto:sorteio) else (call aula02.bat)