# Writes the host name (name of computer) to variable hostname
# export extends the scope of the variable (available in bash)

export hostname='unknown'
if which domainname >/dev/null; then
    export hostname=$(hostname)
else
    export hostname='unknown'
fi

echo $hostname


# Common commands

alias py=python3
alias xm="xmodmap ~/.dotfiles/.Xmodmap"

set completion-ignore-case on
set show-all-if-ambiguous on

alias l="ls -la"       # List in long format, include dotfiles
alias ld="ls -ld */"   # List in long format, only directories
alias ..="cd .."


# Only for desktop at mpg ds, named tochal
mpg='tochal'
echo $mpg
if [ $hostname == $mpg ]; then
    PATH=$PATH:/usr/ds/
    alias mathematica=/usr/ds/mathematica/Executables/Mathematica 
fi


