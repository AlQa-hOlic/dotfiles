alias mirror="sudo reflector -f 30 -l 30 --number 10 --verbose --save /etc/pacman.d/mirrorlist"
alias mirrord="sudo reflector --latest 50 --number 20 --sort delay --save /etc/pacman.d/mirrorlist"
alias mirrors="sudo reflector --latest 50 --number 20 --sort score --save /etc/pacman.d/mirrorlist"
alias mirrora="sudo reflector --latest 50 --number 20 --sort age --save /etc/pacman.d/mirrorlist"


# For when keys break
alias archlinux-fix-keys="sudo pacman-key --init && sudo pacman-key --populate archlinux && sudo pacman-key --refresh-keys"


alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'
alias ls='exa --color=auto --group-directories-first'
alias ll='exa --color=auto --group-directories-first --all --long'
alias vim='nvim'
alias cat="bat --color=always --decorations never"


# confirm before overwriting something
alias cp="cp -i"
alias mv='mv -i'
alias rm='rm -i'


# easier to read disk
alias df='df -h'     # human-readable sizes
alias free='free -m' # show sizes in MB

# Git aliases
alias gs="git status"
alias gc="git commit"
alias batdiff="git diff --name-only --relative --diff-filter=d | xargs bat --diff"
alias git_undo_last_commit="git reset --soft HEAD~1"
