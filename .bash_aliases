# Set keybaord
alias lkeyboar='xinput list'

# Update bash
alias load='source ~/.bashrc'

alias rst='setxkbmap -option'

# Nice git graph
alias glog='git log --all --oneline --graph'

# Common commands
alias py=python3
alias l="ls -lha"       # List in long format, include dotfiles
alias ld="ls -lad */"  	# List in long format, only directories
alias ..="cd .."

alias lmp='ssh 10.219.100.51'
lmpcp() { scp mjohnsrud@10.219.100.51:~/"$1" "$2"; }

syncdata() { rsync -avP $2 ~/data/"$1"/ desktop:/data.lmp/mjohnsrud/$1; }
