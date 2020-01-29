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

" Every Vim on every OS will look in .vim
set runtimepath+=$HOME/.vim

"  ____  _    _   _  ____ ___ _   _ ____  
" |  _ \| |  | | | |/ ___|_ _| \ | / ___| 
" | |_) | |  | | | | |  _ | ||  \| \___ \ 
" |  __/| |__| |_| | |_| || || |\  |___) |
" |_|   |_____\___/ \____|___|_| \_|____/ 
call plug#begin('~/.vim/bundle')
Plug 'junegunn/vim-easy-align'
Plug 'xolox/vim-misc'
Plug 'airblade/vim-gitgutter'
Plug 'elixir-editors/vim-elixir'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'josa42/vim-lightline-coc'
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-fugitive'
Plug 'pangloss/vim-javascript'
Plug 'andys8/vim-elm-syntax'
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-surround'
Plug 'haya14busa/incsearch.vim'
Plug 'itchyny/lightline.vim'
Plug 'luochen1990/rainbow'
Plug 'wavded/vim-stylus'
Plug 'junegunn/vim-easy-align'
Plug '/usr/bin/fzf'
Plug 'junegunn/fzf.vim'
Plug 'SirVer/ultisnips'
call plug#end()

"  ____  _____ _____ _____ ___ _   _  ____ ____  
" / ___|| ____|_   _|_   _|_ _| \ | |/ ___/ ___| 
" \___ \|  _|   | |   | |  | ||  \| | |  _\___ \ 
"  ___) | |___  | |   | |  | || |\  | |_| |___) |
" |____/|_____| |_|   |_| |___|_| \_|\____|____/ 
set mouse=n
set updatetime=100
set timeout ttimeoutlen=50
set encoding=utf-8
set fileencodings=utf-8
colorscheme elflord
set nowrap
set number
syntax on
set smartindent
set tabstop=2
set shiftwidth=2
set expandtab
set softtabstop=2
set hidden
set showcmd
" set cursorline
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

" FZF files and buffer
nmap <leader><space> :Files<CR>
nmap <leader>b :Buffers<CR>

" select all
nmap va ggvG$

" splits
nmap <leader>w <C-W>

" indent
nmap <leader>h <<
nmap <leader>l >>
vmap <leader>h <
vmap <leader>l >

" page up / page down
nmap <leader>j <C-D>
nmap <leader>k <C-U>

" yank and paste
nmap <leader>p "+p
vnoremap <leader>y "+y

" .vimrc
nmap <leader>rc :tabe ~/.vimrc<CR>
nmap <leader>rr :source $MYVIMRC<CR>
nmap <leader>ri :PlugInstall<CR>

" toggles
nmap <leader>tr :RainbowToggle<CR>
nmap <leader>tn :NERDTreeToggle<CR>

" additinal escape
imap jj <Esc>

" search
map / <Plug>(incsearch-forward)
map ? <Plug>(incsearch-backward)

" align
xmap <leader>a <Plug>(LiveEasyAlign)

" cock
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

"  ____    _    ____    _   _    _    ____  ____ ___ _____ ____  
" | __ )  / \  |  _ \  | | | |  / \  | __ )| __ )_ _|_   _/ ___| 
" |  _ \ / _ \ | | | | | |_| | / _ \ |  _ \|  _ \| |  | | \___ \ 
" | |_) / ___ \| |_| | |  _  |/ ___ \| |_) | |_) | |  | |  ___) |
" |____/_/   \_\____/  |_| |_/_/   \_\____/|____/___| |_| |____/ 
" not at the moment


"  ____  _    _   _  ____ ___ _   _    ____ ___  _   _ _____ ___ ____ 
" |  _ \| |  | | | |/ ___|_ _| \ | |  / ___/ _ \| \ | |  ___|_ _/ ___|
" | |_) | |  | | | | |  _ | ||  \| | | |  | | | |  \| | |_   | | |  _ 
" |  __/| |__| |_| | |_| || || |\  | | |__| |_| | |\  |  _|  | | |_| |
" |_|   |_____\___/ \____|___|_| \_|  \____\___/|_| \_|_|   |___\____|
let NERDTreeShowHidden=1
let g:rainbow_active = 0 
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<c-tab>"

function! CocCurrentFunction()
    return get(b:, 'coc_current_function', '')
endfunction
let g:lightline = {
      \ 'colorscheme': 'wombat',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'gitbranch', 'readonly', 'filename', 'modified' ],
      \             [ 'coc_errors', 'coc_warnings', 'coc_ok' ], [ 'coc_status'  ]]
      \ },
      \ 'component_function': {
      \   'gitbranch': 'fugitive#head'
      \ },
      \ }
call lightline#coc#register()
