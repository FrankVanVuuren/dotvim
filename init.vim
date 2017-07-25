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

"  ____  _    _   _  ____ ___ _   _ ____  
" |  _ \| |  | | | |/ ___|_ _| \ | / ___| 
" | |_) | |  | | | | |  _ | ||  \| \___ \ 
" |  __/| |__| |_| | |_| || || |\  |___) |
" |_|   |_____\___/ \____|___|_| \_|____/ 

call plug#begin('~/.config/nvim/bundle')
Plug 'w0ng/vim-hybrid'
Plug 'scrooloose/nerdtree'
Plug 'sheerun/vim-polyglot'
Plug 'whatyouhide/vim-gotham'
Plug 'tpope/vim-fugitive'
Plug 'pangloss/vim-javascript'
Plug 'jelera/vim-javascript-syntax'
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-surround'
Plug 'kien/ctrlp.vim'
Plug 'haya14busa/incsearch.vim'
Plug 'luochen1990/rainbow'
Plug 'chrisbra/csv.vim'
Plug 'wavded/vim-stylus'
Plug 'digitaltoad/vim-pug'
Plug 'kchmck/vim-coffee-script'
Plug 'junegunn/vim-easy-align'
Plug 'rhysd/open-pdf.vim'
Plug 'itchyny/screensaver.vim'
Plug 'vim-scripts/YankRing.vim'
Plug 'PotatoesMaster/i3-vim-syntax'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'mattn/emmet-vim'
Plug 'posva/vim-vue'
Plug 'neomake/neomake'
call plug#end()

"  ____  _____ _____ _____ ___ _   _  ____ ____  
" / ___|| ____|_   _|_   _|_ _| \ | |/ ___/ ___| 
" \___ \|  _|   | |   | |  | ||  \| | |  _\___ \ 
"  ___) | |___  | |   | |  | || |\  | |_| |___) |
" |____/|_____| |_|   |_| |___|_| \_|\____|____/ 
set timeout ttimeoutlen=50
set fileencodings=utf-8
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
let loaded_matchparen = 1
let mapleader = " "
let $NVIM_TUI_ENABLE_CURSOR_SHAPE = 0
set noswapfile
set nobackup
set ignorecase
set smartcase
set background=dark
set mouse=a
colorscheme zellner

"  _  _________   ____  __    _    ____  ____  
" | |/ / ____\ \ / /  \/  |  / \  |  _ \/ ___| 
" | ' /|  _|  \ V /| |\/| | / _ \ | |_) \___ \ 
" | . \| |___  | | | |  | |/ ___ \|  __/ ___) |
" |_|\_\_____| |_| |_|  |_/_/   \_\_|   |____/ 
nmap <Esc> <Esc>:nohl<CR>
nmap <leader><space> :CtrlP<CR>
nmap <leader>b :CtrlPBuffer<CR>
nmap <leader>z %
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
nmap <leader>rc :tabe $MYVIMRC<CR>
nmap <leader>rr :source $MYVIMRC<CR>
nmap <leader>ri :PlugInstall<CR>
nmap <leader>tr :RainbowToggle<CR>
nmap <leader>tt :setl rnu!<CR> 
nmap <leader>ts :ScreenSaver largeclock<CR>
nmap <leader>tn :NERDTreeToggle<CR>
nmap <leader>sn :silent exec "!spotify-control next"<CR>:redraw!<CR>
nmap <leader>sp :silent exec "!spotify-control play"<CR>:redraw!<CR>
nmap <leader>br :silent exec "!browser-reload"<CR>:redraw!<CR>
nmap <leader>ww :w<CR><space>br
nmap <leader>g :Gstatus<CR>
nnoremap <A-j> :m .+1<CR>==
nnoremap <A-k> :m .-2<CR>==
inoremap <A-j> <Esc>:m .+1<CR>==gi
inoremap <A-k> <Esc>:m .-2<CR>==gi
vnoremap <A-j> :m '>+1<CR>gv=gv
vnoremap <A-k> :m '<-2<CR>gv=gv
imap jj <Esc>
tnoremap <Esc> <C-\><C-n> 
map / <Plug>(incsearch-forward)
map ? <Plug>(incsearch-backward)
xmap <leader>a <Plug>(LiveEasyAlign)
cmap w!! w !sudo tee > /dev/null %

"  ____    _    ____    _   _    _    ____  ____ ___ _____ ____  
" | __ )  / \  |  _ \  | | | |  / \  | __ )| __ )_ _|_   _/ ___| 
" |  _ \ / _ \ | | | | | |_| | / _ \ |  _ \|  _ \| |  | | \___ \ 
" | |_) / ___ \| |_| | |  _  |/ ___ \| |_) | |_) | |  | |  ___) |
" |____/_/   \_\____/  |_| |_/_/   \_\____/|____/___| |_| |____/ 
let g:yankring_clipboard_monitor=0
let g:yankring_history_file='.yk_history'

"  ____  _    _   _  ____ ___ _   _    ____ ___  _   _ _____ ___ ____ 
" |  _ \| |  | | | |/ ___|_ _| \ | |  / ___/ _ \| \ | |  ___|_ _/ ___|
" | |_) | |  | | | | |  _ | ||  \| | | |  | | | |  \| | |_   | | |  _ 
" |  __/| |__| |_| | |_| || || |\  | | |__| |_| | |\  |  _|  | | |_| |
" |_|   |_____\___/ \____|___|_| \_|  \____\___/|_| \_|_|   |___\____|
let g:airline_left_sep=''
let g:airline_right_sep=''
let g:airline#extensions#whitespace#enabled = 0
let g:airline_theme='term'
let g:jsx_ext_required = 0
autocmd! BufWritePost * Neomake
let g:neomake_open_list=2
let g:neomake_place_signs = 0
"let g:hybrid_custom_term_colors = 1
"let g:hybrid_reduced_contrast = 1
let NERDTreeShowHidden=1
let g:ctrlp_custom_ignore = 'vendor\|node_modules\|DS_Store\|\.git\'
let g:rainbow_active = 0
let g:pdf_convert_on_edit = 1
let g:pdf_convert_on_read = 1


" Set split separator to Unicode box drawing character
set encoding=utf8
set fillchars=vert:│

" Override color scheme to make split the same color as tmux's default
highlight Vertsplit ctermfg=black

set laststatus=0
"au VimEnter * AirlineToggle
