git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install
cp /usr/local/lib/dotfiles/.fzf.bash ~/.fzf.bash
echo '[ -f ~/.fzf.bash ] && source ~/.fzf.bash' >> ~/.bash_profile
