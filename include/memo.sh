# sudo wget "https://github.com/mattn/memo/releases/download/v0.0.4/memo_linux_amd64.zip" -O /usr/local/bin/memo_linux_amd64.zip
# cd /usr/local/bin/ && sudo unzip memo_linux_amd64.zip
# sudo chmod +x /usr/local/bin/memo && sudo rm -f /usr/local/bin/memo_linux_amd64.zip

mkdir -p ~/bin/
echo "vim /var/workspace/memo/_posts/" > ~/bin/memo
chmod +x ~/bin/memo
