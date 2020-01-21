set nocompatible
source $VIMRUNTIME/vimrc_example.vim

" pathogen
call pathogen#infect()
call pathogen#helptags()
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

" Menu
if has("gui_running")
    set langmenu=zh_CN.UTF-8
    language message zh_CN.UTF-8
    source $VIMRUNTIME/delmenu.vim  
    source $VIMRUNTIME/menu.vim  
endif

" Appearance
set autoindent
set smartindent
set shiftwidth=4
set guifont=Source\ Code\ Pro\ for\ Powerline:h14
set expandtab
"set helplang=cn
set tabstop=4
"set cc=81
"set lines=35
"set columns=90

"if has("win32")
"    language en
"else
"    language en_US
"endif

" Windows use DirectX
if has("gui_win32")
    set renderoptions=type:directx,renmode:5,taamode:1
endif

" GUI use solarized
let t_Co=256
let g:solarized_termcolors=256
set term=screen-256color
if has("gui_running") && !has("gui_macvim")
    set background=light
    colorscheme solarized
else
    "color molokai
    colorscheme solarized
    set background=dark
endif
" Mac
"let os = substitute(system('uname'), '\n', '', '')
"if os == 'Darwin' || os == 'Mac'
"    set background=dark
"endif

" statusline
"set statusline=%F%m%r%h%w\ [%{&ff}:%{&fenc!=''?&fenc:&enc}]\ [%Y]\ [0x\%02.2B]\ [%04l,%04v] 
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
"nmap <leader>] :TagbarToggle<CR>
nmap <leader>] :TlistToggle<CR>
nmap <leader><space> :call whitespace#strip_trailing()<CR>
nmap <leader>g :GitGutterToggle<CR>
nmap <leader>c <Plug>Kwbd

nmap <C-t> :tab new<CR>
nmap <C-w> :tabclose<CR>
nmap <leader>` :terminal<CR>

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
" Add syntax rule
let g:markdown_quote_syntax_filetypes = {
      \ "css" : {
      \   "start" : "\\%(css\\|scss\\)",
      \},
      \ "cs" : {
      \   "start" : "\\%(csharp\\|cs\\)",
      \},
      \ "xml" : {
      \   "start" : "xml",
      \},
      \ "objc" : {
      \   "start" : "objc",
      \},
      \ "sh" : {
      \   "start" : "sh",
      \}
\}

"Airline
let g:airline_skip_empty_sections=1
let g:airline#extensions#tabline#enabled = 1
set t_Co=256
let g:airline_powerline_fonts = 1  

"NeoComplcache
let g:neocomplcache_enable_at_startup=1

"Pymode
let g:pymode_python = 'python3'

"taglist
let Tlist_Use_Right_Window=1
let Tlist_File_Fold_Auto_Close=1
let Tlist_Exit_OnlyWindow=1

" vim-markdown
let g:vim_markdown_folding_disabled = 1
let g:vim_markdown_math = 1
let g:vim_markdown_edit_url_in = 'buffer'
let g:vim_markdown_toc_autofit = 1
