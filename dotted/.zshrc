ZSH_DISABLE_COMPFIX="true"
# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="lukerandall"


# Uncomment one of the following lines to change the auto-update behavior
# Also 'reminder' option is available  
zstyle ':omz:update' mode auto
zstyle ':omz:update' frequency 7 

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
HIST_STAMPS="dd.mm.yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Standard plugins can be found in $ZSH/plugins/
plugins=(git 
zsh-autosuggestions 
zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh

#-----------------------------------------------------------------------------------------------------------------------
# User configuration

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# For a full list of active aliases, run `alias`.
alias cat="bat"
alias ls="lsd -hA --group-dirs first"
alias vim="nvim"
alias zshconfig="nvim ~/.zshrc" 

eval "$(starship init zsh)" 

# PATH="$HOME/arcadia:$PATH"

