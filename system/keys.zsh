# Pipe my public key to my clipboard.
alias pubkey="cat ~/.ssh/id_rsa.pub | xsel --input --buffer | echo '=> Public key copied to pasteboard.'"
