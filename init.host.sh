#!/usr/bin/env bash
# leehom Chen clh021@gmail.com
set -e

echo "正在安装 nvim 的插件管理器"
mkdir -p ~/.local/share/nvim/site/pack/packer/start/
if test -f "$HOME/.local/share/nvim/site/pack/packer/start/packer.nvim"; then
	git clone --depth 1 https://github.com/wbthomason/packer.nvim\
	 ~/.local/share/nvim/site/pack/packer/start/packer.nvim
fi

echo "正在安装配置脚本"
if test -f "$HOME/.config/nvim/.git/config"; then
	read -p "发现~/.config/nvim/.git已存在！删除继续吗？[Y|N]" -n 1 -r
	echo    # (optional) move to a new line
	if [[ ! $REPLY =~ ^[Yy]$ ]]
	then
		echo "跳过，初始化结束。"
	    	exit 1
	fi
fi
cp -r ./.git ~/.config/nvim/
cd ~/.config/nvim
git checkout .

echo "宿主机初始化配置完成!"
