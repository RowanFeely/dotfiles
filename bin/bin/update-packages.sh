#!/bin/zsh
#            __                               __      __
#     ____  / /______ _      __  ______  ____/ /___ _/ /____
#    / __ \/ //_/ __ `/_____/ / / / __ \/ __  / __ `/ __/ _ \
#   / /_/ / ,< / /_/ /_____/ /_/ / /_/ / /_/ / /_/ / /_/  __/
#  / .___/_/|_|\__, /      \__,_/ .___/\__,_/\__,_/\__/\___/
# /_/         /____/           /_/
#
#  ▓▓▓▓▓▓▓▓▓▓
# ░▓ author ▓ ROGUE(X3) <rowanfeely.github.io>
# ░▓   code ▓ https://github.com/RowanFeely/dotfiles
# ░▓▓▓▓▓▓▓▓▓▓
# ░░░░░░░░░░

read "homebrew?Update homebrew? "
if [[ "$homebrew" =~ ^[Yy]$ ]]
then
	brew update && brew upgrade && brew cleanup || echo "upgrade failed, try brew doctor";
	echo "update finished"
else
	echo "skipped homebrew"
fi
read "pip?Update pip? "
if [[ "$pip" =~ ^[Yy]$ ]]
then
	pip install --upgrade pip || echo "upgrade failed, check pip setup";
	echo "update finished"
else
	echo "skipped pip"
fi
read "npm?Update npm? "
if [[ "$npm" =~ ^[Yy]$ ]]
then
#	npm update -g npm && npm update -g || echo "update failed, try npm doctor";
npm update -g npm || echo "update failed, try npm doctor";
echo "update finished"
else
	echo "skipped node and npm"
fi
read "ruby?Update Ruby and gems? "
if [[ "$ruby" =~ ^[Yy]$ ]]
then
	sudo gem update --system && gem update && gem cleanup || echo "update failed, check ruby/gem setup";
	echo "update finished"
else
	echo "skipped ruby and gems"
fi
#softwareupdate --list
#read "software? Fetch updates? "
#if [[ "$software" =~ ^[Yy]$ ]]
#then
#	softwareupdate --install
#else
#	echo "skipped software update"
#fi
echo all done.
/usr/local/bin/notify-send -m "✔ updated packages"
