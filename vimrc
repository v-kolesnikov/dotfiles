set nocompatible
filetype off

let mapleader=","

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'

Plugin 'bling/vim-airline'
Plugin 'chase/vim-ansible-yaml'
Plugin 'tpope/vim-bundler'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-git'
Plugin 'tpope/vim-rails'
Plugin 'tpope/vim-rvm'

Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic'
Plugin 'majutsushi/tagbar'

Plugin 'nanotech/jellybeans.vim'

call vundle#end()

filetype plugin indent on

set cursorline
set hidden
set nowrap
set number
set tabstop=4
set shiftwidth=4

colorscheme jellybeans

nmap <F8> :TagbarToggle<CR>

let g:syntastic_ruby_checkers = ['rubocop', 'mri']
