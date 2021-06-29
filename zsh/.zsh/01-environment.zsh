#                 ██      
#                ░██      
#  ██████  ██████░██      
# ░░░░██  ██░░░░ ░██████  
#    ██  ░░█████ ░██░░░██ 
#   ██    ░░░░░██░██  ░██ 
#  ██████ ██████ ░██  ░██ 
# ░░░░░░ ░░░░░░  ░░   ░░  
#
#  ▓▓▓▓▓▓▓▓▓▓
# ░▓ author ▓ rogue <rowanfeely@github.io>
# ░▓ code   ▓ http://github.com/rowanfeely/dotfiles
# ░▓▓▓▓▓▓▓▓▓▓
# ░░░░░░░░░░
#
#█▓▒░ timestamps
#HIST_STAMPS=yyyy/mm/dd

#█▓▒░ paths
export PATH="$HOME/.local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin"

# if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi
export PATH="$HOME/.gem/ruby/X.X.0/bin:$PATH"

#█▓▒░ go lang
export GOPATH=$HOME/go
export GOROOT="$(brew --prefix golang)/libexec"
export PATH="$PATH:${GOPATH}/bin:${GOROOT}/bin"
export PATH="$PATH:$HOME/.cargo/bin"
# export MANPATH=/usr/local/man:$MANPATH

#█▓▒░ preferred text editor
export EDITOR=nvim
export VISUAL=nvim

#█▓▒░ language
export LC_COLLATE=en_US.UTF-8
export LC_CTYPE=en_US.UTF-8
export LC_MESSAGES=en_US.UTF-8
export LC_MONETARY=en_US.UTF-8
export LC_NUMERIC=en_US.UTF-8
export LC_TIME=en_US.UTF-8
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
export LANGUAGE=en_US.UTF-8
export LESSCHARSET=utf-8

export DYLD_LIBRARY_PATH="$HOME/ImageMagick-7.0.10/lib/"
