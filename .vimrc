set nocompatible

" Vundle
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'dart-lang/dart-vim-plugin'
Plugin 'kien/ctrlp.vim'
call vundle#end()

" Normal
filetype plugin indent on
syntax on
set number
set hlsearch
let mapleader=','
set expandtab
set tabstop=2
set shiftwidth=2
set softtabstop=2
set autoindent

" jk to leave insert mode
imap jk <Esc>

" Pretty colors
set t_Co=256
set background=dark

" Bashlike file completion
set wildmode=longest,list,full
set wildmenu

" always reload files that changed on disk
set autoread
