set nocompatible
filetype off

let mapleader=","

call plug#begin('~/.vim/plugged')

" General
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-dispatch'
Plug 'tpope/vim-endwise'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-git'
Plug 'neomake/neomake'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-surround'

" Search and navigation
Plug 'dyng/ctrlsf.vim'
Plug 'jlanzarotta/bufexplorer'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'jasoncodes/ctrlp-modified.vim'
Plug 'scrooloose/nerdtree'

" Autocomplete
Plug 'Shougo/neocomplete'
Plug 'Shougo/neosnippet'
Plug 'Shougo/neosnippet-snippets'

" Advanced
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'ConradIrwin/vim-bracketed-paste'
Plug 'airblade/vim-gitgutter'
Plug 'kassio/neoterm'
Plug 'majutsushi/tagbar'
Plug 'janko-m/vim-test'
Plug 'jgdavey/tslime.vim'
Plug 'mbbill/undotree'
" Plug 'Valloric/MatchTagAlways'
Plug 'terryma/vim-multiple-cursors'
Plug 'Shougo/vimproc.vim'
Plug 'kana/vim-textobj-user'

" Tools integration
Plug 'hashivim/vim-vagrant'
" Plug 'Floobits/floobits-vim'
Plug 'wfleming/vim-codeclimate'

" Languages support
Plug 'chase/vim-ansible-yaml'
Plug 'kchmck/vim-coffee-script'
Plug 'othree/html5.vim'
Plug 'tpope/vim-haml'
Plug 'tpope/vim-markdown'
Plug 'slim-template/vim-slim'
Plug 'tmux-plugins/vim-tmux'
Plug 'Glench/Vim-Jinja2-Syntax'
Plug 'lmeijvogel/vim-yaml-helper'
Plug 'kylef/apiblueprint.vim'
Plug 'IN3D/vim-raml'

" Clojure
Plug 'guns/vim-clojure-highlight'
Plug 'guns/vim-clojure-static'
Plug 'guns/vim-slamhound'
Plug 'tpope/vim-classpath'
Plug 'tpope/vim-fireplace'
Plug 'tpope/vim-salve'
Plug 'venantius/vim-eastwood'
Plug 'venantius/vim-cljfmt'
Plug 'vim-scripts/paredit.vim'

" Elixir
Plug 'elixir-lang/vim-elixir'
Plug 'slashmili/alchemist.vim'

" " Erlang
" Plug 'vim-erlang/vim-erlang-runtime'
" Plug 'vim-erlang/vim-erlang-compiler'
" Plug 'vim-erlang/vim-erlang-omnicomplete'
" Plug 'vim-erlang/vim-erlang-tags'

" " Haskell
" Plug 'neovimhaskell/haskell-vim'
" Plug 'eagletmt/ghcmod-vim'
" Plug 'eagletmt/neco-ghc'
" Plug 'Twinside/vim-hoogle'
" Plug 'mpickering/hlint-refactor-vim'

" JavaScript
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'mtscout6/vim-cjsx'
Plug 'moll/vim-node'

" Ruby, Rails
Plug 'tpope/vim-bundler'
Plug 'tpope/vim-rails'
Plug 'vim-ruby/vim-ruby'
Plug 'sunaku/vim-ruby-minitest'
Plug 'thoughtbot/vim-rspec'
Plug 'tpope/vim-rvm'
Plug 'p0deje/vim-ruby-interpolation'

" " Tags support
" Plug 'xolox/vim-misc'
" Plug 'xolox/vim-easytags'

" Themes
Plug 'nanotech/jellybeans.vim'
let g:jellybeans_use_term_background_color = 1

call plug#end()

filetype plugin indent on

set lazyredraw
set cursorline
set hidden
set nowrap
set number
set hlsearch
set ignorecase
set smartcase
set tabstop=4
set shiftwidth=4
set expandtab

set splitbelow
set splitright
set diffopt+=vertical

set nobackup
set nowb
set noswapfile

set t_Co=256
colorscheme jellybeans

" The Silver Searcher
if executable('ag')
  " Use ag over grep
  set grepprg=ag\ --nogroup\ --nocolor

  " Use ag in CtrlP for listing files.
  " Lightning fast and respects .gitignore
  let g:ctrlp_user_command = 'ag -l --nocolor -g "" %s'

  " ag is fast enough that CtrlP doesn't need to cache
  let g:ctrlp_use_caching = 0
endif

