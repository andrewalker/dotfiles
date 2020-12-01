#!/bin/sh

set -eu

this_script=$(readlink -f $0);
this_dir=$(dirname $this_script);
mkdir -p ~/.tmux/plugins
ln -sf -T $this_dir/plugin-tpm ~/.tmux/plugins/tpm
~/.tmux/plugins/tpm/bin/install_plugins
