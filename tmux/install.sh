#!/bin/sh

this_dir=$(dirname $0)
mkdir -p ~/.tmux/plugins
ln -sf $this_dir/plugin-tpm ~/.tmux/plugins
~/.tmux/plugins/tpm/bin/install_plugins
