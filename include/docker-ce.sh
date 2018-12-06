sudo apt-get install -y apt-transport-https ca-certificates curl gnupg2 software-properties-common
curl -fsSL https://download.docker.com/linux/debian/gpg | sudo apt-key add -
sudo apt-key fingerprint 0EBFCD88
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/debian stretch stable"
sudo apt-get update
#sudo apt-get install -y docker-ce docker-compose
sudo apt-get install -y docker-ce
sudo wget https://github.com/docker/compose/releases/download/1.23.1/docker-compose-Linux-x86_64 -O /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
sudo gpasswd -a ${USER} docker

