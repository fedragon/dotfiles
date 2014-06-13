set shell=/bin/bash
set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'
Plugin 'Shougo/unite.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'Shougo/vimproc.vim'

call vundle#end()

syntax on
filetype plugin indent on

colorscheme desert

set tabstop=2
set shiftwidth=2

set smarttab
set expandtab

imap jk <Esc>

nnoremap <leader>ev :tabnew $MYVIMRC <CR>
nnoremap <leader>sv :source $MYVIMRC <CR>


""" Unite
let g:unite_source_history_yank_enable = 1
call unite#custom#source('file,file/new,buffer,file_rec,file_rec/async', 'matchers', 'matcher_fuzzy')
call unite#custom#source('file,file/new,buffer,file_rec,file_rec/async', 'sorters', 'sorter_rank')

call unite#custom#source('file,file_rec,file_rec/async', 'ignore_pattern',
      \'tmp\|vendor\|\.bundle\|target\|\.git')

nnoremap <C-p> :Unite -no-split -buffer-name=files -start-insert file_rec/async:!<cr>
