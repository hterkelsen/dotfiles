set nocompatible

" vundle
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'Valloric/YouCompleteMe'
Plugin 'dart-lang/dart-vim-plugin'
call vundle#end()

" work stuff
if filereadable(expand('~/.at_google'))
  " Google-only
  source ~/.vimrc_local
endif

" normal
filetype plugin indent on
syntax on
set number
set incsearch
set hlsearch
let mapleader=','
set expandtab
set smarttab
set tabstop=2
set shiftwidth=2
set softtabstop=2
set smartindent
set autoindent
set autoread
set wildmode=longest,list
set wildmenu
imap jk <esc>
nnoremap <leader><leader> <c-^>
set ignorecase
set smartcase

nnoremap <c-h> <c-w>h
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-l> <c-w>l

" colors
set t_Co=256
set background=dark

" dart sdk location
let g:ycm_dart_sdk_path='/usr/local/google/home/het/.dvm/darts/1.18.0-dev.2.0'

" youcompleteme disable gutter
let g:ycm_enable_diagnostic_signs = 0

nmap <c-]> :YcmCompleter GoToDefinition<cr>