let g:ctrlp_regexp = 1
" ================ Persistent Undo ==================
" Keep undo history across sessions, by storing in file.
" Only works all the time.
if has('persistent_undo')
  silent !mkdir ~/.vim/backups > /dev/null 2>&1
  set undodir=~/.vim/backups
  set undofile
endif

" ==================== KeyMap ========================
nmap <F8> :TagbarToggle<CR>
nnoremap <F5> :UndotreeToggle<cr>
nnoremap K :grep! "\b<C-R><C-W>\b"<CR>:cw<CR>

" Map ctrl-movement keys to window switching
map <C-k> <C-w><Up>
map <C-j> <C-w><Down>
map <C-l> <C-w><Right>
map <C-h> <C-w><Left>
nnoremap <silent> <bs> <C-w><Left>

" vim-test mapping
nmap <silent> <leader>t :TestNearest<CR>
nmap <silent> <leader>T :TestFile<CR>
nmap <silent> <leader>a :TestSuite<CR>
nmap <silent> <leader>g :TestVisit<CR>
let test#strategy = "neoterm"

set completefunc=syntaxcomplete#Complete

" Clojure
nmap <Leader>r :RunTests<CR>
autocmd User FireplacePreConnect call fireplace#register_port_file(expand('./nrepl-port'), '/')

" NERDTree
nmap <C-\> :NERDTreeFind<CR>
nmap <silent> <leader><leader> :NERDTreeToggle<CR>
let NERDTreeIgnore = ['\.pyc$']

" upper/lower word
nmap <leader>u mQviwU`Q
nmap <leader>l mQviwu`Q

nmap <silent> // :nohlsearch<CR>
noremap ,h1 :set hlsearch! hlsearch?<CR>

" set text wrapping toggles
nmap <silent> <leader>tw :set invwrap<CR>:set wrap?<CR>

" ctrlp git modified
map <Leader>m :CtrlPModified<CR>
map <Leader>M :CtrlPBranch<CR>

" CtrlSF mapping
nmap     <C-F>f <Plug>CtrlSFPrompt
vmap     <C-F>f <Plug>CtrlSFVwordPath
vmap     <C-F>F <Plug>CtrlSFVwordExec
nmap     <C-F>n <Plug>CtrlSFCwordPath
nmap     <C-F>p <Plug>CtrlSFPwordPath
nnoremap <C-F>o :CtrlSFOpen<CR>
nnoremap <C-F>t :CtrlSFToggle<CR>
inoremap <C-F>t <Esc>:CtrlSFToggle<CR>

" === Neomake config ===
let g:neomake_javascript_enabled_makers = ['eslint']

autocmd! BufWritePost * Neomake
" === End Neomake config ===

let g:buffergator_viewport_split_policy = "B"
let g:buffergator_sort_regime = "mru"

let g:markdown_fenced_languages = ['clojure', 'ruby']

let g:easytags_async = 1

" Allows you to enter sudo pass and save the file
" when you forgot to open your file with sudo
cmap w!! %!sudo tee > /dev/null null%

" Allow to copy/paste between VIM instances
" copy the current visual selection to ~/.vbuf
vmap <Leader>y :w! ~/.vbuf<CR>
" copy the current line to the buffer file if no visual selection
nmap <Leader>y :.w! ~/.vbuf<CR>
" paste the contents of the buffer file
nmap <Leader>p :r ~/.vbuf<CR>

set pastetoggle=<F2>

" Automatically removing all trailing whitespace
autocmd BufWritePre * :%s/\s\+$//e

au BufRead,BufNewFile {Capfile,Gemfile,Guardfile,Vagrantfile,*.prawn} set ft=ruby
au BufRead,BufNewFile {.babelrc,.eslintrc} set ft=json

au BufRead,BufNewFile *.md setlocal spell
au FileType gitcommit setlocal spell

au FileType ruby setl sw=2 sts=2 et
au FileType javascript setl sw=2 sts=2 et
au FileType yaml setl sw=2 sts=2 et

" Disable haskell-vim omnifunc
let g:haskellmode_completion_ghc = 0

" Enable omni completion.
autocmd FileType css            setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType haskel         setlocal omnifunc=necoghc#omnifunc
autocmd FileType html,markdown  setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript     setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python         setlocal omnifunc=pythoncomplete#Complete
autocmd FileType xml            setlocal omnifunc=xmlcomplete#CompleteTags

command J :%!python -mjson.tool
