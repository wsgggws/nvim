call plug#begin('~/.vim/plugged')

Plug 'junegunn/vim-plug' "for :hlep vim-plug

" About themes
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'mhinz/vim-startify' " cowsay and 数字键打开历史文件
Plug 'Yggdroot/indentLine' "缩进层次性感线条
Plug 'lfv89/vim-interestingwords' " 高亮感兴趣的当前单词
Plug 'kien/rainbow_parentheses.vim'
Plug 'crusoexia/vim-dracula'
Plug 'morhetz/gruvbox'

" About efficiency
Plug 'jiangmiao/auto-pairs' "自动匹配成对字符如括号等
Plug 'tpope/vim-surround'  "cs.., ds., ys..
Plug 'tpope/vim-repeat' " 使得'.' 操作能重复上次的 cs.., ds., ys..
Plug 'easymotion/vim-easymotion'  " ss 快速移动到特定字符
Plug 'terryma/vim-multiple-cursors'  " ctrl+n, ctrl+p, ctrl+x 同时编辑多个位置, 首先使用*标记当前需要更改的, next, pre, cancle
Plug 'brooth/far.vim' " 批量修改
Plug 'honza/vim-snippets'  " ctrl+j, ctrl+k, 输入代码片段的关键字后, 使用这两个快捷键前进后退
Plug 'SirVer/ultisnips' " 代码片段 配合vim-snippets and coc-nvim
Plug 'tpope/vim-commentary' " gcc 注释单行，gc 注释选中的行
Plug 'w0rp/ale' " 代码静态检查，代码格式修正, 见配置并需要安装各语言依赖, 如flake8
Plug 'neoclide/coc.nvim', {'branch': 'release'} " 代码补全, 见配置并需要安装各语言依赖, 如coc-python
Plug 'python-mode/python-mode', { 'for': 'python', 'branch': 'develop' } "写python语言的各种操作, 见配置a
Plug 'rust-lang/rust.vim' "写Rust语言的
Plug 'mattn/webapi-vim'
Plug 'timonv/vim-cargo'
Plug 'racer-rust/vim-racer'
Plug 'iamcco/mathjax-support-for-mkdp'
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app & yarn install'  } " Vim写MarkDown并在浏览器同步并查看文档
Plug 'mbbill/undotree' " :undotree 查看目前更记录
Plug 'rizzatti/dash.vim' " 静态文档工具Dash查询当前单词
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'elzr/vim-json' "查看JSON格式
Plug 'mattn/emmet-vim'  " HTML
Plug 'pangloss/vim-javascript'
Plug 'posva/vim-vue'  " Vuejs

" About assistance
Plug 'scrooloose/nerdtree' " 代码目录树，及结点的增删改查
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'jistr/vim-nerdtree-tabs'
Plug 'majutsushi/tagbar' " 代码函数变量预览
Plug 'farmergreg/vim-lastplace' " 重新打开文件时定位到上次关闭时的位置
Plug 'romainl/vim-cool' " 当移动后取消所有search的高亮文本
Plug 'Konfekt/FastFold' " 代码折叠
Plug 'MattesGroeger/vim-bookmarks' " 书签
Plug 'vim-scripts/TaskList.vim' "<leader>td 中转到TODO, XXX等关键词所在的行
Plug 'mhinz/vim-signify' " Just for git, <leader>se <leader>sd <leader>st
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'itchyny/vim-cursorword' "给光标下的单词增加下滑线
Plug 'iandingx/leetcode.vim' " Vim愉快地在leetcode刷题吧

call plug#end()

" ------------------------------------------------
" For init leader key
" ------------------------------------------------
filetype indent on
set nocompatible
scriptencoding utf-8
let mapleader=","  " 使用','替换默认的'\'作为leader键
let g:mapleader=","
nmap <Leader>v :so $MYVIMRC<CR>


set termguicolors
set background=light
colorscheme gruvbox
highlight Normal ctermbg=None
highlight clear SignColumn

