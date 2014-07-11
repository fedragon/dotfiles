""" Vundle settings

set shell=/bin/bash "required if using another shell
set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'
Plugin 'Shougo/unite.vim'
Plugin 'Shougo/vimproc.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'bitc/vim-hdevtools'
Plugin 'scrooloose/syntastic'
Plugin 'bling/vim-airline'
Plugin 'airblade/vim-gitgutter'
Plugin 'mhinz/vim-signify'

call vundle#end()
filetype plugin indent on

""" General settings

syntax on                   " Enable syntax highlighting
set number                  " Enable line numbers
set autoread                " Refresh buffers if they were changed from outside
set autowriteall            " Save on buffer switch
set splitright              " Split new buffers to the right

set directory=~/.vim/tmp    " Temporary swap files directory

set hlsearch                " Highlight search matches
set nolist                  " Do not highlight whitespaces by default
set listchars=tab:▸\ ,eol:¬ " Display tabs as ▸, end of line as `¬`

set guioptions+=a           " Copy highlighted text to system clipboard
set guioptions-=r           " Remove scrollbars
set guioptions-=L

colorscheme desert          " Color scheme

" Soft tab indentation with 2 spaces
set tabstop=2
set shiftwidth=2

set smarttab
set expandtab               " Use spaces instead of tabs

""" Airline settings
let g:airline#extensions#tabline#enabled = 1

""" Unite settings
let g:unite_source_history_yank_enable = 1
call unite#custom#source('file,file/new,buffer,file_rec,file_rec/async', 'matchers', 'matcher_fuzzy')
call unite#custom#source('file,file/new,buffer,file_rec,file_rec/async', 'sorters', 'sorter_rank')

call unite#custom#source('file,file_rec,file_rec/async', 'ignore_pattern',
      \'tmp\|vendor\|\.bundle\|target\|\.git')

""" Mappings
inoremap jk <Esc>

" Toggle whitespaces/end of line display
nnoremap <leader>l :set list!<CR>

nnoremap <C-p> :Unite -no-split -buffer-name=files -start-insert file_rec/async:!<cr>
au FileType haskell nnoremap <buffer> <F1> :HdevtoolsType<CR>
au FileType haskell nnoremap <buffer> <silent> <F2> :HdevtoolsClear<CR>

