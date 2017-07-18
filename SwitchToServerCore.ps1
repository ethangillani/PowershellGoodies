#This script switches a server from Full Gui to Server Core
Import-Module ServerManager
Uninstall-Windowsfeature Server-Gui-Mgmt-Infra, Server-Gui-Shell  -Restart

#If you want graphical management infrastructure and not full server core, then you run 
#Uninstall-WindowsFeature Server-Gui-Shell 
#and you leave the server-gui-mgmt-infra
#
#
#
#
#To switch back to full server you run 
# Import-Module ServerManager
# Install-WindowsFeature Server-Gui-Mgmt-Infra, Server-Gui-Shell -Restart
#