" set background=dark
" colorscheme dracula
" let g:dracula_italic = 1
" highlight Normal ctermbg=None
" highlight clear SignColumn
" let g:airline_theme='base16'

" set termguicolors
" set background=light
" colorscheme NeoSolarized
" let g:neosolarized_visibility = "high"
" let g:neosolarized_contrast = "high"
" let g:neosolarized_italic = 1
" set t_8f=^[[38;2;%lu;%lu;%lum
" set t_8b=^[[48;2;%lu;%lu;%lum
" let g:airline_theme='solarized'

" ------------------------------------------------
" For handsome
" 有点小多，直接拿来用
" ------------------------------------------------
set complete-=i   " disable scanning included files
set complete-=t   " disable searching tags
set autoindent
set smartindent
" autocmd BufRead,BufNewFile *.py set et ts=4 sw=4 sts=4
autocmd FileType php,python,c,java,perl,shell,bash,vim,ruby,cpp,rust set ai et ts=4 sw=4 sts=4
autocmd FileType javascript,html,css,xml,vue set ai et ts=2 sw=2 sts=2
autocmd FileType go set ai noet ts=8 sw=8 sts=8
set smarttab        " 根据文件中其他地方的缩进空格个数来确定一个 tab 是多少个空格
" set whichwrap=b,s,h,l,<,>,[,]   " Backspace and cursor keys wrap too
set list  " 开启对于制表符（tab）、行尾空格符（trail）、行结束符（eol）等等特殊符号的回显
set listchars=tab:›\ ,trail:•,extends:#,nbsp:. " Highlight problematic whitespace
set backspace=2     " 解决插入模式下delete/backspce键失效问题
set backspace=indent,eol,start  " “缩进位置”，“行结束符”，“段首”。这样设置可以使得 backspace 键在这三个特殊的位置也能进行回删动作。
set shiftround
set cursorline
set textwidth=127
set wrap
set linebreak
set wrapmargin=1
set ruler

" edit
set nobackup
set noswapfile
set undofile
set undodir=~/.vim/.undo// "需要mkdir这个目录
set autochdir
set fileencodings=utf-8,ucs-bom,gb18030,gbk,gb2312,cp936
set termencoding=utf-8
set encoding=utf-8

set title                " change the terminal's title
set showcmd         " 在屏幕右下角显示未完成的指令输入
set wildmenu                    " Show list instead of just completing
set wildmode=list:longest,full  " Command <Tab> completion, list matches, then longest common part, then all.
set showmatch       " “设置匹配模式，类似当输入一个左括号时会匹配相应的那个右括号
set smartcase       " Case insensitive searches become sensitive with capitals
set relativenumber  " 设置相对显示number instead of 'set nu'
set number          " 在当前行显示当前行数

set ignorecase
set incsearch       " Incremental search
set hlsearch        " High light search
exec "nohlsearch"

set scrolloff=8
set sidescrolloff=15
set sidescroll=1
set cmdheight=2          " 命令行（在状态行下）的高度，默认为1，这里是2
set laststatus=2         " 总是显示状态行

set autoread
set autowrite       " Automatically save before commands like :next and :make
set history=1000         " remember more commands and search history
set undolevels=1000      " use many muchos levels of undo

set novisualbell           " don't beep
set noerrorbells         " don't beep
set t_vb=
set mouse=a              " 启动所有模式, vim接管了鼠标的控制
set mousehide            " "输入隐藏鼠标
set ttimeout             " 完整的按键码的超时时间
set ttimeoutlen=100


" ------------------------------------------------
" For airline
" ------------------------------------------------
let g:airline#extensions#ale#enabled = 1
let g:airline#extensions#branch#enabled = 1
let g:airline#extensions#ale#enabled = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tagbar#enabled = 1
let g:airline_skip_empty_sections = 1
" let g:airline_theme='lucius'
" let g:airline_theme='dracula'

" ------------------------------------------------
" For vim-cool
" ------------------------------------------------
let g:CoolTotalMatches = 1

