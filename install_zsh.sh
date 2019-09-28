#!/bin/bash

cd /tmp
wget -O zsh.tar.xz https://sourceforge.net/projects/zsh/files/latest/download
mkdir zsh && unxz zsh.tar.xz && tar -xvf zsh.tar -C zsh --strip-components 1
cd zsh
./configure --prefix=$HOME/.local
make
make install

echo "export PATH=$HOME/.local/bin:$PATH" >> ~/.bashrc
echo "export PATH=$HOME/.local/bin:$PATH" >> ~/.zshrc

source ~/.bashrc
source ~/.zshrc

sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
