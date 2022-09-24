# .config-nvim
> 本项目不同于[vim](https://github.com/clh021/vim),本项目只考虑nvim,尽可能使用lua搭建

[Fork Proj](https://github.com/brainfucksec/neovim-lua#installation)

## 思考
> 应该将自己的常用快捷键想法和习惯独立出来
> 比如编辑模式下的鼠标移动等
> 这并非随时准备替换不同的配置基础
> 而是独立出来后可以专门管理，即使是在其它机器上

## start.portable.sh
随处可用的运行模式，不影响宿主机的环境。适合公共电脑。
本地建立软链接，设置 HOME 后运行

## init.host.sh
初始化到宿主机的运行模式，快速设置宿主机的环境。适合独立使用电脑。
初始化仓库到 ~/.config/nvim 目录中，可继续版本控制。

- [learn-neovim-lua](https://github.com/nshen/learn-neovim-lua/blob/bak/docs/basic-config.md)
- [kiss-neovim-lua](https://github.com/brainfucksec/neovim-lua)
- [neovim-config](https://blog.smslit.cn/2022/05/02/neovim-config/)

> 配置的快捷键尽量与 doom-emacs 一致,方便以后可能的迁移
