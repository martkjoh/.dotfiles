# Writes the host name (name of computer) to variable hostname# export extends the scope of the variable (available in bash)

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
# systemctl --user restart touchcursor.service


set completion-ignore-case on
set show-all-if-ambiguous on


# Only for desktop at mpg ds, named dalankuh
mpg='dalankuh'
if [ $hostname == $mpg ]; then
    PATH=$PATH:/usr/ds/
    alias mathematica='/usr/ds/bin/mathematica & disown'
    alias zotero6='/usr/ds/bin/zotero & disown'
    alias julia='/usr/ds/bin/julia'
    alias cdata='cd /data.lmp/mjohnsrud/'
fi


if [ ${hostname:0:6} == 'sohrab' ]; then
    source /core/uge/LMP/common/settings.sh
    alias julia='/usr/ds/bin/julia'
    alias lscr='l /scratch04.local/mjohnsrud/'
    alias cscr='cd /scratch04.local/mjohnsrud/'
    alias cdata='cd /data.lmp/mjohnsrud/'
fi


. ~/.dotfiles/.bash_aliases

# bashrc from envy, standard for Ubuntu 22
. ~/.dotfiles/.bash_envy

bind '"\t":menu-complete'

alias venv="source $HOME/.venv/bin/activate"
venv
