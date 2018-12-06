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

anyenv install phpenv

TASK="${TASK}[phpenv]\n"
TASK="${TASK}exec -l $SHELL\n"
TASK="${TASK}\n"
