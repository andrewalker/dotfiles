#!/bin/sh

if test ! -f ~/.vim/autoload/plug.vim
then
    curl -sfLo ~/.vim/autoload/plug.vim --create-dirs \
            https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
fi

# best effort! if there's an error, I can retry to install plugins later
vim --not-a-term -c "PlugInstall" -c "quitall" >/dev/null 2>/dev/null
