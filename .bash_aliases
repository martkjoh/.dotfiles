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
lmpcp() { scp -r mjohnsrud@10.219.100.51:~/"$1" "$2"; }
scrcp() { scp -r sohrab:/scratch04.local/mjohnsrud/"$1" $1;}
# Sync folder $1/$2 to $1
# Example: rsync  NRCH_CEP/crit 5 -> 
scrsync() { rsync -avP sohrab:/scratch04.local/mjohnsrud/"$1"/"$2" ~/data/"$1";}

# Sync contents of a local folder in data to the data.lmp folder at the institute
# argument $1 is the name of some folder in the local data folder
# a: archive, v: verbose, P: partial, R: relative path
datasync() { cd ~/data && rsync -avPR $1 desktop:/data.lmp/mjohnsrud/; }

# Convert presentation into pngs 
topng() { mkdir -p main_png && convert -density 304.8 -units PixelsPerCentimeter main.pdf main_png/page.png; }
# convert vid.webm into mp4
vconv() { ffmpeg -i $1.webm -vf "pad=ceil(iw/2)*2:ceil(ih/2)*2" $1.mp4; }
