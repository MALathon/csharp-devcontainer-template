# Enable Powerlevel10k instant prompt
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Path to your oh-my-zsh installation
export ZSH="$HOME/.oh-my-zsh"

# Set theme to Powerlevel10k
ZSH_THEME="powerlevel10k/powerlevel10k"

# Configure plugins
plugins=(
    git
    dotnet
    docker
    docker-compose
    zsh-autosuggestions
    zsh-syntax-highlighting
    fast-syntax-highlighting
    you-should-use
    colored-man-pages
    command-not-found
    autojump
    fzf
    history-substring-search
    web-search
    copypath
    copyfile
    dirhistory
    jsontools
)

# Load Oh My Zsh
source $ZSH/oh-my-zsh.sh

# Aliases
alias d="dotnet"
alias dt="dotnet test"
alias dr="dotnet run"
alias dw="dotnet watch"
alias dc="docker-compose"
alias g="git"
alias mk="mkdocs serve"
alias ll="ls -la"
alias ..="cd .."
alias ...="cd ../.."
alias grep="grep --color=auto"
alias h="history"
alias ports="netstat -tulanp"
alias mkdir="mkdir -pv"

# FZF Configuration
export FZF_DEFAULT_COMMAND='rg --files --hidden --follow --glob "!.git/*"'
export FZF_DEFAULT_OPTS='--height 40% --layout=reverse --border'

# Environment variables
export DOTNET_CLI_TELEMETRY_OPTOUT=1
export DOTNET_NOLOGO=1
export EDITOR='code --wait'

# Load Powerlevel10k config
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# Additional key bindings
bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down 