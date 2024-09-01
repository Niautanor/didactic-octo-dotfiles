version 7.2
set nocompatible

syntax enable
filetype plugin indent on

" Pathogen is sortof a very basic plugin manager for vim
" see https://github.com/tpope/vim-pathogen for details
runtime bundle/vim-pathogen/autoload/pathogen.vim
execute pathogen#infect()

" Map Backward motions to be inclusive (they are exclusive by default meaning,
" that the last(the currently selected) character won't be included in
" deletions)
onoremap ? v?
onoremap b vb
onoremap B vB
onoremap F vF
onoremap T vT

set ignorecase
set smartcase

set number
set showcmd
set background=dark

" Originally for python. Nice anyway
set tabstop=4
set shiftwidth=0
set expandtab

"This allows me to use the mouse when I'm in normal or visual mode (selecting
"text in normal mode will put me into visual mode). Scrolling also works. The
"only downside is, that selected text will not get copied to Xs clipboard. You
"can work around that by entering insert mode first, which will disable mouse
"support temporarily
set mouse=nv

"TODO: :help iskeyword
"iskeyword kann anscheinend dafür verwendet werden, das _ als wortgrenzen
"gesehen werden

"I like my Maven poms to be indented with two spaces
augroup FileSpecificSettings
    au!
    autocmd BufRead pom.xml :set sw=2
    autocmd Filetype tex :set sw=4
augroup END

"A helpful function when numbering things. Used in s/thing/\=vimscript to insert
"an increasing number. Has to be initialized with :let g:i first
let g:i = 1
function Inc(...)
    let s:result = g:i
    let g:i += a:0 > 0 ? a:1 : 1
    return s:result
endfunction

" inserts the identifier (for c like languages) that is curerntly under the
" cursor. Useful for things like :cs find c <c-e> to find functions that call
" the function under the cursor
cnoremap <c-e> <c-r>=expand("<cword>")<cr>

" vim latex suite: alt-i in terminal mode gets converted to escape i
imap i <a-i>

set foldmethod=syntax
