if [[ "$OSTYPE" == "linux-gnu"* ]]; then
        echo 'linux os detected'
elif [[ "$OSTYPE" == "darwin"* ]]; then
        echo 'macos os detected'
        
        zsh ./shell/install.sh
        zsh ./os/macos/brew/install.sh
else
        echo 'OS not supported 😢'
fi