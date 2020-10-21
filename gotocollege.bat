@echo off
:ask

set module1=1. title
set module1link=https://learningplatformurl.ie/
set module2=2. title
set module2link=https://learningplatformurl.ie/
set module3=3. title
set module3link=https://learningplatformurl.ie/
set module4=4. title
set module4link=https://learningplatformurl.ie/
set module5=5. title
set module5link=https://learningplatformurl.ie/
set module6=6. title
set module6link=https://learningplatformurl.ie/
set module7=7. title
set module7link=https://learningplatformurl.ie/
set lectureProgram=programName
set lectureProgramPath=C:\Users\path\to\executable\file\programName.exe
set learningPlatform=name

@REM add/delete modules as needed
@REM setting variables so user can add their own modules, module links, lecture program, path to lecture program and learning platform

echo What module would you like to open?
echo ---------------------------------------------------------
echo %module1%
echo %module2%
echo %module3%
echo %module4%
echo %module5%
echo %module6%
echo %module7%
echo ---------------------------------------------------------

@REM add/delete modules as needed

set /P input=Enter number beside module you want to open: %=%
@rem taking user input to decide which module to open
@rem input goes where '=' is in the above

if /I "%input%"=="1" goto 1 echo %module1% selected
@rem if input is X go to 1 and echo MODULE selected
if /I "%input%"=="2" goto 2 echo %module2% selected
if /I "%input%"=="3" goto 3 echo %module3% selected
if /I "%input%"=="4" goto 4 echo %module4% selected
if /I "%input%"=="5" goto 5 echo %module5% selected
if /I "%input%"=="6" goto 6 echo %module6% selected
if /I "%input%"=="7" goto 7 echo %module7% selected
if /I "%input%"=="exit" goto commonExit
@REM add/delete modules as needed
@rem for cases where user opened script accidentally
if %input% gtr 7 goto ask
if %input% lss 1 goto ask
@rem if input is greater than 7 or less than 1 =, return to :ask

:1
@rem if input was 1, open URL of learning platform below, echo message and go to lecture program
start %module1link%
echo ---------------------------------------------------------
echo Opening %module1% %learningPlatform%...
goto lectureProgram

:2
start %module2link%
echo ---------------------------------------------------------
echo Opening %module2% %learningPlatform%...
goto lectureProgram

:3
start %module3link%
echo ---------------------------------------------------------
echo Opening %module3% %learningPlatform%...
goto lectureProgram

:4
start %module4link%
echo ---------------------------------------------------------
echo Opening %module4% %learningPlatform%...
goto lectureProgram

:5
start %module5link%
echo ---------------------------------------------------------
echo Opening %module5% %learningPlatform%...
goto lectureProgram

:6
start %module6link%
echo ---------------------------------------------------------
echo Opening %module6% %learningPlatform%...
goto lectureProgram

:7
start %module7link%
echo ---------------------------------------------------------
echo Opening %module7% %learningPlatform%...
goto lectureProgram

@REM add/delete modules as needed

:lectureProgram
@rem start learningPlatform.exe, echo message and go to commonExit
start %lectureProgramPath%
echo Opening %lectureProgram%...
echo ---------------------------------------------------------
goto commonExit

:commonExit
@rem exit terminal
exit /B 0
