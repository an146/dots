alias ll='ls -l'
alias la='ls -A'
alias l='ls -CF'
alias pac='sudo pacman'

#erlang shell is broken, fix it if we don't already use local script
[ -x /usr/local/bin/erl ] || alias erl='rlwrap erl -oldshell'
