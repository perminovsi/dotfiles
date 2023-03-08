.PHONY: alacritty bash conky git mc npm psql ranger scripts sh ssh tmux vim nvim zsh rofi

all: alacritty bash conky git mc npm psql ranger scripts sh ssh tmux vim nvim zsh rofi

alacritty:
	mkdir -p ${HOME}/.config/alacritty
	ln -sfv ${HOME}/.dotfiles/alacritty/alacritty.yml ${HOME}/.config/alacritty

bash:
	ln -sfv ${HOME}/.dotfiles/bash/.bashrc ${HOME}

conky:
	ln -sfv ${HOME}/.dotfiles/conky/.conkyrc ${HOME}

git:
	ln -sfv ${HOME}/.dotfiles/git/.gitconfig ${HOME}
	ln -sfv ${HOME}/.dotfiles/git/.gitignore ${HOME}

mc:
	mkdir -p ${HOME}/.config/mc
	ln -sfv ${HOME}/.dotfiles/mc/mc.keymap ${HOME}/.config/mc

npm:
	ln -sfv ${HOME}/.dotfiles/npm/.npmrc ${HOME}

psql:
	ln -sfv ${HOME}/.dotfiles/psql/.psqlrc ${HOME}

ranger:
	mkdir -p ${HOME}/.config/ranger
	ln -sfv ${HOME}/.dotfiles/ranger/commands.py ${HOME}/.config/ranger
	ln -sfv ${HOME}/.dotfiles/ranger/rc.conf ${HOME}/.config/ranger
	ln -sfv ${HOME}/.dotfiles/ranger/rifle.conf ${HOME}/.config/ranger
	ln -sfv ${HOME}/.dotfiles/ranger/scope.sh ${HOME}/.config/ranger

scripts:
	mkdir -p ${HOME}/.local/bin
	ln -sfv ${HOME}/.dotfiles/scripts/vpn-scanex.sh ${HOME}/.local/bin/vpn-scanex
	ln -sfv ${HOME}/.dotfiles/scripts/wired-scanex.sh ${HOME}/.local/bin/wired-scanex

sh:
	ln -sfv ${HOME}/.dotfiles/sh/.profile ${HOME}

ssh:
	mkdir -p ${HOME}/.ssh
	ln -sfv ${HOME}/.dotfiles/ssh/config ${HOME}/.ssh

tmux:
	ln -sfv ${HOME}/.dotfiles/tmux/.tmux.conf ${HOME}

vim:
	ln -sfv ${HOME}/.dotfiles/vim/.vimrc ${HOME}

nvim:
	ln -sfv ${HOME}/.dotfiles/nvim/init.vim ${HOME}/.config/nvim

zsh:
	ln -sfv ${HOME}/.dotfiles/zsh/.zshrc ${HOME}

rofi:
	mkdir -p ${HOME}/.config/rofi
	ln -sfv ${HOME}/.dotfiles/rofi/config.rasi ${HOME}/.config/rofi

