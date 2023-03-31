# Writes the host name (name of computer) to variable hostname
# export extends the scope of the variable (available in bash)

export hostname='unknown'
if which domainname >/dev/null; then
    export hostname=$(hostname)
else
    export hostname='unknown'
fi


# Activates xmodmap optins
# can be used instead of touchcursor if sudo not available
# xmodmap ~/.dotfiles/.Xmodmap

# activates touchcursor
# install from https://github.com/donniebreve/touchcursor-linux
systemctl --user restart touchcursor.service


set completion-ignore-case on
set show-all-if-ambiguous on


# Only for desktop at mpg ds, named tochal
mpg='tochal'
if [ $hostname == $mpg ]; then
    PATH=$PATH:/usr/ds/
    alias mathematica='/usr/ds/bin/mathematica & disown'
    alias zotero6='/usr/ds/bin/zotero & disown'
fi

# Settings for hp envy
# envy='envy'
# if [ $hostname == $envy ]; then

. ~/.dotfiles/.bash_aliases


# bashrc from envy, standard for Ubuntu 22
. ~/.dotfiles/.bash_envy
