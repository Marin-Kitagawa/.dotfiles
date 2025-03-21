# Custom Functions
mcd() {
	if [[ ! -d $1 ]]; then
		md $1
	fi
	cd $1
}


# Go back `n` levels
back () {
    for i in `seq 1 $1`; do
        \cd ..
    done
}


# # ex = EXtractor for all kinds of archives
# # usage: ex <file>
ex ()
{
  if [ -f $1 ] ; then
    case $1 in
      *.tar.bz2)   tar xjf $1   ;;
      *.tar.gz)    tar xzf $1   ;;
      *.bz2)       bunzip2 $1   ;;
      *.rar)       unrar x $1   ;;
      *.gz)        gunzip $1    ;;
      *.tar)       tar xf $1    ;;
      *.tbz2)      tar xjf $1   ;;
      *.tgz)       tar xzf $1   ;;
      *.zip)       unzip $1     ;;
      *.Z)         uncompress $1;;
      *.7z)        7z x $1      ;;
      *.deb)       ar x $1      ;;
      *.tar.xz)    tar xf $1    ;;
      *.tar.zst)   tar xf $1    ;;
      *)           echo "'$1' cannot be extracted via ex()" ;;
    esac
  else
    echo "'$1' is not a valid file"
  fi
}

function gcl {
    gum spin --spinner dot --title "Cloning $1..." -- git clone "https://github.com/$1"
}

ghcuc () {
    git clone https://gihub.com/$(xclip -o)
}
function rmrf () {
  gum confirm && rm -rf $1 || echo "File not removed";
}

# Docker functions

function radi {
  for i in $(docker images -q)
  do
    docker rmi $i --force
  done
}

function radc {
  for i in $(docker ps -q)
  do
    docker rm $i --force
  done
}
