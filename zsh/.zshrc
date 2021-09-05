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
/usr/local/bin/notify-send -m " zshrc"
