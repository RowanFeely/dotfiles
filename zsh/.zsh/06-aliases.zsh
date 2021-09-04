#                 ██
#                ░██
#  ███████ █████ ░██
# ░░░░██  ██░░░░ ░██████
#    ██  ░░█████ ░██░░░██
#   ██    ░░░░░██░██  ░██
#  ██████ ██████ ░██  ░██
# ░░░░░░ ░░░░░░  ░░   ░░
#
#  ▓▓▓▓▓▓▓▓▓▓
# ░▓ author ▓ rogue <rowanfeely.github.io>
# ░▓ code   ▓ http://github.com/rowanfeely/dotfiles
# ░▓▓▓▓▓▓▓▓▓▓
# ░░░░░░░░░░

# startup profiling
alias zsh-benchmark="time zsh -i -c exit"
alias update-packages="zsh ~/dotfiles/bin/bin/update-packages.sh"
alias update-pip="pip install --upgrade pip"
alias nvimdebug="nvim -u NORC"
alias youtube-dl-best-audio="youtube-dl -f bestaudio --extract-audio --audio-format mp3 --audio-quality 0"
alias checkmacaddr="ifconfig en0 |grep ether | sed 's/[^ ]* //'"
alias rmtrash="rm-trash"
alias tmx="~/dotfiles/bin/bin/tmx"
# alias rm="rm-trash"
alias genius="swaglyrics --cli"
alias opensesame="mount -o rw,union,update /; mv /Applications/Setup.app /Applications/Setup.app.bak; uicache --all; killall backboardd"
alias cleanupds="find . -type f -name '*.DS_Store' -ls -delete"
alias ubersicht-config="nvim ~/Library/Application Support/ubersicht/"
alias nvim-config="nvim ~/.vim"
alias ddg="ddgr -n 5 --unsafe"
alias zsh-config="nvim ~/.zsh"
alias ranger-config="nvim ~/.config/ranger"
alias tmux-config="nvim ~/.tmux.conf"
alias tmux-status-config="~/bin/tmux-status"
# █▓▒░ TODO: fix list output space handling 
alias figlet-fonts='for font in `"ls" /usr/local/share/figlet/fonts/*`; do figlet -f "$font" "rogue" && echo - "$font"; done;'
alias toilet-fonts='for font in `"ls" /usr/local/share/figlet/fonts/*.flc`; do figlet -C "$font" "rogue" && echo "- $font"; echo; echo; done;'
alias toilet-list='for font in `"ls" /usr/local/Cellar/toilet/0.3/share/figlet/*`; do toilet -f "$font" "rogue" && echo - "$font"; done;'
alias figlet-list='for font in `"ls" -1 /usr/local/share/figlet/fonts/*`; do figlet -c -f $font "rogue" && echo - "$font"; done;'
alias figlet-control-list='for font in `"ls" /usr/local/Cellar/toilet/0.3/share/figlet/*.flc`; do figlet -C "$font" "rogue" && echo "- $font"; echo; echo; done;'
alias rogue!="cat ~/dotfiles/banners/rogue-zsh-banner.ans"
#█▓▒░ hue taps
alias huered="hue lights 9 ff6a6a"
#█▓▒░ aliases
alias cloudoff="~/bin/cloud.sh off"
alias cloudon="~/bin/cloud.sh on"
alias ccat="pygmentize -O style=sourcerer -f console256 -g"
alias ontop="source ~/.zsh/plugins/almostontop/almostontop.plugin.zsh"
alias sysinfo="~/repos/xero_dotfiles/bin/bin/sysinfo"
alias stonks="watch -n 5 -t -c ~/repos/ticker.sh $(cat ~/.ticker.conf)"
alias hdr="figlet -d ~/repos/dotfiles/figlet -f 3d -w $(tput cols)"
alias hdrdtl='echo "#  ▓▓▓▓▓▓▓▓▓▓
# ░▓ author ▓ ROGUE(X3) <rowanfeely.github.io>
# ░▓   code ▓ https://github.com/RowanFeely/dotfiles
# ░▓▓▓▓▓▓▓▓▓▓
# ░░░░░░░░░░"'
alias xyzzy="echo nothing happens"
# eval $(thefuck --alias)
alias ls="exa --no-user --icons --group-directories-first -x"
alias ll="exa --no-time --no-user --classify --icons --group-directories-first -a -l --git"
alias "cd.."="cd ../"
alias up="cd ../"
alias rmrf="rm -rf"
alias psef="ps -ef"
alias mkdir="mkdir -p"
alias grep="grep -i"
alias cp="cp -r"
alias scp="scp -r"
alias xsel="xsel -b"
# alias fuck='sudo $(fc -ln -1)'
alias e="$EDITOR"
alias se="sudo $EDITOR"
alias v="nvim"
alias vimdiff="nvim -d -u ~/.vimrc"
alias emacs="nvim"
alias g="git"
alias ga="git add"
alias gc="git commit -m"
alias gs="git status"
alias gd="git diff"
alias gf="git fetch"
alias gm="git merge"
alias gr="git rebase"
alias gp="git push"
alias gu="git unstage"
alias gg="git graph"
alias ggg="git graphgpg"
alias gco="git checkout"
alias gcs="git commit -S -m"
alias gpr="hub pull-request"
alias ag="ag --color --color-line-number '0;35' --color-match '46;30' --color-path '4;36'"
alias tree='tree -CAFa -I "CVS|*.*.package|.svn|.git|.hg|node_modules|bower_components" --dirsfirst'
alias rock="ncmpcpp"
alias mixer="alsamixer"
alias matrix="cmatrix -b"
alias tempwatch="while :; do sensors; sleep 1 && clear; done;"
alias term="urxvtc -hold -e " #used for run menu
alias toiletlist='for i in ${TOILET_FONT_PATH:=/usr/local/share/figlet}/*.{t,f}lf; do j=${i##*/}; echo ""; echo "╓───── "$j; echo "╙────────────────────────────────────── ─ ─ "; echo ""; toilet -d "${i%/*}" -f "$j" "${j%.*}"; done'
alias tdlist='for i in ${TD_FONT_PATH:=/usr/local/share/tdfiglet/fonts}/*.tdf; do j=${i##*/}; echo ""; echo "╓───── "$j; echo "╙────────────────────────────────────── ─ ─ "; echo ""; tdfiglet -f "$j" "${j%.*}"; done'
alias ascii="toilet -t -f 3d"
alias future="toilet -t -f future"
alias rusto="toilet -t -f rusto"
alias rustofat="toilet -t -f rustofat"
alias lol="base64 </dev/urandom | lolcat"
alias pacman="sudo pacman"
alias update="pacman-colors && yay -Syu"
alias systemctl="sudo systemctl"
alias :q="sudo systemctl poweroff"
alias ZZ="exit"
alias disks='echo "╓───── m o u n t . p o i n t s"; echo "╙────────────────────────────────────── ─ ─ "; lsblk -a; echo ""; echo "╓───── d i s k . u s a g e"; echo "╙────────────────────────────────────── ─ ─ "; df -h;'
alias todo="bash ~/code/sys/todo"
alias record="ffmpeg -f x11grab -s 1366x768 -an -r 16 -loglevel quiet -i :0.0 -b:v 5M -y" #pass a filename
alias nexus="jmtpfs ~/nexus"
alias p="pass -c"
alias doc="sudo docker"
#alias docclean="sudo docker rm $(sudo docker ps -a -q) &&  sudo docker rmi $(sudo docker images -q)"
alias docstats="sudo docker ps -q | xargs  docker stats --no-stream"
#█▓▒░ update mpd database
function genplaylist() {
  cd ~/music
  find . -name '*.mp3' -o -name '*.flac'|sed -e 's%^./%%g' > ~/.config/mpd/playlists/all.m3u
  mpc clear
  mpc load all.m3u
  mpc update
}
#█▓▒░ tmux
function t() {
  X=$#
  [[ $X -eq 0 ]] || X=X
  tmux new-session -A -s $X
}
#█▓▒░ cli mail
function email() {
	echo $3 | mutt -s $2 $1
}
#█▓▒░ read stuff like manpages
function md() {
    pandoc -s -f markdown -t man "$*" | man -l -
}
function manwww() {
	curl -skL "$*" | pandoc -s -f html -t man | man -l -
}
#█▓▒░ nullpointer url shortener
function short() {
  curl -F"shorten=$*" https://0x0.st
}
#█▓▒░ smaller scrots
function scrot_area() {
  read -r G < <(slop -f "%g")
  import -window root -crop $G ~/$(date "+%Y-%m-%d_%H-%M-%S")_slop_scrot.png
}
#█▓▒░ record video
function vid_area() {
  read -r X Y W H G ID < <(slop -f "%x %y %w %h %g %i")
  ffmpeg -f x11grab -s "$W"x"$H" -i :0.0+$X,$Y -f alsa -i pulse ~/$(date "+%Y-%m-%d_%H-%M-%S")_slop_vid.webm
}
function rm_dsstore() {
  find . -type f -name '.DS_Store' -ls -delete
}
# i hate this
alias x="startx"
alias aliases="ccat ~/.zsh/06-aliases.zsh"
#█▓▒░ ImageMagick
# convert mov to large gif
  # ffmpeg -i Untitled.mov -pix_fmt rgb24 output.gif
# optimise large gif
  # convert -layers Optimize output.gif output_optimized.gif
alias matrix="unimatrix -a -f -o -s 97 -l kssss"
alias pipess="~/dotfiles/fun/bin/pipes"
alias bonsai="~/repos/cbonsai/cbonsai -S"
alias pipesx="/usr/local/bin/bash ./pipesx -i 0.02 -t 5 -n 2"
alias hn="hnterm"
