alias ls='ls --color=auto'
alias ll='ls -l'
alias la='ls -A'
alias l='ls -CF'
alias p='sudo pacman'
alias y='yaourt'
alias vi='vim'
alias git='hub'
alias rc.d='sudo rc.d'

#erlang shell is broken, fix it if we don't already use local script
[ -x /usr/local/bin/erl ] || alias erl='rlwrap erl -oldshell'
