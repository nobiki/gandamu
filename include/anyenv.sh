git clone "https://github.com/riywo/anyenv" ~/.anyenv
echo 'export PATH="$HOME/.anyenv/bin:$PATH"' >> ~/.bash_profile
echo 'eval "$(anyenv init -)"' >> ~/.bash_profile

# phpenv library
sudo apt install -y libxml2 libxml2-dev \
  libssl-dev pkg-config \
  zlib1g-dev \
  libbz2-dev \
  libjpeg-dev \
  libpng-dev \
  libreadline-dev \
  libtidy-dev \
  libcurl4-openssl-dev \
  libxslt1.1 libxslt-dev

TASK="${TASK}[anyenv]\n"
TASK="${TASK}exec -l $SHELL\n"
TASK="${TASK}\n"
