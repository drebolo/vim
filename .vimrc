set tabstop=4
set shiftwidth=4
set expandtab

set nocompatible     " We're running Vim, not Vi!
filetype on              " Enable filetype detection
filetype indent on    " Enable filetype-specific indenting
filetype plugin on    " Enable filetype-specific plugins

set display+=lastline
set laststatus=2
set ruler
syntax on
set paste

set nu
set ttyfast
set mouse=a
set ttymouse=xterm2

highligh ColorColumn ctermbg=magenta
call matchadd('ColorColumn', '\%81v', 100)

autocmd FileType perl set makeprg=perl\ -c\ %\ $*
autocmd FileType perl set errorformat=%f:%l:%m
autocmd FileType perl set autowrite
autocmd BufNewFile * silent! 0r ~/.vim/skeleton/template.%:e

au BufNewFile,BufRead process set filetype=perl
execute pathogen#infect()
