sudo mkdir -p /usr/local/src/vegeta/
sudo wget "https://github.com/tsenart/vegeta/releases/download/cli%2Fv12.2.1/vegeta-12.2.1-linux-amd64.tar.gz" -O /usr/local/src/vegeta/vegeta-12.2.1-linux-amd64.tar.gz
sudo tar zxvf /usr/local/src/vegeta/vegeta-12.2.1-linux-amd64.tar.gz -C /usr/local/src/vegeta/
sudo cp /usr/local/src/vegeta/vegeta /usr/local/bin/vegeta
sudo chmod +x /usr/local/bin/vegeta
