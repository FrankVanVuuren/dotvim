set nocompatible
execute pathogen#infect()
filetype off
set fileformats=unix,dos
set fileformat=unix
set encoding=utf-8
set fileencodings=utf-8
set laststatus=2
syntax enable
filetype plugin indent on
set bg="dark"
colorscheme gotham
set nowrap
set number
syntax on
set smartindent
set tabstop=2
set shiftwidth=2
set expandtab
set softtabstop=2
set backspace=indent,eol,start
set showcmd

" space is my leader
let mapleader = " "

" FUCK backup files
set noswapfile
set nobackup

" custom keymaps
nmap <leader><leader> <Plug>(easymotion-s)
nmap <leader>w <C-W>
nmap <leader>h <<
  vmap <leader>h <
  nmap <leader>j <C-D>
nmap <leader>l >>
vmap <leader>l >
nmap <leader>k <C-U>
nmap <leader>p "*p
nmap <leader>P "*P
nmap <leader>y "*y
noremap <leader>rr :source $MYVIMRC<CR>
noremap <leader>tn :NERDTreeToggle<CR>
nnoremap <A-j> :m .+1<CR>==
vnoremap <A-j> :m .+1<CR>==
vnoremap <A-j> :m '>+1<CR>gv=gv
vnoremap <A-k> :m '<-2<CR>gv=gv
imap jj <Esc>
map / <Plug>(incsearch-forward)
map ? <Plug>(incsearch-backward)

" ctrlp configuration
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git'

" rainbow configuration
let g:rainbow_active = 1

" lightline configuration
let g:lightline = {
  \ 'colorscheme': 'gotham',
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

if has('gui_running')
  set guifont=Monoid:h9
  " edit gvim to be minimalistic
  set guioptions-=m  "remove menu bar
  set guioptions-=T  "remove tool bar
  set guioptions-=r  "remove right-hand scroll bar
  set guioptions-=e  "remove tab bar
  set guioptions-=L  "remove left-hand scroll bar
  set guioptions-=e  "remove tab-pages
endif
