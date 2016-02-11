install-linux: install-vim install-tmux install-git install-hg
install-mac: install-vim install-tmux install-git install-hg install-bash-mac

install-vim:
	rm -rf ~/.vim ~/.vimrc
	ln -s `pwd`/vim ~/.vim
	ln -s ~/.vim/vimrc ~/.vimrc

install-git:
	rm -f ~/.gitconfig
	ln -s `pwd`/git/gitconfig ~/.gitconfig

install-hg:
	rm -f ~/.hgrc
	ln -s `pwd`/hg/hgrc ~/.hgrc

install-tmux:
	rm -f ~/.tmux.conf
	ln -s `pwd`/tmux.conf ~/.tmux.conf

install-bash-mac:
	mv ~/.bash_profile ~/.bash_profile~
	ln -s `pwd`/bash/bash_profile_mac ~/.bash_profile
	ln -s `pwd`/bash/bash/ ~/.bash

