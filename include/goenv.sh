anyenv install goenv

echo 'export GOPATH=$HOME/go' >> ~/.bash_profile
echo 'export PATH="$PATH:$GOPATH/bin"' >> ~/.bash_profile
export GOPATH=$HOME/go
export PATH="$PATH:$GOPATH/bin"


TASK="${TASK}[goenv]\n"
TASK="${TASK}exec -l $SHELL\n"
TASK="${TASK}goenv global 1.xx.x\n"
TASK="${TASK}go get -u github.com/golang/dep/cmd/dep\n"
TASK="${TASK}\n"

