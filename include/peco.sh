sudo wget "https://github.com/peco/peco/releases/download/v0.5.3/peco_linux_amd64.tar.gz" -O /usr/local/lib/peco_linux_amd64.tar.gz
sudo tar zxvf /usr/local/lib/peco_linux_amd64.tar.gz -C /usr/local/bin/ && sudo chmod +x /usr/local/bin/peco_linux_amd64/peco && sudo rm -f /usr/local/lib/peco_linux_amd64.tar.gz
sudo ln -s /usr/local/bin/peco_linux_amd64/peco /usr/local/bin/peco
