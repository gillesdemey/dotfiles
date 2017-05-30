set nocompatible
filetype off

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim' " let Vundle manage Vundle

Plugin 'dracula/vim'
Plugin 'tpope/vim-fugitive'
Plugin 'wincent/command-t'

call vundle#end()
filetype plugin on

" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal

colors dracula
syntax on
set number
set ttyfast
set gdefault
set encoding=utf-8 nobomb
set clipboard=unnamed
set cursorline
set tabstop=2
set lcs=tab:▸\ ,trail:·,nbsp:·
set list
set hlsearch
set ignorecase
set incsearch
set laststatus=2
set mouse=a
set noerrorbells
set showmode
set title
set showcmd

" Centralize backups, swapfiles and undo history
" set backupdir=~/.vim/backups
set directory=~/.vim/swaps

" Strip trailing whitespace (,ss)
function! StripWhitespace()
  let save_cursor = getpos(".")
  let old_query = getreg('/')
  :%s/\s\+$//e
  call setpos('.', save_cursor)
  call setreg('/', old_query)
endfunction
noremap <leader>ss :call StripWhitespace()<CR>
