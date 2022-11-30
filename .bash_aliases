# Set keybaord
alias lkeyboar='xinput list'

# Update bash
alias load='source ~/.bashrc'

alias rst='setxkbmap -option'

# Nice git graph
alias glog='git log --all --oneline --graph'

# Common commands
alias py=python3
alias l="ls -la"       # List in long format, include dotfiles
alias ld="ls -lad */"  # List in long format, only directories
alias ..="cd .."

# Mount google drive disk to the desktop
alias mnt='rclone mount drive:/barsoe ~/Desktop/ --vfs-cache-mode full --daemon'
alias umnt='fusermount -uz ~/Desktop'