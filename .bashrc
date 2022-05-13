# Prompt.
export PS1="\[\e[00;32m\]\u@\[\e[0m\]\[\e[00;33m\]\h\[\e[0m\]\[\e[00;32m\]:\[\e[0m\]\[\e[01;33m\]\W\[\e[0m\]\[\e[00;37m\] \[\e[0m\]\[\e[00;32m\]\\$\[\e[0m\]\[\e[00;37m\] \[\e[0m\]"

#Editor
export EDITOR="vim"

# Enable colors on MacOS.
export CLICOLOR=1

# don't put duplicate lines or lines starting with space in the history.
# See bash(1) for more options
HISTCONTROL=ignoreboth

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    #alias dir='dir --color=auto'
    #alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

alias ll='ls -alF'
alias b='bazel build -c opt :all'
alias t='bazel test -c opt :all'
