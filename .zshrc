export ZSH="/Users/sheey/.oh-my-zsh"

# powerlevel9k theme settings
POWERLEVEL9K_MODE='awesome-fontconfig'
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(os_icon user dir vcs)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status time)
POWERLEVEL9K_USER_DEFAULT_FOREGROUND="white"
POWERLEVEL9K_USER_DEFAULT_BACKGROUND="black"
# POWERLEVEL9K_DIR_BACKGROUND="green"
POWERLEVEL9K_OS_ICON_BACKGROUND="black"
POWERLEVEL9K_OS_ICON_FOREGROUND="white"
POWERLEVEL9K_CONTEXT_DEFAULT_FOREGROUND="white"

ZSH_THEME="powerlevel10k/powerlevel10k"

plugins=(git incr sudo)

source $ZSH/oh-my-zsh.sh

# ===================================== alias ==============================
alias please=sudo
alias plz=sudo
alias py3=python3
alias py=python
alias python3.7=/usr/bin/python3
alias g90="gcc -std=c90"
alias g++="g++ -std=c++11"
alias vim="mvim -v"
alias tldr -t base16

alias du1="sudo du -h -d1 | sort -hr"
alias dune="sudo du -h -d1 2>/dev/null | sort -hr"

alias d=docker
alias k=kubectl
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."

alias g=git
alias ga="git add"
alias gs="git status"
alias gc="git commit"
alias gcm="git commit -m"
alias gmt="go mod tidy"
alias gg="go get"
alias "?=tldr"
alias "?!=man"

if [[ "$(uname)" == 'Darwin' ]]; then
    alias ports="sudo lsof -i -P"
else
    alias ports="sudo netstat -nlp"
fi

# ============================= custom functions ============================
source /usr/local/bin/proxy-set-up

# =============================== env variables =============================
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

export GUILE_LOAD_PATH="/usr/local/share/guile/site/3.0"
export GUILE_LOAD_COMPILED_PATH="/usr/local/lib/guile/3.0/site-ccache"
export GUILE_SYSTEM_EXTENSIONS_PATH="/usr/local/lib/guile/3.0/extensions"
export HOMEBREW_BOTTLE_DOMAIN=https://mirrors.ustc.edu.cn/homebrew-bottles

# ================================== PATH ===================================
export PATH=$HOME/go/bin:$PATH
export PATH="/usr/local/sbin:$PATH"
export PATH=$HOME/.android/bin:$PATH
export PATH="/usr/local/opt/openjdk/bin:$PATH"

# ======================== iTerm2 Shell Integration =========================
source ~/.iterm2_shell_integration.zsh

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
export CPPFLAGS="-I/usr/local/opt/openjdk/include"

