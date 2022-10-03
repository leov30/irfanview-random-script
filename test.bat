@echo off
for %%A in (%*) do echo %%A
pause&exit



REM setlocal enabledelayedexpansion
REM set /a _count=0
REM for /f "tokens=2 delims=:" %%g in ('sort /r file.txt') do (
	REM set /a _count+=1
	REM if !_count! leq 3 echo %%g
REM )
REM pause





REM @echo off
REM setlocal enabledelayedexpansion
REM set /a _max=0
REM for /f "tokens=2 delims=:" %%g in (file.txt) do (
     REM set /a _max+=1
     REM set "_filelist[!_max!]=%%g"
REM )

REM for /l %%g in (1,1,%_max%) do echo !_filelist[%%g]!
REM pause




REM @echo off
REM setlocal enabledelayedexpansion
REM if not exist "c:\movies\" md c:\movies
REM if not exist "c:\series\" md c:\series
REM for %%g in (*.mp4) do (
	REM set "_str=%%~ng"
	REM if " "=="!_str:~-5,1!" (
		REM set "_year=!_str:~-4!"
		REM if not exist "c:\movies\!_year!" md "c:\movies\!_year!"
		REM copy "%%g" "c:\movies\!_year!"
	REM )else (
		REM set "_serie=!_str:~0,-7!"
		REM if not exist "c:\series\!_serie!\" md "c:\series\!_serie!"
		REM copy "%%g" "c:\series\!_serie!"
	REM )
REM )
REM pause



REM for /d %%g in ("C:\Movies\*") do (
	REM if exist "*%%~ng.mp4" move "*%%~ng.mp4" "%%g"
REM )
REM for /d %%g in ("C:\Series\*") do (
	REM if exist "%%~ng*.mp4" move "%%~ng*.mp4" "%%g"
REM )



REM @echo off
REM setlocal enabledelayedexpansion
REM for /r "c:\VideoPlayer" %%g in (*.txt) do (
	REM xcopy "%%~dpg" "c:\test_folder" /i/s
REM )
REM pause


REM @echo off
REM cd /d c:\windows\sytem32
REM for /r "c:\VideoPlayer" %%A in (*.*) do (
	REM for /f "tokens=1-6 delims=\" %%a in ("%%A") do echo "%%a\%%b\%%c\%%d\%%e\%%f\*"
REM )
REM pause

REM @echo off
REM cd /d c:\windows\sytem32
REM for /d %%g in ("C:\VideoPlayer\*") do (
	REM for /d %%h in ("%%g\*") do (
		REM for /d %%i in ("%%h\*") do echo %%i
	REM )
REM )
REM pause

REM @echo off
REM set /a _count=0
REM set /a _level=5
REM (echo C:\VideoPlayer\*)>temp.1
REM :loop
REM if %_count% equ %_level% goto :loop_out

REM for /f "delims=" %%g in (temp.1) do (
	REM echo %%g
	REM for /d %%h in ("%%g") do (echo %%~h\*) >>temp.2
REM )
REM del temp.1 & ren temp.2 temp.1

REM set /a _count+=1
REM goto :loop

REM :loop_out
REM pause




REM robocopy c:\SynergyII c:\temp123 *.* /s /LEV:6

REM for /r "c:\VideoPlayer" %%g in (*.*) do (
	REM echo %%g
	REM for /f "tokens=1-5 delims=\" %%a in ("%%g") do echo "%%a\%%b\%%c\%%d\%%e\%%f"
REM )

REM pause