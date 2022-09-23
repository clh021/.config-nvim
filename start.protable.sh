#!/usr/bin/env bash
# leehom Chen clh021@gmail.com
# 本脚本旨在启动一个随处可运行的 vim 配置环境。将自己熟悉的配置带着走。
set -e
echo "I'm not ready yet."
exit

# 路径准备
OldPath=$(pwd)
cd "$( dirname "${BASH_SOURCE[0]}" )"
ProjPath=$(pwd)


# arch=`dpkg --print-architecture` # amd64
# arch=$(uname -m) # x86_64

# 寻找 neovim
VimBin=
if ! command -v nvim &> /dev/null
then
    echo "Not found neovim now..."
else
  VimBin=$(which nvim)
fi

display_usage() {
    echo -e "All i know in it."
    exit 1
}

CMD=""
if [[ ( $@ == "--help" ) || $@ == "-h" ]]; then
    display_usage
elif [[ -n $@ ]]; then
    CMD=$@
fi

cd "$OldPath"
HOME=${ProjPath} $VimBin ${CMD}
