#                 ██
#                ░██
#  ██████  ██████░██      ██████  █████
# ░░░░██  ██░░░░ ░██████ ░░██░░█ ██░░░██
#    ██  ░░█████ ░██░░░██ ░██ ░ ░██  ░░
#   ██    ░░░░░██░██  ░██ ░██   ░██   ██
#  ██████ ██████ ░██  ░██░███   ░░█████
# ░░░░░░ ░░░░░░  ░░   ░░ ░░░     ░░░░░
#
#  ▓▓▓▓▓▓▓▓▓▓
# ░▓ author ▓ rogue <rowanfeely@github.io>
# ░▓ code   ▓ http://github.com/rowanfeely/dotfiles
# ░▓▓▓▓▓▓▓▓▓▓
#
# █▓▒░ uncomment zprof lines for profiling
# zmodload zsh/zprof

#█▓▒░ load configs
for config (~/.zsh/*.zsh) source $config
# zprof
# fish like tab-completion lists and descriptions
zmodload zsh/complist
setopt menucomplete
zstyle ':completion:*' menu select=0 search

