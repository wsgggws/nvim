# VIM

## Purpose
    I will share vimrc file, and talk some plugins about vim that look like a Python IDE.

## Install

#### vim

```
# for macOS
brew install vim
vim --version | grep +clipboard  # check 
# for Linux
apt-get install vim vim-gnome, vim-athena vim-gtx  
```

#### vundle

```
mkdir -p ~/.vim/bundle
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
```

#### YoucompleteMe

```
# It takes at least three minutes.
cd ~/.vim/bundle/
git clone https://github.com/Valloric/YouCompleteMe 
cd ~/.vim/bundle/YoucompleteMe
./install.py --clang-completer
git submodule update --init --recursive  # clone all submodule
./install.py --clang-completer  # again install it
```

#### vimrc

```
cp vimrc ~/.vimrc
vim ~/vimrc # :PluginInstall :qa
```

## How To Use
- pass
