set nocompatible
source $VIMRUNTIME/vimrc_example.vim

" pathogen
call pathogen#infect()
syntax on
filetype plugin indent on

" Important
set encoding=utf-8
set fileencodings=utf-8,gb18030,utf-16,big5
set nobackup
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
set guifont=Source\ Code\ Pro:h14
set expandtab
"set helplang=cn
set tabstop=4
"set cc=81
"set lines=35
"set columns=90

if has("win32")
    language en
else
    language en_US
endif

" Windows use DirectX
if has("gui_win32")
    set renderoptions=type:directx,renmode:5,taamode:1
endif

" GUI use solarized
if has("gui_running")
    set background=light
    colorscheme solarized
else
    color molokai
endif

" statusline
set statusline=%F%m%r%h%w\ [%{&ff}:%{&fenc!=''?&fenc:&enc}]\ [%Y]\ [0x\%02.2B]\ [%04l,%04v] 
set laststatus=2


let Tlist_Show_One_File=4
let Tlist_Exit_OnlyWindow=1
let g:C_FormatDate='%B-%d-%Y'
let g:C_FormatTIme='%H:%M'
set tags=./tags

" filetype
au BufRead,BufNewFile *.config set filetype=xml
au BufRead,BufNewFile *.go set filetype=go
au BufRead,BufNewFile *.m set filetype=objc
au BufRead,BufNewFile *.m set nocindent
au BufRead,BufNewFile *.aspx set filetype=html

" keyboard shortcuts
let mapleader = ','
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l
map <leader>l :Align
nmap <leader>a :Ack 
nmap <leader>b :CtrlPBuffer<CR>
nmap <leader>d :NERDTreeToggle<CR>
nmap <leader>f :NERDTreeFind<CR>
nmap <leader>t :CtrlP<CR>
nmap <leader>T :CtrlPClearCache<CR>:CtrlP<CR><CR>
nmap <leader>] :TagbarToggle<CR>
nmap <leader><space> :call whitespace#strip_trailing()<CR>
nmap <leader>g :GitGutterToggle<CR>
nmap <leader>c <Plug>Kwbd

nmap <C-t> :tab new<CR>

" plugin settings
let g:ctrlp_match_window = 'order:ttb,max:20'
let g:NERDSpaceDelims=1
let g:gitgutter_enabled = 1
" Emmet
let g:user_emmet_settings = {
\   'php' : {
\   'extends' : 'html',
\    'filters' : 'c',
\  },
\  'xml' : {
\    'extends' : 'html',
\  },
\  'haml' : {
\    'extends' : 'html',
\  },
\}

"Airline
let g:airline_skip_empty_sections=1
let g:airline#extensions#tabline#enabled = 1
set t_Co=256
let g:airline_powerline_fonts = 1  
