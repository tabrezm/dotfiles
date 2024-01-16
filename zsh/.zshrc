# CodeWhisperer pre block. Keep at the top of this file.
[[ -f "${HOME}/Library/Application Support/codewhisperer/shell/zshrc.pre.zsh" ]] && builtin source "${HOME}/Library/Application Support/codewhisperer/shell/zshrc.pre.zsh"

export ZSH=$HOME/.oh-my-zsh

ZSH_THEME="robbyrussell"

zstyle ':omz:update' mode disabled  # disable automatic updates

plugins=(
    git
    zsh-autosuggestions
    zsh-syntax-highlighting
    history-substring-search
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

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Fix for https://github.com/zsh-users/zsh-syntax-highlighting/issues/295
zstyle ':bracketed-paste-magic' active-widgets '.self-*'

# set colors for history-substring-search
HISTORY_SUBSTRING_SEARCH_HIGHLIGHT_FOUND='bg=94'

# aliases
alias fd="find . -type d -name"
alias ff="find . -type f -name"

alias cp="cp -i"
alias rm="rm -i"
alias mv="mv -i"

alias psf="ps -f"

alias h="history"
alias t="tail -f"

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

# python
export PATH="/opt/homebrew/opt/python@3.11/libexec/bin:$PATH"

# CodeWhisperer post block. Keep at the bottom of this file.
[[ -f "${HOME}/Library/Application Support/codewhisperer/shell/zshrc.post.zsh" ]] && builtin source "${HOME}/Library/Application Support/codewhisperer/shell/zshrc.post.zsh"
