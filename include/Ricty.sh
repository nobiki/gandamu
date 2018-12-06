mkdir -p ~/.fonts/
sudo wget "https://github.com/mzyy94/RictyDiminished-for-Powerline/raw/master/vim-powerline-fontpatched/RictyDiminished-Regular-Powerline.ttf" -O /usr/local/share/fonts/RictyDiminished-Regular-Powerline.ttf
sudo wget "https://github.com/mzyy94/RictyDiminished-for-Powerline/raw/master/vim-powerline-fontpatched/RictyDiminished-Bold-Powerline.ttf" -O /usr/local/share/fonts/RictyDiminished-Bold-Powerline.ttf
sudo wget "https://github.com/mzyy94/RictyDiminished-for-Powerline/raw/master/vim-powerline-fontpatched/RictyDiminished-Oblique-Powerline.ttf" -O /usr/local/share/fonts/RictyDiminished-Oblique-Powerline.ttf
sudo fc-cache -fv
