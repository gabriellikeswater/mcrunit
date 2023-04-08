::FOR DEVS: COMMENTS HAVE A "::".
::COMMENTS TELL YOU WHAT YOU CAN CHANGE.

@echo off
title ARE YOU DREAMING?

:mainarea

cls

echo                    are you dreaming?
echo    ______     __  __     __   __        __     ______  
echo   /\  == \   /\ \/\ \   /\ "-.\ \      /\ \   /\__  _\ 
echo   \ \  __-   \ \ \_\ \  \ \ \-.  \     \ \ \  \/_/\ \/ 
echo    \ \_\ \_\  \ \_____\  \ \_\\"\_\     \ \_\    \ \_\ 
echo     \/_/ /_/   \/_____/   \/_/ \/_/      \/_/     \/_/ 
echo.                                                   
echo  - Type "runarea" to run this server.
echo  - Type "mainarea" to go back to this area.
echo  - While running, type "stop" to stop the server.
echo  - While running, type "help" for a list of all commands.
echo.
echo  -----------------------Notes(below)---------------------
echo.
echo  - After executing the "runall" command, two windows will
echo    show up. DON'T CLOSE THEM!
echo  - You can't close both windows with the "stop" command
echo    so you have to manually close them :D
echo  - Anything typed in that's not a command in the program
echo    will close the program.
echo  - Remember, all of this ONLY works for WINDOWS.
echo.

set /p option1=
if %option1% == runarea goto runarea
if %option1% == mainarea goto mainarea
if %option1% == runall goto runall
if %option1% == run goto run
if %option1% == runproxy goto runproxy ::OPTIONAL
if %option1% == runbot goto runbot ::OPTIONAL

goto

pause

:runarea
cls

echo.
echo  - To run all the stuff needed for the server, Type "runall"
echo  - To run only the local server, Type "run"
echo  - To run only the costum ip adress proxy, Type "runproxy" ::OPTIONAL
echo  - To run only the discord bot, Type "runbot" ::OPTIONAL
echo.

set /p option1=
if %option1% == runarea goto runarea
if %option1% == mainarea goto mainarea
if %option1% == runall goto runall
if %option1% == run goto run
if %option1% == runproxy goto runproxy ::OPTIONAL
if %option1% == runbot goto runbot ::OPTIONAL

goto

pause

:runall

cls

echo.
echo   Please be patient, this may take a bit!
echo.

start "..\Python\Python311\python.exe" "dbot.py" ::OPTIONAL

start playit.exe ::OPTIONAL

java -Xmx4G -Xms4G -jar example-api.jar nogui ::CHANGEABLE: -Xmx4G & example-api.jar
echo.

echo   TYPE "mainarea" TO GO BACK TO THE MAIN AREA.
echo   TYPE "runarea" TO GO TO THE RUN AREA.

set /p option1=
if %option1% == mainarea goto mainarea
if %option1% == runarea goto runarea
if %option1% == runall goto runall
if %option1% == run goto run
if %option1% == runproxy goto runproxy ::OPTIONAL
if %option1% == runbot goto runbot ::OPTIONAL

goto

pause

:run

cls

echo.
echo   Please be patient, this may take a bit!
echo.

java -Xmx4G -Xms4G -jar example-api.jar nogui ::CHANGEABLE: -Xmx4G & example-api.jar
echo.

echo   TYPE "mainarea" TO GO BACK TO THE MAIN AREA.
echo   TYPE "runarea" TO GO TO THE RUN AREA.

set /p option1=
if %option1% == mainarea goto mainarea
if %option1% == runarea goto runarea
if %option1% == runall goto runall
if %option1% == run goto run
if %option1% == runproxy goto runproxy ::OPTIONAL
if %option1% == runbot goto runbot ::OPTIONAL

goto

pause

:runproxy ::OPTIONAL

start playit.exe ::OPTIONAL

echo   TYPE "mainarea" TO GO BACK TO THE MAIN AREA. ::OPTIONAL
echo   TYPE "runarea" TO GO TO THE RUN AREA. ::OPTIONAL

set /p option1= ::OPTIONAL
if %option1% == mainarea goto mainarea ::OPTIONAL
if %option1% == runarea goto runarea ::OPTIONAL
if %option1% == runall goto runall ::OPTIONAL
if %option1% == run goto run ::OPTIONAL
if %option1% == runproxy goto runproxy ::OPTIONAL
if %option1% == runbot goto runbot ::OPTIONAL

goto ::OPTIONAL

pause ::OPTIONAL

:runbot ::OPTIONAL

echo. ::OPTIONAL

start "..\Python\Python311\python.exe" "dbot.py" ::OPTIONAL

echo   TYPE "mainarea" TO GO BACK TO THE MAIN AREA. ::OPTIONAL
echo   TYPE "runarea" TO GO TO THE RUN AREA. ::OPTIONAL

set /p option1= ::OPTIONAL
if %option1% == mainarea goto mainarea ::OPTIONAL
if %option1% == runarea goto runarea ::OPTIONAL
if %option1% == runall goto runall ::OPTIONAL
if %option1% == run goto run ::OPTIONAL
if %option1% == runproxy goto runproxy ::OPTIONAL
if %option1% == runbot goto runbot ::OPTIONAL

goto

pause