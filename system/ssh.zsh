# TODO: how do I really know when to execute this? This "if" should be
# improved.
if [ -x /usr/bin/gnome-keyring-daemon ]; then
    eval `gnome-keyring-daemon --start`
fi
