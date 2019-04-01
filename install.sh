#!/bin/bash

OS=$(uname -s)

# copy vimrc, suppose in vimconfig folder
cp vimrc ~/.vimrc

# install plugin manager: pathogen
mkdir -p ~/.vim/autoload ~/.vim/bundle && \
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

# install vim plugins
cd ~/.vim/bundle
git clone https://github.com/vim-scripts/buftabs
git clone https://github.com/vim-scripts/cscope.vim
git clone https://github.com/junegunn/fzf.vim
git clone https://github.com/vim-scripts/netrw.vim
git clone https://github.com/rust-lang/rust.vim
git clone https://github.com/ervandew/supertab
git clone https://github.com/mkitt/tabline.vim
git clone https://github.com/vim-scripts/taglist.vim
git clone https://github.com/fatih/vim-go
git clone https://github.com/tomlion/vim-solidity

# install fzf
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install

if [ "$OS" == "Linux" ]; then
    sudo apt-get install cscope
    sudo apt-get install exuberant-ctags
    echo 'export FZF_DEFAULT_OPS="--extended"' >> ~/.bashrc
fi

if [ "$OS" == "Darwin" ]; then
    brew install ctags
    echo 'alias ctags="`brew --prefix`/bin/ctags"' >> ~/.bash_profile
    echo 'export FZF_DEFAULT_OPS="--extended"' >> ~/.bash_profile
    echo 'export FZF_DEFAULT_OPS="--extended"' >> ~/.zshrc
fi


# [vim-go] vim open a file and run: 
#  :GoInstallBinaries (install vim-go binaries)
# [rust.vim]
# rustup component add rustfmt (enable rust-vim autoformat)
