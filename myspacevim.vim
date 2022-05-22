function! myspacevim#before() abort
    let g:mapleader = ','
endfunction

function! myspacevim#after() abort
    set ttimeout             " 完整的按键码的超时时间
    set ttimeoutlen=90
    set timeoutlen=280
    set smartindent
    set smarttab        " 根据文件中其他地方的缩进空格个数来确定一个 tab 是多少个空格
    set scrolloff=8
    set sidescrolloff=15
    set sidescroll=1
    set cmdheight=2         " 命令行（在状态行下）的高度，默认为1，这里是2
    set laststatus=2         " 总是显示状态行
    set history=1000         " remember more commands and search history
    set undolevels=1000      " use many muchos levels of undo

    highlight Normal guibg=NONE ctermbg=NONE
    highlight NonText guibg=NONE ctermbg=NONE
    highlight EndOfBuffer guibg=NONE ctermbg=NONE
    highlight clear SignColumn

    " 使用系统粘贴板替换neovim的unnamepdplus
    if has('clipboard')
      if has('unnamedplus')  " When possible use + register for copy-paste
        set clipboard=unnamed,unnamedplus
      else         " On mac and Windows, use * register for copy-paste
        set clipboard=unnamed
      endif
    endif

    let g:neomake_c_enabled_makers = ['clang']
    let g:neomake_python_enabled_makers = ['flake8']
    let g:neoformat_enabled_python = ['black', 'isort']
    let g:neoformat_python_black = {
    \ 'exe': 'black',
    \ 'stdin': 1,
    \ 'args': ['-l 120', '-q', '-'],
    \ }
    nmap Y y$

endfunction