" ------------------------------------------------
" For rainbow_parentheses.vim
" http://vimawesome.com/plugin/rainbow-parentheses-vim   花里胡哨的彩虹括号^_^
" http://www.wklken.me/posts/2015/06/07/vim-plugin-rainbowparentheses.html
" ------------------------------------------------
let g:rbpt_colorpairs = [
    \ ['brown',       'RoyalBlue3'],
    \ ['Darkblue',    'SeaGreen3'],
    \ ['darkgray',    'DarkOrchid3'],
    \ ['darkgreen',   'firebrick3'],
    \ ['darkcyan',    'RoyalBlue3'],
    \ ['darkred',     'SeaGreen3'],
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ['brown',       'firebrick3'],
    \ ['gray',        'RoyalBlue3'],
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ['Darkblue',    'firebrick3'],
    \ ['darkgreen',   'RoyalBlue3'],
    \ ['darkcyan',    'SeaGreen3'],
    \ ['darkred',     'DarkOrchid3'],
    \ ['red',         'firebrick3'],
    \ ]
let g:rbpt_max = 16
let g:rbpt_loadcmd_toggle = 0
au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces
" 不加入这行, 防止黑色括号出现, 很难识别
" \ ['black',       'SeaGreen3'],

" ------------------------------------------------
" For NerdTree
" ,te  打开或者关闭目录树, 使用m键可以 增删改查 文件目录结点：）
" ,gt 快速定位该文件所有目录树结点
" more see :help NerdTree
" ------------------------------------------------
nnoremap <leader>nt :NERDTreeToggle<CR> " t, T, s,gs, i,gi, p, P, I, q, <ctrl>+w+w, m, :help
nnoremap <leader>nf :NERDTreeFind<CR>
let g:nerdtree_tabs_open_on_gui_startup=0
let NERDTreeShowBookmarks=1
let NERDTreeIgnore=['\.py[cd]$', '\~$', '\.swo$', '\.swp$', '^\.git$', '^\.hg$', '^\.svn$', '\.bzr$']
let NERDTreeChDirMode=0
let NERDTreeQuitOnOpen=0
let NERDTreeMouseMode=2
let NERDTreeShowHidden=0
let NERDTreeKeepTreeInNewTab=1
let NERDTreeWinSize=40
autocmd BufEnter * if 0 == len(filter(range(1, winnr('$')), 'empty(getbufvar(winbufnr(v:val), "&bt"))')) | qa! | endif


" ------------------------------------------------
" For coc.nvim
" Ctrl+n, <TAB>, <S-TAB> 进行显示
" normal下 gd, gy, gi, gr 分别定位到definition, ...
" normal 下 K 查阅documentation
" more see :help coc
" ------------------------------------------------
set hidden
set nobackup
set nowritebackup
set cmdheight=2
set updatetime=300
set shortmess+=c
set signcolumn=yes
set completeopt=longest,menu
inoremap <silent><expr> <TAB>
    \ pumvisible() ? "\<C-n>" :
    \ <SID>check_back_space() ? "\<TAB>" :
    \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"
function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Remap keys for gotos
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

nnoremap <silent> K :call <SID>show_documentation()<CR>
function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction


" ------------------------------------------------
" For python-mode
" 使用python模式编写python代码，并禁用lint, flod, rope功能
" motion定义 [[, ]], [M, ]M 跳转到前后类，函数
" motion定义新文本对象 aM, aC, iM, iC, 如yaM,diC分表表示复制一个method, 删除一个Class
" 使用,r 运行当前python代码 (建议不要运行有输入的，或者超长时间超多输出的代码)
" more see :help pymode
" ------------------------------------------------
let g:pymode_python = 'python3'
let g:pymode_indent = 1
let g:pymode_motion = 1
let g:pymode_lint = 0
let g:pymode_folding = 0
let g:pymode_rope = 0
let g:pymode_breakpoint = 0
let g:pymode_run = 1
let g:pymode_run_bind = '<Leader>r'

