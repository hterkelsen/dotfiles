set nocompatible

" vundle
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'dart-lang/dart-vim-plugin'
Plugin 'kien/ctrlp.vim'
call vundle#end()

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

nnoremap <c-h> <c-w>h
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-l> <c-w>l

" colors
set t_Co=256
set background=dark

