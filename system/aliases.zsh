# Old servers don't know anything about screen-256color
# alias ssh="TERM=xterm ssh"

if [ -f '/usr/local/bin/grm' ]
then
    alias rm='/usr/local/bin/grm -I'
fi
alias sshbk="ssh -o 'ProxyCommand ssh -qx -W %h:%p shell'"
alias cl="$HOME/bin/dehilight"
alias mailwork="mutt -F ~/.mutt/muttrc-work"
alias mailpersonal="mutt -F ~/.mutt/muttrc-personal"

function syncmail {
    minutes=$1
    while [ 1 ]
    do
        mbsync booking
        mbsync fastmail
        notmuch-poll-work
        echo "Sleeping $minutes minutes"
        sleep $( expr $minutes \* 60 )
    done
}

function open-eml {
    formail -b < $1 > out.mbox && mutt -f out.mbox && rm out.mbox
}

function mount-usb {
    device=$1
    target=$2

    if [ -z "$target" ]; then
        target='/mnt/usb'
    fi

    sudo mkdir -p $target && \
    sudo chmod 777 $target && \
    sudo mount -o rw,uid=`id -u` $device $target
}
