# Python aliases
  alias python="python3"
  alias pip="pip3"

# Add pyenv executable to PATH

export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"

# Load pyenv automatically

eval "$(pyenv init --path)"

# nvm
 export NVM_DIR="$HOME/.nvm"
  [ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh"  # This loads nvm
  [ -s "/usr/local/opt/nvm/etc/bash_completion.d/nvm" ] && . "/usr/local/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion

#ruby
export PATH="/usr/local/opt/ruby/bin:$PATH"

#java
export JAVA_8_HOME=$(/usr/libexec/java_home -v1.8)
export JAVA_11_HOME=$(/usr/libexec/java_home)

alias java8='export JAVA_HOME=$JAVA_8_HOME'
alias java11='export JAVA_HOME=$JAVA_11_HOME'

# default to Java 11
java11
export PATH="/usr/local/opt/php@7.1/bin:$PATH"

#go
export GOPATH=$HOME/go
export GOROOT=$(brew --prefix)/Cellar/go@1.16/1.16.15/libexec
export PATH=$PATH:$GOROOT/bin:$GOPATH/bin