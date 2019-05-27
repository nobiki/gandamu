sudo apt install -y graphviz
sudo mkdir -p /usr/local/lib/tbls
sudo wget "https://github.com/k1LoW/tbls/releases/download/v1.15.1/tbls_v1.15.1_linux_amd64.tar.gz" -O /usr/local/lib/tbls/tbls.tar.gz
cd /usr/local/lib/tbls && sudo tar zxvf tbls.tar.gz && sudo rm tbls.tar.gz
sudo mv /usr/local/lib/tbls/tbls /usr/local/bin/tbls
