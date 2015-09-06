# TODO: how do I really know when to execute this? This "if" should be
# improved.
if [[ -x /usr/bin/gnome-keyring-daemon && "$DESKTOP_SESSION" == "gnome" ]]; then
    eval `gnome-keyring-daemon --start`
    export SSH_AUTH_SOCK
else
    eval `keychain --eval --quick --quiet --agents ssh id_rsa github_rsa`
fi
