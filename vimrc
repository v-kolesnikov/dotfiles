set nocompatible
filetype off

let mapleader=","

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'

Plugin 'tpope/vim-git'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic'

Plugin 'tpope/vim-bundler'
Plugin 'tpope/vim-rails'
Plugin 'tpope/vim-rvm'

Plugin 'nanotech/jellybeans.vim'

call vundle#end()

filetype plugin indent on

set cursorline
set hidden
set nowrap
set number
set tabstop=4

colorscheme jellybeans
