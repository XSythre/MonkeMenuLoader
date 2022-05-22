@echo off

if not exist "zzinstallzz" (
	powershell -Command Invoke-WebRequest https://github.com/XSythre/install/blob/main/zzinstallzz.zip?raw=true -OutFile zzinstallzz.zip
	tar -xf zzinstallzz.zip
	del /f zzinstallzz.zip
	timeout 10
	goto prehome
)

cls
title Monke Menu Loader
goto prehome

:prehome
	cls
	title Monke Menu Loader
	
	echo.
	echo   Monke Menu Loader
	echo.
	echo   --------------------------
	echo   1. Install Via Steam
	echo   2. Install Via Oculus
	echo   3. Custom Directory
	echo   --------------------------
	echo.
	
	set /p txt=" Choose Option > "

	if %txt% == 1 (
		if exist "dir.txt" (del dir.txt)
		echo C:\Program Files (x86^)\Steam\steamapps\common\Gorilla Tag\BepInEx\Plugins >> dir.txt
		goto home
	)
	
	if %txt% == 2 (
		if exist "dir.txt" (del dir.txt)
		echo C:\Program Files\Oculus\Software\Software\another-axiom-gorilla-tag\BepInEx\Plugins >> dir.txt
		goto home
	)
	
	if %txt% == 3 (
		goto customdir
	)
	



:home
	title Monke Menu Loader
	cls

	echo.
	echo   Monke Menu Loader
	echo.
	echo 	Mango's Mod Menus
	echo ------------------------------
	echo   1. Mangos Mod Menu V1
	echo   2. Mangos Mod Menu V2
	echo   3. Mangos Mod Menu Mega
	echo   4. Mangos Mod Menu V5 Beta
	echo ------------------------------
	echo.
	echo 	Shibex's Mod Menus
	echo ------------------------------
	echo   5. Shibex Menu V1
	echo   6. Shibex Menu V1 Fix
	echo   7. Shibex Menu V1 Edit
	echo   8. Shibex Menu V2
	echo   9. Shibex Menu V3
	echo ------------------------------
	echo.
	
	set /p csmi=" Select Mod > "
	
	if '%csmi%'=='1' (
		start zzinstallzz\MangoMenuV1.bat
	)

	if '%csmi%'=='2' (
		start zzinstallzz\MangoMenuV2.bat
	)

	if '%csmi%'=='3' (
		start zzinstallzz\MangoMenuMega.bat
	)

	if '%csmi%'=='4' (
		start zzinstallzz\MangoMenuV5Beta.bat
	)

	if '%csmi%'=='5' (
		start zzinstallzz\ShibexV1.bat
	)

	if '%csmi%'=='6' (
		start zzinstallzz\ShibexV1fix.bat
	)

	if '%csmi%'=='7' (
		start zzinstallzz\ShibexV1edit.bat
	)

	if '%csmi%'=='8' (
		start zzinstallzz\ShibexV2.bat
	)

	if '%csmi%'=='9' (
		start zzinstallzz\ShibexLatest.bat
	)

	goto home



:customdir
	cls
	title Monke Menu Loader
	
	echo.
	echo   Monke Menu Loader
	echo.
	echo   tHiS iS cAsE sEnSiTiVe! Example: D:\Downloads\Gorilla Tag
	echo.
	
	set /p txt2=" What is the directory of your Gorilla Tag? > "
	
	if exist "dir.txt" (del dir.txt)
	echo %txt2% > "dir.txt"
	cls
	
	echo.
	echo   Monke Menu Loader
	echo.
	
	pause> nul
	goto home
