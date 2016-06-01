if [ -x $HOME/.rakudobrew/bin/rakudobrew ]
then
    export PATH="$PATH:$HOME/.rakudobrew/bin"
    eval "$($HOME/.rakudobrew/bin/rakudobrew init -)"
fi