" ------------------------------------------------
" For ale
" 使用 flake8 做python3的代码检查，pylint检查太严格
" 使用 autopep8, yapf等做代码修正，快捷键定义为 ,pe
" normal下sp, sn跳转到上一个，下一个错误，lc关闭或者打开错误列表
" more see :help ale
" ------------------------------------------------
let g:ale_linters_explicit = 1 "除g:ale_linters指定，其他不可用
let g:ale_linters = {
\   'cpp': ['cppcheck','clang','gcc'],
\   'c': ['cppcheck','clang', 'gcc'],
\   'python': ['flake8'],
\   'rust': [ 'cargo', 'rls', 'rustc' ],
\   'bash': ['shellcheck'],
\   'go': ['golint'],
\   'javascript': ['eslint'],
\}
let g:ale_linters_ignore = {'python': ['pylint']}
let g:ale_rust_rls_toolchain = 'nightly'
let g:ale_fixers = {
\   'python': ['autopep8', 'black', 'isort'],
\   'rust': ['rustfmt'],
\   'javascript': ['eslint'],
\   '*': ['remove_trailing_lines', 'trim_whitespace'],
\}
" let g:ale_set_hightlights = 1
let g:ale_change_sign_column_color = 0
let g:ale_sign_column_always = 0
let g:ale_linters_explicit = 1
let g:ale_echo_delay = 20
let g:ale_lint_delay = 500
let g:ale_echo_msg_format = '[%linter%] %code: %%s'
let g:ale_lint_on_text_changed = 'never'
let g:ale_lint_on_insert_leave = 0
let g:ale_lint_on_enter = 0
let g:ale_set_quickfix = 1
let g:ale_open_list = 1 "打开quitfix对话框
let g:ale_c_gcc_options = '-Wall -O2 -std=c99'
let g:ale_cpp_gcc_options = '-Wall -O2 -std=c++14'
let g:ale_c_cppcheck_options = ''
let g:ale_cpp_cppcheck_options = ''
nmap sp <Plug>(ale_previous_wrap)
nmap sn <Plug>(ale_next_wrap)
nnoremap <leader>at :ALEToggle<CR>
nnoremap <leader>af :ALEFix<cr>

" ------------------------------------------------
" For Fastflod
" ------------------------------------------------
set foldmethod=indent
set foldopen+=jump
set foldlevelstart=99
nmap zuz <Plug>(FastFoldUpdate)
let g:fastfold_savehook = 1
let g:fastfold_fold_command_suffixes =  ['x','X','a','A','o','O','c','C']
let g:fastfold_fold_movement_commands = [']z', '[z', 'zj', 'zk']
let g:markdown_folding = 1
let g:tex_fold_enabled = 1
let g:vimsyn_folding = 'af'
let g:xml_syntax_folding = 1
let g:javaScript_fold = 1
let g:sh_fold_enabled= 7
let g:ruby_fold = 1
let g:perl_fold = 1
let g:perl_fold_blocks = 1
let g:r_syntax_folding = 1
let g:rust_fold = 1
let g:php_folding = 1
let g:python_folding = 1


" ------------------------------------------------
" For Signify see :help Signify
" ------------------------------------------------
let g:signify_disable_by_default=1
nnoremap <leader>se :SignifyEnable<CR>
nnoremap <leader>st :SignifyToggle<CR>
nnoremap <leader>sd :SignifyDiff<CR>

" ------------------------------------------------
" For startify
" ------------------------------------------------
let g:startify_change_to_dir = 0

" ------------------------------------------------
"  For commentary
" ------------------------------------------------
autocmd FileType apache setlocal commentstring=#\ %s


