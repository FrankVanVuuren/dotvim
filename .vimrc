" __     _____ __  __ ____   ____ 
" \ \   / /_ _|  \/  |  _ \ / ___|
"  \ \ / / | || |\/| | |_) | |    
"  _\ V /  | || |  | |  _ <| |___ 
" (_)\_/  |___|_|  |_|_| \_\\____|

"  _____ ____      _    _   _ _  __ __     ___    _   _  __     ___   _ _   _ ____  _____ _   _ 
" |  ___|  _ \    / \  | \ | | |/ / \ \   / / \  | \ | | \ \   / / | | | | | |  _ \| ____| \ | |
" | |_  | |_) |  / _ \ |  \| | ' /   \ \ / / _ \ |  \| |  \ \ / /| | | | | | | |_) |  _| |  \| |
" |  _| |  _ <  / ___ \| |\  | . \    \ V / ___ \| |\  |   \ V / | |_| | |_| |  _ <| |___| |\  |
" |_|   |_| \_\/_/   \_\_| \_|_|\_\    \_/_/   \_\_| \_|    \_/   \___/ \___/|_| \_\_____|_| \_|
"                                                       





                                       
" No backsies
set nocompatible

" Let lame terminal emulators use alt key bindings
let c='a'
while c <= 'z'
  exec "set <A-".c.">=\e".c
  exec "imap \e".c." <A-".c.">"
  let c = nr2char(1+char2nr(c))
endw

" Every Vim on every OS will look in .vim
set runtimepath+=$HOME/.vim

"  ____  _    _   _  ____ ___ _   _ ____  
" |  _ \| |  | | | |/ ___|_ _| \ | / ___| 
" | |_) | |  | | | | |  _ | ||  \| \___ \ 
" |  __/| |__| |_| | |_| || || |\  |___) |
" |_|   |_____\___/ \____|___|_| \_|____/ 
call plug#begin('~/.vim/bundle')
Plug 'sheerun/vim-polyglot'
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
Plug 'junegunn/vim-easy-align'
Plug 'rhysd/open-pdf.vim'
Plug 'itchyny/screensaver.vim'
Plug 'vim-scripts/YankRing.vim'
Plug 'vim-scripts/scratch.vim'
Plug 'calebsmith/vim-lambdify'
Plug 'PotatoesMaster/i3-vim-syntax'
call plug#end()

"  ____  _____ _____ _____ ___ _   _  ____ ____  
" / ___|| ____|_   _|_   _|_ _| \ | |/ ___/ ___| 
" \___ \|  _|   | |   | |  | ||  \| | |  _\___ \ 
"  ___) | |___  | |   | |  | || |\  | |_| |___) |
" |____/|_____| |_|   |_| |___|_| \_|\____|____/ 
set timeout ttimeoutlen=50
set encoding=utf-8
set fileencodings=utf-8
set background=dark
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
set cursorline
let loaded_matchparen = 1
let mapleader = " "
set noswapfile
set nobackup
set ignorecase
set smartcase

"  _  _________   ____  __    _    ____  ____  
" | |/ / ____\ \ / /  \/  |  / \  |  _ \/ ___| 
" | ' /|  _|  \ V /| |\/| | / _ \ | |_) \___ \ 
" | . \| |___  | | | |  | |/ ___ \|  __/ ___) |
" |_|\_\_____| |_| |_|  |_/_/   \_\_|   |____/ 
imap <expr> <tab> emmet#expandAbbrIntelligent("\<tab>")
nmap <leader><space> :CtrlP<CR>
nmap <leader>b :CtrlPBuffer<CR>
nmap va ggvG$
nmap <leader>p :YRShow<CR>
nmap <leader>w <C-W>
nmap <leader>h <<
vmap <leader>h <
nmap <leader>j <C-D>
nmap <leader>l >>
vmap <leader>l >
nmap <leader>k <C-U>
nmap <leader>P "+P
nmap <leader>Y "+y
nmap <leader>q :q<CR>
nmap <leader>rc :tabe ~/.vimrc<CR>
nmap <leader>rr :source $MYVIMRC<CR>
nmap <leader>ri :PlugInstall<CR>
nmap <leader>tn :NERDTreeToggle<CR>
nmap <leader>tr :RainbowToggle<CR>
nmap <leader>ts :ScreenSaver largeclock<CR>
nmap <leader>sn :silent exec "!spotify-control next"<CR>:redraw!<CR>
nmap <leader>sp :silent exec "!spotify-control play"<CR>:redraw!<CR>
nnoremap <A-j> :m .+1<CR>==
nnoremap <A-k> :m .-2<CR>==
inoremap <A-j> <Esc>:m .+1<CR>==gi
inoremap <A-k> <Esc>:m .-2<CR>==gi
vnoremap <A-j> :m '>+1<CR>gv=gv
vnoremap <A-k> :m '<-2<CR>gv=gv
imap jj <Esc>
map / <Plug>(incsearch-forward)
map ? <Plug>(incsearch-backward)
xmap <leader>a <Plug>(LiveEasyAlign)

"  ____    _    ____    _   _    _    ____  ____ ___ _____ ____  
" | __ )  / \  |  _ \  | | | |  / \  | __ )| __ )_ _|_   _/ ___| 
" |  _ \ / _ \ | | | | | |_| | / _ \ |  _ \|  _ \| |  | | \___ \ 
" | |_) / ___ \| |_| | |  _  |/ ___ \| |_) | |_) | |  | |  ___) |
" |____/_/   \_\____/  |_| |_/_/   \_\____/|____/___| |_| |____/ 
nnoremap I I<Esc>
                                                               

"  ____  _    _   _  ____ ___ _   _    ____ ___  _   _ _____ ___ ____ 
" |  _ \| |  | | | |/ ___|_ _| \ | |  / ___/ _ \| \ | |  ___|_ _/ ___|
" | |_) | |  | | | | |  _ | ||  \| | | |  | | | |  \| | |_   | | |  _ 
" |  __/| |__| |_| | |_| || || |\  | | |__| |_| | |\  |  _|  | | |_| |
" |_|   |_____\___/ \____|___|_| \_|  \____\___/|_| \_|_|   |___\____|
let NERDTreeShowHidden=1
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git|vendor\'
let g:rainbow_active = 0 
let g:pdf_convert_on_edit = 1
let g:pdf_convert_on_read = 1
hi Normal ctermbg=none
hi NonText ctermbg=none
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

"   ____ _   _ ___    ____ ___  _   _ _____ ___ ____ 
"  / ___| | | |_ _|  / ___/ _ \| \ | |  ___|_ _/ ___|
" | |  _| | | || |  | |  | | | |  \| | |_   | | |  _ 
" | |_| | |_| || |  | |__| |_| | |\  |  _|  | | |_| |
"  \____|\___/|___|  \____\___/|_| \_|_|   |___\____|
if has('gui_running')
  set guioptions-=m  "remove menu bar
  set guioptions-=T  "remove tool bar
  set guioptions-=r  "remove right-hand scroll bar
  set guioptions-=e  "remove tab bar
  set guioptions-=L  "remove left-hand scroll bar
  set guioptions-=e  "remove tab-pages
endif


"  _        _    ____  
" | |      / \  | __ ) 
" | |     / _ \ |  _ \ 
" | |___ / ___ \| |_) |
" |_____/_/   \_\____/ 
