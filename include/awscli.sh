sudo mkdir -p /usr/local/src/

cd /usr/local/src/

sudo curl "https://s3.amazonaws.com/aws-cli/awscli-bundle.zip" -o "/usr/local/src/awscli-bundle.zip"
sudo unzip awscli-bundle.zip
sudo ./awscli-bundle/install -i /usr/local/aws -b /usr/local/bin/aws
