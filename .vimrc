" Vundle plugin manager setup and plugins
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" allows . to work on plugin commands
Plugin 'tpope/vim-repeat'


" Git plugins

" git integration
Plugin 'tpope/vim-fugitive'
" shows differences between git versions
Plugin 'airblade/vim-gitgutter'

" Code autocompletion
Plugin 'valloric/youcompleteme'

" Auto-complete bracklets, parenthesis,etc.
Plugin 'raimondi/delimitmate'
Plugin 'tpope/vim-surround'

" status bar at bottom
Plugin 'itchyny/lightline.vim'
set laststatus=2
set noshowmode
set noruler
let g:lightline = {
      \ 'colorscheme': 'seoul256',
      \ }

" aligning text
Plugin 'godlygeek/tabular'

" display tab levels
Plugin 'yggdroot/indentline'

call vundle#end()            " required
filetype plugin indent on    " required

" Put your non-Plugin stuff after this line

set updatetime=500
set nomodeline

" colorscheme
colorscheme elflord

" enable mouse
set mouse=a

" shows line number on the left
set number

" changes tabs to 4 spaces
set ts=4
" transforms tabs into spaces
set expandtab

" avoid wrapping line in the middle of a word
set linebreak

" better navigation
nnoremap j gj
nnoremap k gk

" better searching
set incsearch
set hlsearch

" shows other parenthesis or bracket when cursor is over one
set showmatch

" removes trailing whitespace
function! <SID>StripTrailingWhitespaces()
    " save last search & cursor position
    let _s=@/
    let l = line(".")
    let c = col(".")
    %s/\s\+$//e
    let @/=_s
    call cursor(l, c)
endfunction

" automatically remove trailing whitespace after closing file
autocmd BufWritePre * :call <SID>StripTrailingWhitespaces()


" copy to system clipboard by default
set clipboard=unnamedplus

" colors for autocompletion
highlight Pmenu		ctermfg=236	ctermbg=94	guifg=#303030	guibg=#875f00
highlight Pmenusel	ctermfg=232	ctermbg=178	guifg=#080808	guibg=#d7af00
