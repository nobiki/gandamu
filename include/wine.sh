sudo dpkg --add-architecture i386 && sudo apt-get update && sudo apt-get install wine32
echo 'export WINEARCH=win32' >> ~/.bash_profile

sudo wget "https://raw.githubusercontent.com/Winetricks/winetricks/master/src/winetricks" -O /usr/local/bin/winetricks
sudo chmod +x /usr/local/bin/winetricks

winetricks -q mfc42
winetricks allfonts


