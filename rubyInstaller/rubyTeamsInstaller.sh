#!/bin/sh   
#Programmed By Omar Bitar
#To run this script, make sure that git bash is installed.
#Script will check if all the prerequisites for ruby on rails are installed
# and are the correct version if not, the script will install as necessary. 

echo ""
echo "Ruby Floor Coverage Team Installer"
echo ""


sqlDllUrl=https://www.sqlite.org/2019/sqlite-dll-win64-x64-3290000.zip
sqlToolsUrl=https://www.sqlite.org/2019/sqlite-tools-win32-x86-3290000.zip
destination=/C/

echo "downloading sqlite files ..."  
curl -o dllFiles.zip -LO  $sqlDllUrl  
curl -o toolsFiles.zip -LO  $sqlToolsUrl
echo "download complete!" 

echo "installing sqlite files ..." 
jar xf dllFiles.zip  
jar xf toolsFiles.zip 
rm dllFiles.zip
rm toolsFiles.zip 
#TODO: move sqli files to C:\Windows

echo "installationi complete!"

nodeVer=$(node     --version)
yarnVer=$(yarn     --version)
sqliVer=$(sqlite3  --version) #how to do that in git bash
rubyVer=$(ruby     --version)
railVer=$(rails    --version)

#TODO: if (wrong exists | !exists ) install correct one
#sudo npm install -g node@12.18.3
#sudo npm install --global yarn@1.22.5

echo "+installed Node    : $nodeVer"
echo "+installed Yarn    : $yarnVer"
echo "+installed Sqlite3 : $sqliVer"
echo "+installed ruby    : $rubyVer"
echo "+installed Rails   : $railVer"



# Exit from the script with success (0)
exit 0