" ------------------------------------------------
"  For fzf.vim
" ------------------------------------------------
"<Leader>f在当前目录搜索文件
nnoremap <silent> <Leader>f :Files<CR>
nnoremap <silent> <C-p> :Files<CR>
"<Leader>b切换Buffer中的文件
nnoremap <silent> <Leader>b :Buffers<CR>
nnoremap <silent> <Leader>rg :Rg<CR>
"<Leader>p在当前所有加载的Buffer中搜索包含目标词的所有行，:BLines只在当前Buffer中搜索
nnoremap <silent> <Leader>l :BLines<CR>
"<Leader>h在Vim打开的历史文件中搜索，相当于是在MRU中搜索，:History：命令历史查找
nnoremap <silent> <Leader>h :History<CR>
"调用Rg进行搜索，包含隐藏文件
command! -bang -nargs=* Rg
  \ call fzf#vim#grep(
  \   'rg --column --line-number --no-heading --color=always --smart-case '.shellescape(<q-args>), 1,
  \   fzf#vim#with_preview(), <bang>0)
let g:fzf_preview_window = 'right:50%'


" ------------------------------------------------
" For tagbar
" 使用 ,tt 打开或者关闭代码函数关键字等预览
" more see :help tagbar
" ------------------------------------------------
nnoremap <leader>tt :TagbarToggle<CR>

" ------------------------------------------------
" For dash.vim
" 使用 ,ds 在Dash中搜索当前光标下的关键字
" more see :help dash
" ------------------------------------------------
nmap <silent> <leader>ds <Plug>DashSearch

" ------------------------------------------------
" For bookmarks
" Add/remove bookmark at current line	mm	:BookmarkToggle
" Add/edit/remove annotation at current line	mi	:BookmarkAnnotate <TEXT>
" Jump to next bookmark in buffer	mn	:BookmarkNext
" Jump to previous bookmark in buffer	mp	:BookmarkPrev
" Show all bookmarks (toggle)	ma	:BookmarkShowAll
" Clear bookmarks in current buffer only	mc	:BookmarkClear
" Clear bookmarks in all buffers	mx	:BookmarkClearAll
" Move up bookmark at current line	[count]mkk	:BookmarkMoveUp [<COUNT>]
" Move down bookmark at current line	[count]mjj	:BookmarkMoveDown [<COUNT>]
" Move bookmark at current line to another line	[count]mg	:BookmarkMoveToLine <LINE>
" Save all bookmarks to a file		:BookmarkSave <FILE_PATH>
" Load bookmarks from a file		:BookmarkLoad <FILE_PATH>
" more see :help bookmarks
" ------------------------------------------------
highlight BookmarkSign ctermbg=NONE ctermfg=160
highlight BookmarkLine ctermbg=194 ctermfg=NONE

" ------------------------------------------------
" For dash.vim
" 使用 ,td 快速浏览及跳转TODO, XXX等关键词所在的行
" more see :help dash
" ------------------------------------------------
nmap <leader>tl <Plug>TaskList

" ------------------------------------------------
" For easymotion.vim
" 使用 ss 快速搜索某个字符
" more see :help easymotion
" ------------------------------------------------
nmap ss <Plug>(easymotion-s)


" ------------------------------------------------
" For ultisnips and coc-ultisnips and vim-snippets
" 使用Ctrl+j, Ctrl+k 作为snippets时的跳转键
" more see :help ultisnips and :help vim-snippets
" ------------------------------------------------
let g:UltiSnipsExpandTrigger="<c-j>"
let g:UltiSnipsJumpForwardTrigger="<c-j>"
let g:UltiSnipsJumpBackwardTrigger="<c-k>"


" ------------------------------------------------
" For Rust
" 使用gd, gs, gx时的跳转键
" more see :help ultisnips and :help vim-snippets
" ------------------------------------------------
au FileType rust nmap <leader>af :RustFmt<cr>
au FileType rust nmap <leader>r :RustRun<cr>
au FileType rust nmap <leader>p :RustPlay<cr>
au FileType rust nmap <leader>rt :RustTest<cr>
au FileType rust nmap gd <Plug>(rust-def)
au FileType rust nmap gs <Plug>(rust-def-split)
au FileType rust nmap gx <Plug>(rust-def-vertical)
au FileType rust nmap gt <Plug>(rust-def-tab)
au FileType rust nmap <leader>gd <Plug>(rust-doc)
" let g:racer_cmd = "/Users/hjtianvip/.cargo/bin/racer"
let g:racer_experimental_completer = 1
let g:racer_insert_paren = 1
let g:rust_clip_command = 'pbcopy'


