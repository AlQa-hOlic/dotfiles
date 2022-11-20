autoload -Uz colors && colors


zmodload -i zsh/complist

# Use hjlk in menu selection (during completion)
# Doesn't work well with interactive mode
bindkey -M menuselect 'h' vi-backward-char
bindkey -M menuselect 'k' vi-up-line-or-history
bindkey -M menuselect 'j' vi-down-line-or-history
bindkey -M menuselect 'l' vi-forward-char

autoload -Uz compinit
zstyle ':completion:*' completer _extensions _complete _approximate
zstyle ':completion:*' menu select
zstyle ':completion:*' complete-options true
zstyle ':completion:*' file-sort modification

zstyle :compinstall filename '/home/alqaholic/.zshrc'
compinit -d $XDG_DATA_HOME/.zccompdump
_comp_options+=(globdots)

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

zsh_add_file "aliases.zsh"

zsh_add_plugin "zsh-users/zsh-autosuggestions"
zsh_add_plugin "zsh-users/zsh-syntax-highlighting"

if type "krabby" &> /dev/null; then
  krabby random
fi
eval "$(starship init zsh)"
