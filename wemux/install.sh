#!/bin/sh

set -eu

this_script=$(readlink -f $0);
this_dir=$(dirname $this_script);
sudo cp $this_script /usr/local/bin/wemux
sudo cp $this_dir/wemux.conf /usr/local/etc/wemux.conf
