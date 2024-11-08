LOCALBIN="$HOME/.local/bin"
echo $PATH | grep -q $LOCALBIN || export PATH="$PATH:$LOCALBIN"

BREWPATH="/home/linuxbrew/.linuxbrew"
echo $PATH | grep -q $BREWPATH || export PATH="$PATH:$BREWPATH"


if [ -d "$HOME/.bin" ] ; then 
  export PATH="$HOME/.bin:$PATH"
fi

if [ -d "$HOME/.local/bin" ] ; then 
  export PATH="$HOME/.local/bin:$PATH"
fi


export EDITOR=nvim


CARGOPATH="$HOME/.cargo/bin/"
echo $PATH | grep -q $CARGOPATH || export PATH="$PATH:$CARGOPATH"
