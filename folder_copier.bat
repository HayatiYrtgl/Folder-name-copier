@echo off
::title
title folder name copier-maker

::color
color 2

:: setlocal
setlocal enabledelayedexpansion

:: goto main func
goto :main

:: definition of main
:main
setlocal
	:: ask for dir to get all folder names
	set /p my_path=What is your path to get all folder names:
	
	:: to make folders we need a path again
	set /p target_path=Target path:
	
	:: goto my path var
	cd /d !my_path!
	
	:: creating progress
	for /d %%i in (*) do (
		cd /d !target_path!
		mkdir %%~ni
	)
	echo process is achieved
	pause 

endlocal
goto :eof