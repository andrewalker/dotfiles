#!/bin/sh

mkdir -p ~/.vim/autoload && \
    curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
mkdir -p ~/.vim/swap
