call plug#begin('~/.config/nvim/bundle')
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'scrooloose/nerdTree'
Plug 'easymotion/vim-easymotion'
Plug 'jiangmiao/auto-pairs'
Plug 'mhinz/vim-signify'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rhubarb'
Plug 'junegunn/gv.vim'
call plug#end()

set nocompatible
set showmatch
set ignorecase
set smartcase
set incsearch
set mouse=v
set hlsearch
set nobackup
set nowritebackup
set noswapfile
set tabstop=4
set softtabstop=4
set expandtab
set shiftwidth=4
set autoindent
set number relativenumber
set nu ru
set background=dark
set signcolumn=yes
set updatetime=300
set clipboard=unnamedplus
set noshowmode
set wildmode=longest,list
set cc=80
filetype plugin indent on
syntax on

let mapleader = "\<Space>"

nmap <C-n> :NERDTreeToggle<CR>

map <Leader> <Plug>(easymotion-prefix)

" Theme
colorscheme default
