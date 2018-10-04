# VIM

## Purpose
    I will share vimrc file, and talk some plugins about vim that look likes a Python IDE.

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

#### ctags

```
brew install ctags
```

## Improve Key by [karabiner](https://pqrs.org/osx/karabiner/)
- exchange esc and Caps
- set left arrow to Ctrl
- set right option to left arrow

## How To Use
- pass
