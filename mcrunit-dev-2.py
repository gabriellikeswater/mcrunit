#https://github.com/gabriellikeswater/mcrunit
import sys
import os
from pystyle import *

os.system("cls")

os.system(f'title ARE YOU DREAMING?')

banner = '''
                 __    __     ______    
                /\ "-./  \   /\  ___\   
                \ \ \-./\ \  \ \ \____  
                 \ \_\ \ \_\  \ \_____\ 
                  \/_/  \/_/   \/_____/ 
    ______     __  __     __   __        __     ______  
   /\  == \   /\ \/\ \   /\ "-.\ \      /\ \   /\__  _\ 
   \ \  __-   \ \ \_\ \  \ \ \-.  \     \ \ \  \/_/\ \/ 
    \ \_\ \_\  \ \_____\  \ \_\ "\_\     \ \_\    \ \_\ 
     \/_/ /_/   \/_____/   \/_/ \/_/      \/_/     \/_/ 
'''

print(Colorate.Horizontal(Colors.blue_to_purple, (banner)))

print()
print()
Write.Print("WELCOME!", Colors.blue_to_purple)
print()



os.system(":mainarea")

os.system("echo  - Type ''configarea'' to configure the server to your liking.")                              
os.system("echo  - Type ''runarea'' to run this server.")
os.system("echo  - Type ''mainarea'' to go back to this area.")
os.system("echo  - While running, type ''stop'' to stop the server.")
os.system("echo  - While running, type ''help'' for a list of all commands.")
os.system("echo  - Type ''info'' for some pretty cool info.")
os.system("echo.")
os.system("echo  -----------------------Notes(below)---------------------")
os.system("echo.")
os.system("echo  - After executing the ''runall'' command, a few windows")
os.system("echo    will show up. DON'T CLOSE THEM!")
os.system("echo  - You can't close all the windows with the ''stop''")
os.system("echo    command so you have to manually close them :P")
os.system("echo  - Anything typed in that's not a command in the program")
os.system("echo    will close the program.")
os.system("echo  - Remember, all of this ONLY works for WINDOWS.")
os.system("echo.")


os.system("set /p option1= [%username%@runit]~ ")
os.system("if %option1% == configarea goto configarea")
os.system("if %option1% == runarea goto runarea")
os.system("if %option1% == mainarea goto mainarea")
os.system("if %option1% == info goto info")
os.system("if %option1% == runall goto runall")
os.system("if %option1% == run goto run")
os.system("if %option1% == runproxy goto runproxy")
os.system("if %option1% == runbot goto runbot")

#Original code, by Gabriel (gabriellikeswater on Github)