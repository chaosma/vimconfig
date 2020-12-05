#!/bin/bash

OS=$(uname -s)

# copy vimrc, suppose in vimconfig folder
cp vimrc ~/.vimrc
cp tmux.conf ~/.tmux.conf


# install plugin manager: pathogen
mkdir -p ~/.vim/autoload ~/.vim/bundle && \
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

# install vim plugins
cd ~/.vim/bundle
git clone https://github.com/mileszs/ack.vim
git clone https://github.com/vim-scripts/buftabs
git clone https://github.com/vim-scripts/cscope.vim
git clone https://github.com/junegunn/fzf.vim
git clone https://github.com/vim-scripts/netrw.vim
git clone https://github.com/rust-lang/rust.vim
git clone https://github.com/racer-rust/vim-racer
git clone https://github.com/ervandew/supertab
git clone https://github.com/mkitt/tabline.vim
git clone https://github.com/vim-scripts/taglist.vim
git clone https://github.com/fatih/vim-go
git clone https://github.com/prettier/vim-prettier
git clone https://github.com/tomlion/vim-solidity
git clone https://github.com/christoomey/vim-tmux-navigator

# install fzf
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install

if [ "$OS" == "Linux" ]; then
    cp .zshrc_linux ~/.zshrc
    sudo apt-get install cscope
    sudo apt-get install exuberant-ctags
    sudo apt-get install zsh
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
fi

if [ "$OS" == "Darwin" ]; then
    cp .zshrc_mac ~/.zshrc
    brew install zsh
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
fi

# install nvm 
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.37.2/install.sh | bash
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
# install node
nvm install node
# install yarn
curl -o- -L https://yarnpkg.com/install.sh | bash
echo 'export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"' >> ~/.zshrc



# install prettier
yarn global add prettier

# install racer (for vim)
#cargo +nightly install racer
#rustup component add rustfmt

# [vim-go] vim open a file and run: 
#  :GoInstallBinaries (install vim-go binaries)
# [rust.vim]
# rustup component add rustfmt (enable rust-vim autoformat)
