# TODO: how do I really know when to execute this? This "if" should be
# improved.
if [[ -x /usr/bin/gnome-keyring-daemon && -n "$DESKTOP_SESSION" ]]; then
    eval `gnome-keyring-daemon --start`
    export SSH_AUTH_SOCK
fi
