#!/bin/sh

this_dir=$(dirname $0)
mkdir -p ~/.plenv/plugins/
ln -sf $this_dir/plugin-perl-build ~/.plenv/plugins/perl-build
