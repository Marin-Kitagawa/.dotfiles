if [ -d ~/github/enhancd/ ]; then 
  chmod +x ~/github/enhancd/init.sh
  source ~/github/enhancd/init.sh
else
  md ~/github
  git clone https://github.com/Marin-Kitagawa/enhancd ~/github/enhancd
  chmod +x ~/github/enhancd/init.sh
  source ~/github/enhancd/init.sh
fi



if ! command -v shopt &>/dev/null
then
  md ~/github
  git clone https://github.com/larz258/Zshopt ~/github/Zshopt
  sudo mv ~/github/Zshopt/shopt /usr/bin/
fi

clear
