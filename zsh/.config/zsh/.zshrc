autoload -Uz colors && colors


autoload -U up-line-or-beginning-search
autoload -U down-line-or-beginning-search
bindkey "^p" up-line-or-beginning-search             # Up
bindkey "^n" down-line-or-beginning-search           # Down
zle -N up-line-or-beginning-search
zle -N down-line-or-beginning-search


autoload -Uz compinit
zstyle ':completion:*' menu select #completer _complete _ignored
zstyle :compinstall filename '/home/alqaholic/.zshrc'
compinit -d $XDG_DATA_HOME/.zccompdump

zmodload -i zsh/complist

HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000

# some useful options (man zshoptions)
unsetopt BEEP                                       # beeping is annoying
setopt autocd extendedglob nomatch menucomplete
setopt interactive_comments
stty stop undef                                     # Disable ctrl-s to freeze terminal.
zle_highlight=('paste:none')


[ -f "$ZDOTDIR/functions.zsh" ] && source "$ZDOTDIR/functions.zsh"

zsh_add_file "exports.zsh"
zsh_add_file "aliases.zsh"
zsh_add_file "vim-mode.zsh"


zsh_add_plugin "zsh-users/zsh-autosuggestions"
zsh_add_plugin "zsh-users/zsh-syntax-highlighting"


eval "$(starship init zsh)"
