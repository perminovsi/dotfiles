.PHONY: alacritty tmux vim ssh scripts

all: alacritty tmux vim ssh scripts

alacritty:
	mkdir -p ${HOME}/.config/alacritty
	ln -sfv ${HOME}/.dotfiles/alacritty/alacritty.yml ${HOME}/.config/alacritty

tmux:
	ln -sfv ${HOME}/.dotfiles/tmux/.tmux.conf ${HOME}

vim:
	ln -sfv ${HOME}/.dotfiles/vim/.vimrc ${HOME}

ssh:
	mkdir -p ${HOME}/.ssh

scripts:
	mkdir -p ${HOME}/.local/bin
	ln -sfv ${HOME}/.dotfiles/scripts/vpn-scanex.sh ${HOME}/.local/bin/vpn-scanex
	ln -sfv ${HOME}/.dotfiles/scripts/wired-scanex.sh ${HOME}/.local/bin/wired-scanex

