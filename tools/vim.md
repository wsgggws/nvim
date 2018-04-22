# VIM

## Purpose
    I will share vimrc file, and talk some plugins about vim that look like a Python IDE.

## Install

#### vim

```
# for macOS
brew install vim
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
git clone https://github.com/Valloric/YouCompleteMe ~/.vim/bundle/
cd ~/.vim/bundle/YoucompleteMe
./install.py --clang-completer
```

#### vimrc

```
cp vimrc ~/.vimrc
vim ~/vimrc # :PluginInstall :qa
```

## How To Use
- pass
