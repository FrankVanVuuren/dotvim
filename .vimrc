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

" windows only
if has("win32")
  set swapfile
  set dir=%TEMP%\
endif

" custom keymaps
nmap s <Plug>(easymotion-s)
noremap <C-S-V> "+gP
noremap <C-k><C-b> :NERDTreeToggle<CR>
nnoremap <A-j> :m .+1<CR>==
nnoremap <A-k> :m .-2<CR>==
tnoremap <Esc> <C-\><C-n>
map / <Plug>(incsearch-forward)
map ? <Plug>(incsearch-backward)

" syntastic configuration
let g:syntastic_javascript_checkers = ['jsxhint']

" ctrlp configuration
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git'

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

" edit gvim to be minimalistic
set guioptions-=m  "remove menu bar
set guioptions-=T  "remove tool bar
set guioptions-=r  "remove right-hand scroll bar
set guioptions-=e  "remove tab bar
set guioptions-=L  "remove left-hand scroll bar
set guioptions-=e  "remove tab-pages
