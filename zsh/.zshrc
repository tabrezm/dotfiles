export ZSH=$HOME/.oh-my-zsh

if [[ $TERM_PROGRAM != "WarpTerminal" ]]; then
ZSH_THEME="spaceship"
fi

# disable automatic updates
zstyle ':omz:update' mode disabled

if [[ $TERM_PROGRAM == "WarpTerminal" ]]; then
plugins=(
    aws
    colored-man-pages
    docker
    forgit
    sudo
)
else
plugins=(
    aws
    colored-man-pages
    copybuffer
    docker
    forgit
    fzf
    sudo
    zsh-autosuggestions
    zsh-syntax-highlighting
)
fi

source $ZSH/oh-my-zsh.sh

# set colors to match terminal theme
ZSH_COLORIZE_STYLE="github-dark"

# use zsh_autosuggestions only for history
ZSH_AUTOSUGGEST_STRATEGY=(history)

# aliases
alias cp="cp -i"
alias mv="mv -i"
alias rm="rm -i"

alias curlo="curl -OJ"

alias rsync="rsync -avP"

alias igrep="grep -i"

alias clr="clear"

alias q!="~ && clr"

# eza
if (( $+commands[eza] )); then
    alias ls="eza --group-directories-first --icons"
    alias la="ls -a"
    alias lt="ls --tree --level=2"
    alias lla="l -a"
    alias llg="l --git"
    alias llt="l --tree --level=2"
fi

# fzf
export FZF_COMPLETION_TRIGGER='~~'
export FZF_DEFAULT_COMMAND='fd --type file --color=always --hidden --follow --exclude .git --exclude .venv'
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
export FZF_DEFAULT_OPTS="
    --multi --height 40% --layout=reverse --ansi \
    --bind 'ctrl-/:toggle-preview'"
export FZF_CTRL_T_OPTS="
    --preview 'bat --color=always {}' --preview-window :hidden \
    --bind 'ctrl-v:execute(code {+})'"
export FZF_CTRL_R_OPTS="
    --preview 'echo {}' --preview-window down:hidden:wrap \
    --bind 'ctrl-y:execute-silent(echo -n {2..} | pbcopy)+abort'"

_fzf_compgen_path() {
    fd . "$1"
}

_fzf_compgen_dir() {
    fd --type d . "$1"
}

# bat
if (( $+commands[bat] )); then
    alias cat="bat"
    export BAT_STYLE="auto"
    export BAT_THEME="GitHub"
fi

# yazi
function yy() {
	local tmp="$(mktemp -t "yazi-cwd.XXXXXX")" cwd
	yazi "$@" --cwd-file="$tmp"
	IFS= read -r -d '' cwd < "$tmp"
[ -n "$cwd" ] && [ "$cwd" != "$PWD" ] && builtin cd -- "$cwd"
		rm -f -- "$tmp"
}

# VS code shell integration
[[ "$TERM_PROGRAM" == "vscode" ]] && . "$(code --locate-shell-integration-path zsh)"

# Default editor
export EDITOR=micro
export VISUAL=$EDITOR

# zoxide
eval "$(zoxide init zsh)"

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"
