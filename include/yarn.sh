# node
sudo apt install -y build-essential
wget -qO- https://deb.nodesource.com/setup_10.x | sudo -E bash -
sudo apt install -y nodejs

# yarn
sudo apt install -y gcc g++ make
curl -sL https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list
sudo apt update && sudo apt install -y yarn

echo 'PATH="$PATH":~/.yarn/bin/' >> ~/.bash_profile
