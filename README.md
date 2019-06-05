# nvim-plugs
Some vim plugs on neovim and its show on MacOS. I will share vimrc file, then talk and show some plugs about nvim on MacOS, so that it look likes a compute language(Python) IDE.


## Plugs List
```
" About themes
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'mhinz/vim-startify' " cowsay and 数字键打开历史文件
Plug 'Yggdroot/indentLine' "缩进层次性感线条
Plug 'morhetz/gruvbox'
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'w0ng/vim-hybrid'
Plug 'tomasr/molokai'
```
![themes.gif](./gifs/themes.gif)

```
" About efficiency
Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-surround'  "cs.., ds., ys..
Plug 'tpope/vim-repeat' " 使得'.' 操作能重复上次的 cs.., ds., ys..
Plug 'easymotion/vim-easymotion'  " <leader><leader>f,t <leader><leader>j,k,e,w <leader><leader>s
Plug 'terryma/vim-multiple-cursors'  " ctrl+n, ctrl+p, ctrl+x, Esc
Plug 'honza/vim-snippets'  " ctrl+j, ctrl+k, Esc
Plug 'SirVer/ultisnips' " 代码片段 配合vim-snippets and coc-nvim
Plug 'tpope/vim-commentary' " gcc 注释单行，gc 注释选中的行
Plug 'w0rp/ale' " 代码静态检查，代码格式修正
Plug 'neoclide/coc.nvim', {'tag': '*', 'do': './install.sh'} " 代码补全
Plug 'python-mode/python-mode', { 'for': 'python', 'branch': 'develop' } "写python语言的各种操作
Plug 'fatih/vim-go' " 写go语言各种操作...
```

```
" About assistance
Plug 'scrooloose/nerdtree' " 代码目录树，及结点的增删改查
Plug 'Konfekt/FastFold' "代码折叠
Plug 'mhinz/vim-signify' " Just for git, <leader>se <leader>sd <leader>st
Plug 'ludovicchabant/vim-gutentags' "ctag
Plug 'Yggdroot/LeaderF', { 'do': './install.sh' } " 异步文件糊糊搜索及类似文本搜索与跳转
Plug 'majutsushi/tagbar' " 代码函数变量预览
Plug 'lfv89/vim-interestingwords' " 高亮感兴趣的当前单词
Plug 'brooth/far.vim' " 批量修改
Plug 'rizzatti/dash.vim' " 静态文档工具Dash查询当前单词
Plug 'iamcco/markdown-preview.vim' " Vim写MarkDown并在浏览器同步并查看文档
Plug 'iandingx/leetcode.vim' " vim 登录leetcode愉快的刷题吧
```

## Experience this with docker
- TODO


## Install dependence software or python package
- [python3.6+](https://www.python.org/ftp/python/3.6.8/python-3.6.8-macosx10.9.pkg)
- ctags or universal-ctags # For install plug targar, `brew install ctags` or `brew install --HEAD universal-ctags/universal-ctags/universal-ctags`
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

## Show it
![Show it](./gifs/nvim.gif)
