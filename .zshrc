# oh-my-zsh
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="robbyrussell"
source $ZSH/oh-my-zsh.sh

# Homebrew
eval "$(/opt/homebrew/bin/brew shellenv)"

# Vim alias
alias vim='nvim'

# Golang Setup
export GOPATH=$HOME/go
export GOBIN=$GOPATH/bin
export PATH="$GOBIN:/usr/local/go/bin:$PATH"

# Node Version Manager (NVM) setup
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"

# Ensure the NVM-managed Node.js path is at the start of PATH and avoid duplicate entries
if [ -d "$NVM_DIR/versions/node/$(nvm version)/bin" ]; then
  export PATH="$NVM_DIR/versions/node/$(nvm version)/bin:$PATH"
fi

# Clean up duplicate paths in $PATH
export PATH=$(echo $PATH | tr ':' '\n' | awk '!x[$0]++' | tr '\n' ':')

# Hugo
export PATH="/path/to/hugo:$PATH"
