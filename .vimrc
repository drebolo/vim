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
set cursorline
set cursorcolumn

highligh ColorColumn ctermbg=magenta
call matchadd('ColorColumn', '\%81v', 100)

exec "set listchars=tab:>~,trail:\uB7,nbsp:~"
set list

autocmd FileType perl set makeprg=perl\ -c\ %\ $*
autocmd FileType perl set errorformat=%f:%l:%m
autocmd FileType perl set autowrite
autocmd BufNewFile * silent! 0r ~/.vim/skeleton/template.%:e


au BufNewFile,BufRead process set filetype=perl
execute pathogen#infect()

set rtp+=$HOME/.local/lib/python2.7/site-packages/powerline/bindings/vim/

" Always show statusline
set laststatus=2

" Use 256 colours (Use this setting only if your terminal supports 256 colours)
set t_Co=256

nnoremap <F5> :GundoToggle<CR>
