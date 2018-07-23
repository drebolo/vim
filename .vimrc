set nocompatible     " We're running Vim, not Vi!
filetype on              " Enable filetype detection
let &runtimepath.=',~/.vim/bundle/ale'

filetype indent on    " Enable filetype-specific indenting
filetype plugin on    " Enable filetype-specific plugins

set display+=lastline
set laststatus=2
set ruler
" syntax on
" set paste

set hidden

set nu
set ttyfast
set mouse=a
set ttymouse=xterm2
set cursorline
set cursorcolumn

" set number
" set relativenumber

highligh ColorColumn ctermbg=magenta
call matchadd('ColorColumn', '\%120v', 100)

exec "set listchars=tab:>~,trail:\uB7,nbsp:~"
set list

set tabstop=4
set shiftwidth=4
set expandtab


" set rtp+=$HOME/.local/lib/python2.7/site-packages/powerline/bindings/vim/

" Always show statusline
set laststatus=2

" Use 256 colours (Use this setting only if your terminal supports 256 colours)

" autocmd FileType perl set makeprg=perl\ -c\ %\ $*
" autocmd FileType perl set errorformat=%f:%l:%m
" autocmd FileType perl set autowrite
" autocmd BufNewFile * silent! 0r ~/.vim/skeleton/template.%:e

" au BufNewFile,BufRead process set filetype=perl
" au BufNewFile,BufRead *.psgi set filetype=perl
" au BufNewFile,BufRead *.tt set filetype=html

execute pathogen#infect()
syntax enable
" let g:solarized_termcolors=16
" let g:solarized_termtrans=1
" set background=dark
set t_Co=256
" colorscheme solarized

nnoremap <F5> :GundoToggle<CR>

autocmd FileType javascript vnoremap <buffer>  <c-f> :call RangeJsBeautify()<cr>
autocmd FileType html vnoremap <buffer> <c-f> :call RangeHtmlBeautify()<cr>
autocmd FileType css vnoremap <buffer> <c-f> :call RangeCSSBeautify()<cr>

" let g:syntastic_javascript_checkers = ['eslint' ,'jshint','jscs']

" let g:syntastic_mode_map = { 'mode': 'active',
"                             \ 'active_filetypes': ['perl', 'python', 'javascript'],
"                             \ 'passive_filetypes': [] }

" let g:syntastic_javascript_checkers = ['eslint']

" let g:syntastic_enable_perl_checkers = ['perl']
" let g:syntastic_enable_perl_checker = 1

let g:ale_perl_perl_options = '-c -Mwarnings -Ilib -It/lib'
let g:ale_perl_perlcritic_showrules = 1

let g:ale_linters = {
\    'javascript': ['eslint']
\}

" au FileType javascript call JavaScriptFold()
let g:airline_powerline_fonts = 1
let g:airline_theme='luna'
" let g:airline_theme='powerlineish'
" let g:airline_solarized_bg='dark'
let g:airline#extensions#tabline#enabled = 1
