sudo mkdir -p /usr/local/src/jmeter/
sudo wget "http://ftp.riken.jp/net/apache/jmeter/binaries/apache-jmeter-5.1.tgz" -O /usr/local/src/jmeter/apache-jmeter-5.1.tgz
sudo tar zxvf /usr/local/src/jmeter/apache-jmeter-5.1.tgz -C /usr/local/lib/
sudo chown -R vagrant. /usr/local/lib/apache-jmeter-5.1/
echo 'PATH="$PATH":/usr/local/lib/apache-jmeter-5.1/bin/' >> ~/.bash_profile

