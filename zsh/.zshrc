# CodeWhisperer pre block. Keep at the top of this file.
[[ -f "${HOME}/Library/Application Support/codewhisperer/shell/zshrc.pre.zsh" ]] && builtin source "${HOME}/Library/Application Support/codewhisperer/shell/zshrc.pre.zsh"

export ZSH=$HOME/.oh-my-zsh

ZSH_THEME="robbyrussell"

# disable automatic updates
zstyle ':omz:update' mode disabled

plugins=(
    aws
    colored-man-pages
    colorize
    copybuffer
    copyfile
    copypath
    dirhistory
    git
    history
    sudo
    zsh-autosuggestions
    history-substring-search
    zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# set colors to match terminal theme
HISTORY_SUBSTRING_SEARCH_HIGHLIGHT_FOUND="bg=94"
ZSH_COLORIZE_STYLE="github-dark"

# use zsh_autosuggestions only for history
ZSH_AUTOSUGGEST_STRATEGY=(history)

# aliases
alias fd="find . -type d -name"
alias ff="find . -type f -name"

alias cp="cp -i"
alias rm="rm -i"
alias mv="mv -i"

alias psf="ps -f"

alias rsync="rsync -vP"

alias igrep="grep -i"

# eza
if (( $+commands[eza] )); then
    alias ls="eza --group-directories-first --icons"
    alias la="ls -a"
    alias lt="ls --tree --level=2"
    alias lla="l -a"
    alias llg="l --git"
    alias llt="l --tree --level=2"
fi

# VS code shell integration
[[ "$TERM_PROGRAM" == "vscode" ]] && . "$(code --locate-shell-integration-path zsh)"

# CodeWhisperer post block. Keep at the bottom of this file.
[[ -f "${HOME}/Library/Application Support/codewhisperer/shell/zshrc.post.zsh" ]] && builtin source "${HOME}/Library/Application Support/codewhisperer/shell/zshrc.post.zsh"