" ------------------------------------------------
" For custom shortcuts
" ------------------------------------------------
" 在Insert, Visula, Normal模式下有不同的光标
if empty($TMUX)
  let &t_SI = "\<Esc>]50;CursorShape=1\x7"
  let &t_EI = "\<Esc>]50;CursorShape=0\x7"
  let &t_SR = "\<Esc>]50;CursorShape=2\x7"
else
  let &t_SI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=1\x7\<Esc>\\"
  let &t_EI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=0\x7\<Esc>\\"
  let &t_SR = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=2\x7\<Esc>\\"
endif

if $TERM_PROGRAM =~ "iTerm"
    let &t_SI = "\<Esc>]50;CursorShape=1\x7" " Vertical bar in insert mode
    let &t_EI = "\<Esc>]50;CursorShape=0\x7" " Block in normal mode
endif


" 使用系统粘贴板替换neovim的unnamepdplus
if has('clipboard')
  if has('unnamedplus')  " When possible use + register for copy-paste
    set clipboard=unnamed,unnamedplus
  else         " On mac and Windows, use * register for copy-paste
    set clipboard=unnamed
  endif
endif

" ------------------------------------------------
" ------------------------------------------------
nnoremap <space> za " zr zR zm zM
nnoremap <leader>so :normal A # noqa<CR>
vnoremap so :normal A # noqa<CR>
noremap <leader>w :w<cr>
" cnoremap w!! w !sudo tee % >/dev/null

noremap <leader>sl :vertical resize +3<CR>  " 行动分屏窗口的大小，以左上角为参考hjkl
noremap <leader>sh :vertical resize -3<CR>
noremap <leader>sj :resize +3<CR>
noremap <leader>sk :resize -3<CR>
noremap <leader>hh <C-w>h
noremap <leader>jj  <C-w>j
noremap <leader>kk <C-w>k
noremap <leader>ll <C-w>l

nnoremap [<space>  :<c-u>put! =repeat(nr2char(10), v:count1)<cr>'[
nnoremap ]<space>  :<c-u>put =repeat(nr2char(10), v:count1)<cr>
nnoremap Y y$
noremap j gj
noremap k gk
vnoremap < <gv
vnoremap > >gv
nmap <leader>ew :e %%
nmap <leader>es :sp %%
nmap <leader>ev :vsp %%

nnoremap <silent> <leader>/ :nohlsearch<CR>
cnoremap %% <C-R>=fnameescape(expand('%:h')).'/'<cr>
com! FormatJSONPy2Utf8 %!python -c "import json, sys, collections; print json.dumps(json.load(sys.stdin, object_pairs_hook=collections.OrderedDict), ensure_ascii=False, indent=2)"

" select last paste in visual mode, gv选择原始复制的文本, gb选择上一次粘贴的文本
nnoremap <expr> gb '`[' . strpart(getregtype(), 0, 1) . ']`'

let g:go_version_warning = 0

" ------------------------------------------------
" For themes
" 如果主题等写成前面效果不一致，那就写到最后面吧
" highlight Normal ctermbg=None 可以去除灰层
" higtlight clear SignColumn 可以使得SignColumn颜色主题与使用主题一致
" ------------------------------------------------

" ------------------------------------------------
" For recommand and suggestion
" ------------------------------------------------
" Recommand install neovim
" brew install --HEAD neovim
" pip3 install neovim --upgrade
" ln -s ~/.vim ~/.config/nvim
" ln -s ~/.vimrc ~/.config/nvim/init.vim
" alias vim='nvim'
" alias vi='nvim'
" alias v='nvim'

" see http://www.skywind.me/blog/archives/2084
" https://github.com/wsdjeg/vim-galore-zh_cn
" https://stackoverflow.com/questions/15277241/changing-vim-gutter-color for 'highlight clear SignColumn'
" ----------------END---------------------------------
