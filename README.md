           ██            ██     ████ ██  ██
          ░██           ░██    ░██░ ░░  ░██
          ░██  ██████  ██████ ██████ ██ ░██  █████   ██████
       ██████ ██░░░░██░░░██░ ░░░██░ ░██ ░██ ██░░░██ ██░░░░
      ██░░░██░██   ░██  ░██    ░██  ░██ ░██░███████░░█████
     ░██  ░██░██   ░██  ░██    ░██  ░██ ░██░██░░░░  ░░░░░██
     ░░██████░░██████   ░░██   ░██  ░██ ███░░██████ ██████
      ░░░░░░  ░░░░░░     ░░    ░░   ░░ ░░░  ░░░░░░ ░░░░░░

          ▓▓▓▓▓▓▓▓▓▓
         ░▓ author ▓ ROGUE(X3) <rowanfeely.github.io>
         ░▓   code ▓ https://github.com/RowanFeely/dotfiles
         ░▓▓▓▓▓▓▓▓▓▓
         ░░░░░░░░░░

__bootstrappable envs for MacOS__

## installation
- restore each appllication configuration with `stow [application]`

## fonts 
- copy font files to system font directory:
	`cp fonts/CozetteVector.dfont /Library/Fonts`
	`cp fonts/Cozette.dfont /Library/Fonts`

- or to quickly install baseline fonts, run:
	`brew tap homebrew/cask-fonts`

## dependencies
- gem install iStats
- airport: sudo ln -s /System/Library/PrivateFrameworks/Apple80211.framework/Versions/Current/Resources/airport /usr/sbin/airport 

for neomutt:
- brew install gpgme
- brew install isync
- brew install khard
- brew install msmtp
- brew install mu
- brew install neomutt
- brew install ripmime
- brew install w3m
- brew install vdirsyncer
- sudo pip3 install -I urlscan

### references
- https://webgefrickel.de/blog/a-modern-mutt-setup

