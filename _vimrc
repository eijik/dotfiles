set nocompatible
filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

"set cursorline
set ignorecase
set smartcase
"set wildmenu
"set smartindent
"set wrap

Bundle 'tpope/vim-fugitive'
Bundle 'tpope/vim-rails'
Bundle 'tpope/vim-haml'
Bundle 'bbommarito/vim-slim'
Bundle 'kchmck/vim-coffee-script'

"call pathogen#helptags()
"call pathogen#infect()
"call pathogen#runtime_append_all_bundles()

filetype plugin indent on

colorscheme vividchalk  
set number
highlight LineNr term=standout cterm=NONE ctermfg=DarkGrey ctermbg=NONE gui=NONE guifg=DarkGrey guibg=NONE
set tabstop=2 shiftwidth=2 softtabstop=0
set expandtab              
"set autoindent 
set showmatch
set showmode
set incsearch
"set list
set hlsearch
set showcmd
set clipboard=unnamed,autoselect
set ruler
set nowrapscan


"set filetype plugin indent on

if has("autocmd")
    " ファイルタイプ別インデント、プラグインを有効にする
    filetype plugin indent on
    " カーソル位置を記憶する
    autocmd BufReadPost *
        \ if line("'\"") > 0 && line("'\"") <= line("$") |
        \   exe "normal g`\"" |
        \ endif
endif
" バックスペースでなんでも消せるように
set backspace=indent,eol,start"set wildmenu
" コマンド補完を強化
syntax on
filetype plugin indent on
map , <Leader>

set encoding=utf-8
set fileencodings=ucs-bom,utf-8,iso-2022-jp-3,iso-2022-jp,eucjp-ms,euc-jisx0213,euc-jp,sjis,cp932

