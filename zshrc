# Load Antigen
source ~/.antigen/antigen.zsh

# Load various lib files
antigen bundle robbyrussell/oh-my-zsh lib/

# Load various themes
antigen bundle robbyrussell/oh-my-zsh themes/
antigen theme robbyrussell
#
# Antigen Bundles
#
antigen bundle git
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle zsh-users/zsh-autosuggestions

antigen apply

source "$HOME/tools/init.zsh"


# Alias
alias v='vim'
alias dcc='docker-compose'
alias dcu='docker-compose up -d'
alias dcl='docker-compose logs'
alias octave='octave --no-gui'

function f(){
	 firefox $1 &
 }


# Options
setopt HIST_IGNORE_ALL_DUPS

# Global gitignore
git config --global core.excludesfile '~/.gitignore'

export UNICORN_TIMEOUT=30000

# Go
export GOPATH=$HOME/dev/go
export PATH=$PATH:$GOROOT/bin:$GOPATH/bin

export PATH=$PATH:$HOME/bin
