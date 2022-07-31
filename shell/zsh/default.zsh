# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

#Homebrew
export PATH="/opt/homebrew/sbin:$PATH"
#Homebrew END

# JetBrains alias
  alias phpstorm="open -na "PhpStorm.app" --args"
  alias pycharm="open -na "PyCharm.app" --args '$@'"


#uuidv4
alias  uuidv4='node /Users/davidmaringomez/Documents/Projects/scripts/uuidv4.js'

#onepassword app
eval "$(op completion zsh)"; compdef _op op

#kubectl alias + autocomplete
source <(kubectl completion zsh)
alias k=kubectl
compdef __start_kubectl k