" =====   BASIC   ======
" Disable compatable mode
set nocompatible
" Generic filetype detection off
filetype off
" Syntax coloring on
syntax on

" ====== SEARCHING ======
" Ignore case when searching
set ignorecase
" Use case sensitive search if search contains uppercase character
set smartcase
" Highlight search results
set hlsearch

" ====== TEXT/TABS ======
"  Use spaces instead of tabs
set expandtab
set smarttab
" Tab width
set shiftwidth=4
set tabstop=4
" Auto indent
set ai
" Smart indent
set si
" Line wrap
set wrap
" Wrap at 100 characters
set tw=100
set linebreak
set nolist
" Prevent vim from inserting linebreaks when wrapping
set textwidth=0
set wrapmargin=0
" Keep formatting on lines already in the file
set formatoptions+=1
" Show line numbers
set number
set numberwidth=5
set cpoptions+=n
highlight LineNr term=bold cterm=NONE ctermfg=DarkGrey ctermbg=NONE gui=NONE guifg=DarkGrey guibg=NONE
" Unix as standard file type
set ffs=unix,dos,mac
" Set utf8 as standard encoding
set encoding=utf8
" Backspace works as intended
set backspace=eol,start,indent
set whichwrap+=<,>,h,l
" Treat long lines as break lines (useful when moving around in them)
map j gj
map k gk

" =====  EDITING   ======
" Remap VIM 0 to first non-blank character
map 0 ^

" Move a line of text using ALT+[jk] or Command+[jk] on mac
nmap <M-j> mz:m+<cr>`z
nmap <M-k> mz:m-2<cr>`z
vmap <M-j> :m'>+<cr>`<my`>mzgv`yo`z
vmap <M-k> :m'<-2<cr>`>my`<mzgv`yo`z

if has("mac") || has("macunix")
    nmap <D-j> <M-j>
    nmap <D-k> <M-k>
    vmap <D-j> <M-j>
    vmap <D-k> <M-k>
endif

" Moving between buffers using C-h, C-j, C-k, C-l
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

" ======= STATLINE ======
" Always show status line
set laststatus=2

" =======  FILES   ======
" Turn backup off
set nobackup
set nowb
set noswapfile
" Turn on wild menu (tab-completion)
set wildmenu
set wildmode=longest,list,full
" Ignore compiled files when searching
set wildignore=*.o,*~,*.pyc
" Autoreload file when changed outside VIM
set autoread

" ======= KEYBIND  ======
" Press Space to turn search highlight off and clear msg already displayed
nnoremap <silent> <Space> :nohlsearch<Bar>:echo<CR>

" =======  VUNDLE  ======
set rtp+=~/.vim/bundle/vundle
call vundle#rc()

" Let Vundle manage Vundle
Bundle 'gmarik/vundle'

" Powerline
Bundle 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
Bundle 'Lokaltog/powerline-fonts'

" Color schemes
Bundle 'flazz/vim-colorschemes'

" JSON syntax
Bundle 'vim-scripts/vim-json-bundle'
autocmd BufNewFile,BufRead *.json setf json

" Surround pluging (operations on text-objects)
" ds*          delete surround (delete *)
" cs*#         change surround (search *, replace with #)
" v[hjkl]S*    Visual mode change (select with hjkl, add *)
" ys[txt-obj]* You surround using text objects (add * around txt-obj)
Bundle 'tpope/vim-surround'

" Syntax checker for many languages
Bundle 'scrooloose/syntastic'

" Code completions
Bundle 'Valloric/YouCompleteMe'

" ======   THEME   ======
" Set color theme
colorscheme beachcomber

" Set font
set guifont=Source\ Code\ Pro\ Medium:h11


"  =======  FOOTER ======
"  Enable filetype plugin
filetype plugin on
filetype indent on
