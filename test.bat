@echo off
setlocal enabledelayedexpansion
call :vbs_script
set /a _count1=0&set /a _count2=0
type nul >vertical.txt
type nul >horizontal.txt
md PDF_converted 2>nul
for /r %%g in (*.jpg *.bmp) do (
	set "_folder=%%~dpg"
	for /f "delims=" %%h in ("!_folder:~0,-1!") do set "_folder=%%~nh"
	set /a _count1+=1
	set /a _count2+=1
	if !_count1! leq 2 (echo %%g) >>horizontal.txt
	if !_count1! equ 2 (
		start vbs.bat
		call :panorama 1 "filelist=horizontal.txt"
		type nul >horizontal.txt
		set /a _count1=0
		ren Clipboard.jpg "!_folder!_%%~ng.jpg"
		(echo !_folder!_%%~ng.jpg) >>vertical.txt
	)
	if !_count2! equ 4 (
		start vbs.bat
		call :panorama 2 "filelist=vertical.txt"
		set /a _count2=0
		type nul >vertical.txt
		"%programfiles%\IrfanView\i_view64.exe" "%cd%\Clipboard.jpg" /convert="%cd%\PDF_converted\!_folder!_%%~ng.pdf"
		del Clipboard.jpg
	)
)
del test.vbs vbs.bat
pause&exit
:panorama
"%programfiles%\IrfanView\i_view64.exe" /panorama=(%1,%2)
exit /b
:vbs_script
(echo cscript.exe /noLogo test.vbs
echo exit) >vbs.bat
(echo Set WshShell = WScript.CreateObject^("WScript.Shell"^)
echo WScript.Sleep 100
echo WshShell.AppActivate "i_view64.exe"
echo WScript.Sleep 600
echo WshShell.SendKeys "s"
echo WScript.Sleep 600
echo WshShell.SendKeys "%%s"
echo WScript.Sleep 500
echo WshShell.SendKeys "{ESC}")>test.vbs
REM echo z = WScript.StdIn.ReadLine^(^))>test.vbs
exit /b
