@echo off
title ARE YOU DREAMING? [v2.0]

set "filename=%~f0"

:mainarea

cls

echo                 __    __     ______    
echo                /\ "-./  \   /\  ___\   
echo                \ \ \-./\ \  \ \ \____  
echo                 \ \_\ \ \_\  \ \_____\ 
echo                  \/_/  \/_/   \/_____/ 
echo    ______     __  __     __   __        __     ______  
echo   /\  == \   /\ \/\ \   /\ "-.\ \      /\ \   /\__  _\ 
echo   \ \  __-   \ \ \_\ \  \ \ \-.  \     \ \ \  \/_/\ \/ 
echo    \ \_\ \_\  \ \_____\  \ \_\\"\_\     \ \_\    \ \_\ 
echo     \/_/ /_/   \/_____/   \/_/ \/_/      \/_/     \/_/ 
echo.
echo  - Type "configarea" to configure the server to your liking.
echo  - Type "runarea" to run this server.
echo.
echo  -----------------------Notes(below)---------------------
echo.
echo  - While running, type "help" for a list of all commands.
echo  - While running, type "exit" to save and stop the server.
echo  - You can't close all the windows with the "stop"
echo    command so you have to manually close them :P
echo  - Anything typed in that's not a command in the program
echo    might close the program.
echo.

set /p option1= [%username%]~ 
if %option1% == configarea goto configarea
if %option1% == runarea goto runarea
if %option1% == mainarea goto mainarea
if %option1% == info goto info
if %option1% == runall goto runall
if %option1% == run goto run
if %option1% == runproxy goto runproxy
if %option1% == runbot goto runbot
if %option1% == changeram goto changeram
if %option1% == changeapi goto changeapi

goto mainarea
pause

:configarea
cls

echo.
echo      TYPE "mainarea" TO GO BACK TO THE MAIN AREA.
echo.
echo  - Type "changeram" to change the ammount of ram you
echo    want to allocate to your server
echo  - Type "changeapi" to change the server api to run,
echo    for example, paper.jar
echo.

set /p option1= [%username%]~ 
if %option1% == configarea goto configarea
if %option1% == runarea goto runarea
if %option1% == mainarea goto mainarea
if %option1% == info goto info
if %option1% == runall goto runall
if %option1% == run goto run
if %option1% == runproxy goto runproxy
if %option1% == runbot goto runbot
if %option1% == changeram goto changeram
if %option1% == changeapi goto changeapi

goto mainarea
pause

:changeram

echo.

set /p input=Type "Xms1G"(Min Ram usable):
set /p replacement=Type it again but with your number of RAM:

powershell -Command "(Get-Content '%filename%') | Foreach-Object {$_ -replace '%input%', '%replacement%'} | Set-Content '%filename%'"

set /p input2=Type "Xmx1G"(Max Ram usable):
set /p replacement2=Type it again but with your number of RAM:

powershell -Command "(Get-Content '%filename%') | Foreach-Object {$_ -replace '%input2%', '%replacement2%'} | Set-Content '%filename%'"
echo.
echo Done, reloading...
echo.
timeout /t 2 /nobreak >nul
start /B /c "%~f0" & goto configarea

pause

:changeapi

echo.

set /p input3=Type "example-api.jar":
set /p replacement3=Now, type your api(with .jar):

powershell -Command "(Get-Content '%filename%') | Foreach-Object {$_ -replace '%input3%', '%replacement3%'} | Set-Content '%filename%'"
echo.
echo Done, reloading...
echo.
timeout /t 2 /nobreak >nul
start /B /c "%~f0" & goto configarea


set /p option1= [%username%]~ 
if %option1% == configarea goto configarea
if %option1% == runarea goto runarea
if %option1% == mainarea goto mainarea
if %option1% == info goto info
if %option1% == runall goto runall
if %option1% == run goto run
if %option1% == runproxy goto runproxy
if %option1% == runbot goto runbot
if %option1% == changeram goto changeram
if %option1% == changeapi goto changeapi

pause

:runarea
cls

