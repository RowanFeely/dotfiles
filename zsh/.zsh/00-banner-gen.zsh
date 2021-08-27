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
# ░▓ author ▓ ROGUE(X3) <rowanfeely.github.io>
# ░▓   code ▓ https://github.com/RowanFeely/dotfiles
# ░▓▓▓▓▓▓▓▓▓▓
# ░░░░░░░░░░

#█▓▒░ pick a random number
_RAND=`shuf -i1-11 -n1`

#█▓▒░ display a random ascii banner
case $_RAND in
1)
  clear
  ansicat < "/Users/rowanfeely/.zsh/banners/+l-fd.ans"
;;
2)
  clear
  ansicat < "/Users/rowanfeely/.zsh/banners/grk-chkl.ans"
;;
3)
  clear
  ansicat < "/Users/rowanfeely/.zsh/banners/grk-usrl.ans"
;;
4)
  clear
  ansicat < "/Users/rowanfeely/.zsh/banners/hx-askee.ans"
;;
5)
  clear
  ansicat < "/Users/rowanfeely/.zsh/banners/hx-askee.ans"
;;
6)
  clear
  ansicat < "/Users/rowanfeely/.zsh/banners/jp!xib1.ans"
;;
7)
  clear
  ansicat < "/Users/rowanfeely/.zsh/banners/pmt-bos.ans"
;;
8)
  clear
  ansicat < "/Users/rowanfeely/.zsh/banners/po-pog1.ans"
;;
9)
  clear
  ansicat < "/Users/rowanfeely/.zsh/banners/us-bbsln.ans"
;;
10)
  clear
  ansicat < "/Users/rowanfeely/.zsh/banners/us-warez.ans"
;;
11)
  clear
  ansicat < "/Users/rowanfeely/.zsh/banners/xz-impure.ans"
;;
esac