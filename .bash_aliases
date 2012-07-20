alias ls='ls --group-directories-first --color=auto'
alias ll='ls --group-directories-first -l'
alias la='ls --group-directories-first -A'
alias l='ls --group-directories-first -CF'
alias p='sudo pacman'
alias y='yaourt'
alias yS='yaourt -S --noconfirm'
alias vi='vim'
which hub >/dev/null 2>&1 && alias git='hub'
alias rc.d='sudo rc.d'
alias netcfg='sudo netcfg'
alias mp='mplayer'
alias X='exec startx'

# GStreamer
alias gstl='gst-launch-1.0'
alias gsti='gst-inspect-1.0'

# Ubuntu
alias ag='sudo apt-get'
alias agi='sudo apt-get install'
alias svc='sudo service'

#erlang shell is broken, fix it if we don't already use local script
[ -x /usr/local/bin/erl ] || alias erl='rlwrap erl -oldshell'
