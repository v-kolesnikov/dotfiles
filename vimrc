set nocompatible
filetype off

let mapleader=","

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'

Plugin 'tpope/vim-bundler'
Plugin 'tpope/vim-commentary'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-git'
Plugin 'tpope/vim-rails'
Plugin 'tpope/vim-repeat'
Plugin 'tpope/vim-rvm'
Plugin 'tpope/vim-sensible'
Plugin 'tpope/vim-surround'

Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic'

Plugin 'bling/vim-airline'
Plugin 'majutsushi/tagbar'
Plugin 'mbbill/undotree'

" Languages support
Plugin 'chase/vim-ansible-yaml'
Plugin 'kchmck/vim-coffee-script'
Plugin 'othree/html5.vim'

" Themes
Plugin 'nanotech/jellybeans.vim'

call vundle#end()

filetype plugin indent on

set cursorline
set hidden
set nowrap
set number
set tabstop=4
set shiftwidth=4

set t_Co=256
colorscheme jellybeans

nmap <F8> :TagbarToggle<CR>
nnoremap <F5> :UndotreeToggle<cr>

" Map ctrl-movement keys to window switching
map <C-k> <C-w><Up>
map <C-j> <C-w><Down>
map <C-l> <C-w><Right>
map <C-h> <C-w><Left>

" upper/lower word
nmap <leader>u mQviwU`Q
nmap <leader>l mQviwu`Q

nmap <C-\> :NERDTreeFind<CR>
nmap <silent> <leader><leader> :NERDTreeToggle<CR>
let NERDTreeIgnore = ['\.pyc$']

let g:syntastic_ruby_checkers = ['rubocop', 'mri']

au FileType ruby setl sw=2 sts=2 et
au FileType javascript setl sw=2 sts=2 et
au FileType yaml setl sw=2 sts=2 et

