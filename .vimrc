""" Vundle settings

set shell=/bin/bash "required if using another shell
set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'airblade/vim-gitgutter'
Plugin 'bling/vim-airline'
Plugin 'gmarik/Vundle.vim'
Plugin 'kien/rainbow_parentheses.vim'
Plugin 'mhinz/vim-signify'
Plugin 'Shougo/unite.vim'
Plugin 'Shougo/vimproc.vim'
Plugin 'tpope/vim-fugitive'

" Haskell
Plugin 'eagletmt/ghcmod-vim'          " Load buffer in ghc, infer types
Plugin 'bitc/vim-hdevtools'           " Provide type information
" Plugin 'scrooloose/syntastic'         " Syntax highlighting
Plugin 'vim-scripts/Haskell-Conceal'  " Replace characters with unicode equivalents
Plugin 'wlangstroth/vim-haskell'

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
set laststatus=2
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#fnamemod = ':t'

""" Syntastic
" let g:syntastic_auto_loc_list=1

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

" Unite
nnoremap <C-p> :Unite -no-split -buffer-name=files -start-insert file_rec/async:!<cr>

" Buffer navigation
nnoremap be :enew<CR>
nnoremap bl :bnext<CR>
nnoremap bh :bprevious<CR>
nnoremap bq :bdelete<CR>

""" syntastic
" map <silent> <leader>e :Errors<CR>
" map <Leader>s :SyntasticToggleMode<CR>

""" ghc-mod
nnoremap <silent> gb :GhcModCheck<CR>
nnoremap <silent> gt :GhcModType<CR>
nnoremap <silent> gc :GhcModTypeClear<CR>

""" rainbow-parentheses
au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces

let g:rbpt_colorpairs = [
    \ ['brown',       'RoyalBlue3'],
    \ ['Darkblue',    'SeaGreen3'],
    \ ['darkgray',    'DarkOrchid3'],
    \ ['darkgreen',   'firebrick3'],
    \ ['darkcyan',    'RoyalBlue3'],
    \ ['darkred',     'SeaGreen3'],
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ['brown',       'firebrick3'],
    \ ['gray',        'RoyalBlue3'],
    \ ['black',       'SeaGreen3'],
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ['Darkblue',    'firebrick3'],
    \ ['darkgreen',   'RoyalBlue3'],
    \ ['darkcyan',    'SeaGreen3'],
    \ ['darkred',     'DarkOrchid3'],
    \ ['red',         'firebrick3'],
    \ ]

" let g:rbpt_max = 16
" let g:rbpt_loadcmd_toggle = 0

