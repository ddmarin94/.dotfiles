# setup_brew() {
#   which -s brew
#   if [[ $? != 0 ]] ; then
#       # Install Homebrew
#       /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
#   else
#       brew update
#   fi
# }

# setup_brew

# brew bundle --verbose --file "$PWD/os/macos/brew/Brewfile"

brew install nvm
nvm install 16
nvm use 16

echo 'FINISH'