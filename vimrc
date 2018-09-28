set nocompatible

" Plugins
call plug#begin('~/.vim/plugged')
Plug 'natebosch/vim-lsc'
Plug 'dart-lang/dart-vim-plugin'
Plug 'christoomey/vim-tmux-navigator'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'google/vim-maktaba'
Plug 'google/vim-codefmt'
Plug 'google/vim-glaive'
Plug 'wellle/targets.vim'
call plug#end()

call glaive#Install()

" Work stuff
if filereadable(expand('~/.at_google'))
  " Google-only
  source ~/.vimrc_local
endif

" Defaults
filetype plugin indent on
syntax on
set number
set incsearch
set hlsearch
let g:mapleader=' '
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
set backspace=indent,eol,start

" Backups
set nobackup
set backupcopy=yes
let swpdir = expand('~/.vim/swp')
if !isdirectory(swpdir)
  call mkdir(swpdir)
endif
set directory=~/.vim/swp//

" Persistent undo
let undodir = expand('~/.vim/undo')
if !isdirectory(undodir)
  call mkdir(undodir)
endif
set undodir=~/.vim/undo
set undofile

" File/Buffer/Code navigation
nnoremap <leader>o :edit %:h<cr>
nnoremap <leader>N :Files<cr>
nnoremap <leader>F :Ag<cr>
nnoremap <leader>lr :History<cr>
nnoremap <leader>lb :Buffers<cr>
nnoremap <leader>lq :QuickFix<cr>
nnoremap <leader>ll :LocationList<cr>
nnoremap <leader>lh :Helptags<cr>
nnoremap <leader>x :bp\|bd #<cr>

" Colors
set t_Co=256
set background=dark
colorscheme solarized

" Language server plugin
let g:lsc_auto_map = v:true
let g:lsc_server_commands = {
    \ 'dart': 'google3_dart_language_server',
    \ 'python': 'pyls',
    \ 'bzl': '/google/bin/releases/grok/tools/kythe_languageserver --google3'
    \ }

nnoremap <leader>n :LSClientWorkspaceSymbol<cr>
nnoremap <leader>b :LSClientGoToDefinition<cr>
nnoremap <leader>B :LSClientFindReferences<cr>

" Code formatting
augroup autoformat_settings
  autocmd FileType bzl AutoFormatBuffer buildifier
  autocmd FileType c,cpp,proto,javascript AutoFormatBuffer clang-format
  autocmd FileType dart AutoFormatBuffer dartfmt
  autocmd FileType go AutoFormatBuffer gofmt
  autocmd FileType java AutoFormatBuffer google-java-format
  autocmd FileType python AutoFormatBuffer yapf
augroup END
