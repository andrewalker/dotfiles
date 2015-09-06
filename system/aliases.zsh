# Old servers don't know anything about screen-256color
alias ssh="TERM=xterm ssh"

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
