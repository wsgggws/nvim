# My-Neovim-Configurations
Some vimscript plugines and its configuration on neovim and its show on MacOS. so that it look likes a compute language(Python) IDE when you write code by using nvim.


## Config
- Neovim
- Python3.6.8
- Yarn
- Nodejs


## Plugs List
### Themes
```
" About themes
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'mhinz/vim-startify' " cowsay and 数字键打开历史文件
Plug 'Yggdroot/indentLine' "缩进层次性感线条
Plug 'lfv89/vim-interestingwords' " 高亮感兴趣的当前单词
Plug 'dracula/vim', { 'as': 'dracula' } "这3种主题我很钟爱dracula
Plug 'morhetz/gruvbox'
Plug 'w0ng/vim-hybrid'
```
![themes.gif](./gifs/themes.gif)

```
" About efficiency
Plug 'jiangmiao/auto-pairs' "自动匹配成对字符如括号等
Plug 'tpope/vim-surround'  "cs.., ds., ys..
Plug 'tpope/vim-repeat' " 使得'.' 操作能重复上次的 cs.., ds., ys..
Plug 'easymotion/vim-easymotion'  " <leader><leader>f,t <leader><leader>j,k,e,w <leader><leader>s 快速移动到特定字符或者某单词句子首尾
Plug 'terryma/vim-multiple-cursors'  " ctrl+n, ctrl+p, ctrl+x 同时编辑多个位置, 首先使用*标记当前需要更改的, next, pre, cancle
Plug 'brooth/far.vim' " 批量修改
Plug 'honza/vim-snippets'  " ctrl+j, ctrl+k, 输入代码片段的关键字后, 使用这两个快捷键前进后退
Plug 'SirVer/ultisnips' " 代码片段 配合vim-snippets and coc-nvim
Plug 'tpope/vim-commentary' " gcc 注释单行，gc 注释选中的行
Plug 'w0rp/ale' " 代码静态检查，代码格式修正, 见配置并需要安装各语言依赖, 如flake8
Plug 'neoclide/coc.nvim', {'branch': 'release'} " 代码补全, 见配置并需要安装各语言依赖, 如coc-python
Plug 'python-mode/python-mode', { 'for': 'python', 'branch': 'develop' } "写python语言的各种操作, 见配置a
Plug 'rust-lang/rust.vim' "写Rust语言的
Plug 'timonv/vim-cargo'
Plug 'racer-rust/vim-racer'
Plug 'elzr/vim-json' "查看JSON格式
Plug 'iamcco/markdown-preview.vim' " Vim写MarkDown并在浏览器同步并查看文档
Plug 'mbbill/undotree' " :undotree 查看目前更记录
Plug 'rizzatti/dash.vim' " 静态文档工具Dash查询当前单词
```

```
" About assistance
Plug 'scrooloose/nerdtree' " 代码目录树，及结点的增删改查
Plug 'majutsushi/tagbar' " 代码函数变量预览
Plug 'farmergreg/vim-lastplace' " 重新打开文件时定位到上次关闭时的位置
Plug 'Konfekt/FastFold' " 代码折叠
Plug 'MattesGroeger/vim-bookmarks' " 书签
Plug 'vim-scripts/TaskList.vim' "<leader>td 中转到TODO, XXX等关键词所在的行
Plug 'mhinz/vim-signify' " Just for git, <leader>se <leader>sd <leader>st
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'itchyny/vim-cursorword' "给光标下的单词增加下滑线
Plug 'iandingx/leetcode.vim' " Vim愉快地在leetcode刷题吧
```


## Install dependence software or python3 package
- [python3.6+](https://www.python.org/ftp/python/3.6.8/python-3.6.8-macosx10.9.pkg)
- git # `brew install git`
- nodejs, yarn # For installing plug coc-nvim, `brew install nodejs` and  `brew install yarn`
- flake8, pylint # for checking python code , `pip3 install flake8 pylint`
- autopepe8, isort, black, yaps # For fixing python code to meet PEP8, `pip3 install autopepe8 isort black yapf`

## Install Neovim
See [Neovim Install](https://github.com/neovim/neovim/wiki/Installing-Neovim)
```
brew install --HEAD neovim
pip3 install neovim --upgrade
ln -s ~/.vim ~/.config/nvim
ln -s ~/.vimrc ~/.config/nvim/init.vim
alias vim='nvim'
alias vi='nvim'
```

## Install Plugs
- curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
- [vimrc](./vimrc) # cp vimrc ~/.vimrc 
- vim ~/.vimrc # :PlugInstall # :CocInstall coc-python # coc-gocode ...

## QA
##### MacOS Neovim Command+v粘贴复制好的中文出现乱码
- Item2 perference -> profiles -> Terminal -> Character encoding(UTF-8)
- Zsh(这需要非常注意,否则Command+V粘贴复制好的中文(使用p/P命令不会)会乱码)
    - export LC_ALL=en_US.UTF-8
    - export LANG=en_US.UTF-8
- vimrc
    - set fileencodings=utf-8,ucs-bom,gb18030,gbk,gb2312,cp936
    - set termencoding=utf-8
    - set encoding=utf-8

## Show it
![Show it](./gifs/nvim.gif)
