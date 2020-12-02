set nocompatible
syntax on
filetype plugin indent on

" Important
set encoding=utf-8
set fileencodings=utf-8,gb18030,utf-16,big5
set nobackup
set noswapfile
set noundofile
set nowrap
set nu
set clipboard+=unnamed
set directory-=.
set ignorecase
set smartcase
set directory=.,$TEMP
set undodir=~/.undodir
set fileformats=unix,dos

" Appearance
set autoindent
set smartindent
set shiftwidth=4
set guifont=Source\ Code\ Pro\ for\ Powerline:h14
set expandtab
set tabstop=4
set statusline=%F%m%r%h%w\ [%{&ff}:%{&fenc!=''?&fenc:&enc}]\ [%Y]\ [0x\%02.2B]\ [%04l,%04v] 
set laststatus=2


" filetype
au BufRead,BufNewFile *.config set filetype=xml
au BufRead,BufNewFile *.go set filetype=go
au BufRead,BufNewFile *.m set filetype=objc
au BufRead,BufNewFile *.m set nocindent
au BufRead,BufNewFile *.aspx set filetype=html

" keyboard shortcuts
let mapleader = ','
"map <C-h> <C-w>h
"map <C-j> <C-w>j
"map <C-k> <C-w>k
"map <C-l> <C-w>l
map <C-h> :wincmd h<CR>
map <C-j> :wincmd j<CR>
map <C-k> :wincmd k<CR>
map <C-l> :wincmd l<CR>
map <leader>l :Align
nmap <leader>a :Ack 
nmap <leader>b :CtrlPBuffer<CR>
nmap <leader>d :NERDTreeToggle<CR>
nmap <leader>f :NERDTreeFind<CR>
nmap <leader>t :CtrlP<CR>
nmap <leader>T :CtrlPClearCache<CR>:CtrlP<CR><CR>
"nmap <leader>] :TagbarToggle<CR>
nmap <leader>] :TlistToggle<CR>
nmap <leader><space> :call whitespace#strip_trailing()<CR>
nmap <leader>g :GitGutterToggle<CR>
nmap <leader>c <Plug>Kwbd

nmap <C-t> :tab new<CR>
nmap <C-w> :tabclose<CR>
nmap <leader>` :terminal<CR>