echo.
echo      TYPE "mainarea" TO GO BACK TO THE MAIN AREA.
echo.
echo  - To run all the stuff needed for the server, Type "runall"
echo    (If you don't have a discord bot or playit proxy
echo    you might get errors, it's OK. The server will
echo    still work :D )
echo  - To run only the local server, Type "run"
echo  - To run only the playit proxy, Type "runproxy"
echo  - To run only the discord bot, Type "runbot"
echo.

set /p option1= [%username%]~ 
if %option1% == configarea goto configarea
if %option1% == runarea goto runarea
if %option1% == mainarea goto mainarea
if %option1% == info goto info
if %option1% == runall goto runall
if %option1% == run goto run
if %option1% == runproxy goto runproxy
if %option1% == runbot goto runbot
if %option1% == changeram goto changeram
if %option1% == changeapi goto changeapi

goto mainarea
pause

:info
cls

echo    TYPE "mainarea" TO GO BACK TO THE MAIN AREA.
echo.
echo.
echo  - https://github.com/gabriellikeswater/mcrunit
echo.
echo.

set /p option1= [%username%]~ 
if %option1% == configarea goto configarea
if %option1% == runarea goto runarea
if %option1% == mainarea goto mainarea
if %option1% == info goto info
if %option1% == runall goto runall
if %option1% == run goto run
if %option1% == runproxy goto runproxy
if %option1% == runbot goto runbot
if %option1% == changeram goto changeram
if %option1% == changeapi goto changeapi

goto mainarea
pause

:runall

cls

echo.
echo   Please be patient, this may take a bit!
echo.

start "..\Python\Python311\python.exe" "dbot.py"

start playit.exe

java -Xmx1G -Xms1G -jar example-api.jar nogui
echo.

echo   TYPE "mainarea" TO GO BACK TO THE MAIN AREA.
echo.

set /p option1= [%username%]~ 
if %option1% == configarea goto configarea
if %option1% == runarea goto runarea
if %option1% == mainarea goto mainarea
if %option1% == info goto info
if %option1% == runall goto runall
if %option1% == run goto run
if %option1% == runproxy goto runproxy
if %option1% == runbot goto runbot
if %option1% == changeram goto changeram
if %option1% == changeapi goto changeapi

goto mainarea
pause

:run

cls

echo.
echo   Please be patient, this may take a bit!
echo.

java -Xmx1G -Xms1G -jar example-api.jar nogui 
echo.

echo   TYPE "mainarea" TO GO BACK TO THE MAIN AREA.
echo.

set /p option1= [%username%]~ 
if %option1% == configarea goto configarea
if %option1% == runarea goto runarea
if %option1% == mainarea goto mainarea
if %option1% == info goto info
if %option1% == runall goto runall
if %option1% == run goto run
if %option1% == runproxy goto runproxy
if %option1% == runbot goto runbot
if %option1% == changeram goto changeram
if %option1% == changeapi goto changeapi

goto mainarea
pause

:runproxy

start playit.exe

echo   TYPE "mainarea" TO GO BACK TO THE MAIN AREA.
echo.

set /p option1= [%username%]~ 
if %option1% == configarea goto configarea
if %option1% == runarea goto runarea
if %option1% == mainarea goto mainarea
if %option1% == info goto info
if %option1% == runall goto runall
if %option1% == run goto run
if %option1% == runproxy goto runproxy
if %option1% == runbot goto runbot
if %option1% == changeram goto changeram
if %option1% == changeapi goto changeapi

goto mainarea
pause

:runbot

echo.

start "..\Python\Python311\python.exe" "dbot.py"

echo   TYPE "mainarea" TO GO BACK TO THE MAIN AREA.
echo.

set /p option1= [%username%]~ 
if %option1% == configarea goto configarea
if %option1% == runarea goto runarea
if %option1% == mainarea goto mainarea
if %option1% == info goto info
if %option1% == runall goto runall
if %option1% == run goto run
if %option1% == runproxy goto runproxy
if %option1% == runbot goto runbot
if %option1% == changeram goto changeram
if %option1% == changeapi goto changeapi

goto mainarea
pause
