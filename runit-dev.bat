@echo off
title ARE YOU DREAMING?

set "filename=%~f0"

:mainarea

cls

echo                    are you dreaming?
echo    ______     __  __     __   __        __     ______  
echo   /\  == \   /\ \/\ \   /\ "-.\ \      /\ \   /\__  _\ 
echo   \ \  __-   \ \ \_\ \  \ \ \-.  \     \ \ \  \/_/\ \/ 
echo    \ \_\ \_\  \ \_____\  \ \_\\"\_\     \ \_\    \ \_\ 
echo     \/_/ /_/   \/_____/   \/_/ \/_/      \/_/     \/_/ 
echo.
echo  - Type "configarea" to configure the server to your liking.                                                   
echo  - Type "runarea" to run this server.
echo  - Type "mainarea" to go back to this area.
echo  - While running, type "stop" to stop the server.
echo  - While running, type "help" for a list of all commands.
echo  - Type "info" for some pretty cool info.
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

set /p option1= [%username%@runit]~ 
if %option1% == configarea goto configarea
if %option1% == runarea goto runarea
if %option1% == mainarea goto mainarea
if %option1% == info goto info
if %option1% == runall goto runall
if %option1% == run goto run
if %option1% == runproxy goto runproxy
if %option1% == runbot goto runbot

goto

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

set /p option1= [%username%@runit]~ 
if %option1% == changeram goto changeram
if %option1% == changeapi goto changeapi
if %option1% == configarea goto configarea
if %option1% == mainarea goto mainarea
if %option1% == runarea goto runarea
if %option1% == info goto info
if %option1% == runall goto runall
if %option1% == run goto run
if %option1% == runproxy goto runproxy
if %option1% == runbot goto runbot

goto

pause

:changeram

echo.

set /p input=Type "Xms1G"(Min Ram usable):
set /p replacement=Type it again but with your number of RAM:

powershell -Command "(Get-Content '%filename%') | Foreach-Object {$_ -replace '%input%', '%replacement%'} | Set-Content '%filename%'

set /p input2=Type "Xmx1G"(Max Ram usable):
set /p replacement2=Type it again but with your number of RAM:

powershell -Command "(Get-Content '%filename%') | Foreach-Object {$_ -replace '%input2%', '%replacement2%'} | Set-Content '%filename%'
echo Done.
echo.

set /p option1= [%username%@runit]~ 
if %option1% == changeram goto changeram
if %option1% == changeapi goto changeapi
if %option1% == configarea goto configarea
if %option1% == mainarea goto mainarea
if %option1% == info goto info
if %option1% == runarea goto runarea
if %option1% == runall goto runall
if %option1% == run goto run
if %option1% == runproxy goto runproxy
if %option1% == runbot goto runbot

goto

pause

:changeapi

echo.

set /p input3=Type "example-api":
set /p replacement3=Now, type your api:

powershell -Command "(Get-Content '%filename%') | Foreach-Object {$_ -replace '%input3%', '%replacement3%'} | Set-Content '%filename%'
echo Done.
echo.

set /p option1= [%username%@runit]~ 
if %option1% == changeram goto changeram
if %option1% == changeapi goto changeapi
if %option1% == configarea goto configarea
if %option1% == mainarea goto mainarea
if %option1% == info goto info
if %option1% == runarea goto runarea
if %option1% == runall goto runall
if %option1% == run goto run
if %option1% == runproxy goto runproxy
if %option1% == runbot goto runbot

goto

pause

:runarea
cls

echo.
echo      TYPE "mainarea" TO GO BACK TO THE MAIN AREA.
echo.
echo  - To run all the stuff needed for the server, Type "runall"
echo    (If you don't have a discord bot or playit proxy
echo    you might get an error, it's OK. The server will
echo    still work :D )
echo  - To run only the local server, Type "run"
echo  - To run only the playit proxy, Type "runproxy"
echo  - To run only the discord bot, Type "runbot"
echo.

set /p option1= [%username%@runit]~ 
if %option1% == configarea goto configarea
if %option1% == runarea goto runarea
if %option1% == mainarea goto mainarea
if %option1% == info goto info
if %option1% == runall goto runall
if %option1% == run goto run
if %option1% == runproxy goto runproxy
if %option1% == runbot goto runbot

goto

pause

:info
cls

echo    TYPE "mainarea" TO GO BACK TO THE MAIN AREA.
echo.
echo.
echo  - https://github.com/gabriellikeswater/runit
echo.
echo.

set /p option1= [%username%@runit]~ 
if %option1% == configarea goto configarea
if %option1% == runarea goto runarea
if %option1% == mainarea goto mainarea
if %option1% == info goto info
if %option1% == runall goto runall
if %option1% == run goto run
if %option1% == runproxy goto runproxy
if %option1% == runbot goto runbot

goto

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

set /p option1= [%username%@runit]~ 
if %option1% == configarea goto configarea
if %option1% == mainarea goto mainarea
if %option1% == runarea goto runarea
if %option1% == info goto info
if %option1% == runall goto runall
if %option1% == run goto run
if %option1% == runproxy goto runproxy
if %option1% == runbot goto runbot

goto

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

set /p option1= [%username%@runit]~ 
if %option1% == configarea goto configarea
if %option1% == mainarea goto mainarea
if %option1% == runarea goto runarea
if %option1% == info goto info
if %option1% == runall goto runall
if %option1% == run goto run
if %option1% == runproxy goto runproxy
if %option1% == runbot goto runbot

goto

pause

:runproxy

start playit.exe

echo   TYPE "mainarea" TO GO BACK TO THE MAIN AREA.
echo.

set /p option1= [%username%@runit]~ 
if %option1% == configarea goto configarea
if %option1% == mainarea goto mainarea
if %option1% == runarea goto runarea
if %option1% == info goto info
if %option1% == runall goto runall
if %option1% == run goto run
if %option1% == runproxy goto runproxy
if %option1% == runbot goto runbot

goto

pause

:runbot

echo.

start "..\Python\Python311\python.exe" "dbot.py"

echo   TYPE "mainarea" TO GO BACK TO THE MAIN AREA.
echo.

set /p option1= [%username%]~
if %option1% == configarea goto configarea
if %option1% == mainarea goto mainarea
if %option1% == runarea goto runarea
if %option1% == info goto info
if %option1% == runall goto runall
if %option1% == run goto run
if %option1% == runproxy goto runproxy
if %option1% == runbot goto runbot

goto

pause
