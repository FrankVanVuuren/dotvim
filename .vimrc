" No backsies
set nocompatible

" Every Vim on every OS will look in .vim
set runtimepath+=$HOME/.vim

" Defined plugin location and plugins
call plug#begin('~/.vim/bundle')
Plug 'whatyouhide/vim-gotham'
Plug 'xero/sourcerer.vim'
Plug 'altercation/vim-colors-solarized'
Plug 'tpope/vim-fugitive'
Plug 'pangloss/vim-javascript'
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-surround'
Plug 'jiangmiao/auto-pairs'
Plug 'kien/ctrlp.vim'
Plug 'scrooloose/nerdtree'
Plug 'mattn/emmet-vim'
Plug 'haya14busa/incsearch.vim'
Plug 'itchyny/lightline.vim'
Plug 'luochen1990/rainbow'
Plug 'wavded/vim-stylus'
Plug 'digitaltoad/vim-pug'
Plug 'kchmck/vim-coffee-script'
call plug#end()

" Let lame terminal emulators use alt key bindings
let c='a'
while c <= 'z'
  exec "set <A-".c.">=\e".c
  exec "imap \e".c." <A-".c.">"
  let c = nr2char(1+char2nr(c))
endw

set timeout ttimeoutlen=50

" stuff
set encoding=utf-8
set fileencodings=utf-8
set background=dark
let g:solarized_termcolors=256
colorscheme gotham256
set nowrap
set number
syntax on
set smartindent
set tabstop=2
set shiftwidth=2
set expandtab
set softtabstop=2
set hidden
set autoread
set showcmd

" highlight current line
au WinLeave * set nocursorline
au WinEnter * set cursorline
set cursorline

" Don't highlight matching paren
" NoMatchParen (@fixme doesnt work for some reason)

" space is my leader
let mapleader = " "

" FUCK backup files
set noswapfile
set nobackup

" custom keymaps
imap <expr> <tab> emmet#expandAbbrIntelligent("\<tab>")
nmap <leader>w <C-W>
nmap <leader>h <<
vmap <leader>h <
nmap <leader>j <C-D>
nmap <leader>l >>
vmap <leader>l >
nmap <leader>k <C-U>
nmap <leader>p "*p
nmap <leader>P "+P
nmap <leader>y "*y
nmap <leader>Y "+y
nmap <leader>q :q<CR>
nmap <leader>rc :tabe ~/.vimrc<CR>
nmap <leader>rr :source $MYVIMRC<CR>
nmap <leader><space> :CtrlPMixed<CR>
nmap <leader>ri :PlugInstall<CR>
nmap <leader>tn :NERDTreeToggle<CR>
nmap <leader>tr :RainbowToggle<CR>
nnoremap <A-j> :m .+1<CR>==
nnoremap <A-k> :m .-2<CR>==
inoremap <A-j> <Esc>:m .+1<CR>==gi
inoremap <A-k> <Esc>:m .-2<CR>==gi
vnoremap <A-j> :m '>+1<CR>gv=gv
vnoremap <A-k> :m '<-2<CR>gv=gv
imap jj <Esc>
map / <Plug>(incsearch-forward)
map ? <Plug>(incsearch-backward)

" ctrlp configuration
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git'

" rainbow configuration
let g:rainbow_active = 0 

" lightline configuration
let g:lightline = {
  \ 'colorscheme': 'gotham256',
  \ 'active': {
  \   'left': [ [ 'mode'],
  \             [ 'fugitive', 'readonly', 'filename', 'modified' ] ]
  \ },
  \ 'component': {
  \   'readonly': '%{&filetype=="help"?"":&readonly?"⭤":""}',
  \   'modified': '%{&filetype=="help"?"":&modified?"+":&modifiable?"":"-"}',
  \   'fugitive': '%{exists("*fugitive#head")?fugitive#head():""}'
  \ },
  \ 'component_visible_condition': {
  \   'readonly': '(&filetype!="help"&& &readonly)',
  \   'modified': '(&filetype!="help"&&(&modified||!&modifiable))',
  \   'fugitive': '(exists("*fugitive#head") && ""!=fugitive#head())'
  \ },
  \ }

" gui settings
if has('gui_running')
  set guifont=Ubuntu\ Mono
  
  set guioptions-=m  "remove menu bar
  set guioptions-=T  "remove tool bar
  set guioptions-=r  "remove right-hand scroll bar
  set guioptions-=e  "remove tab bar
  set guioptions-=L  "remove left-hand scroll bar
  set guioptions-=e  "remove tab-pages
endif
