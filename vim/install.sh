#!/bin/sh

curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
        https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

vim --not-a-term -c "PlugInstall" -c "quitall" >/dev/null
