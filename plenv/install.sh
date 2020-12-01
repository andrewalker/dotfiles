#!/bin/sh

set -eu

this_script=$(readlink -f $0);
this_dir=$(dirname $this_script);
mkdir -p ~/.plenv/plugins/
ln -sf -T $this_dir/plugin-perl-build ~/.plenv/plugins/perl-build
