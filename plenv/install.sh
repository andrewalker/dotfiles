#!/bin/sh

if [ ! -d $HOME/.plenv ]; then
    git clone git://github.com/tokuhirom/plenv.git ~/.plenv
else
    cd $HOME/.plenv
    git pull
    cd -
fi

if [ ! -d $HOME/.plenv/plugins/perl-build/ ]; then
    git clone git://github.com/tokuhirom/Perl-Build.git ~/.plenv/plugins/perl-build/
else
    cd $HOME/.plenv/plugins/perl-build
    git pull
    cd -
fi
