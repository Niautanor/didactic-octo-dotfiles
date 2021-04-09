version 7.2
set nocompatible

" BEGIN MyOwnStuff
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
" END MyOwnStuff

" Originally for python. Nice anyway
set tabstop=4
set shiftwidth=0
set expandtab

"absolutely nice. It allows me to use the mouse when I'm in normal or visual
"mode (selecting text in normal mode will put me into visual mode). Scrolling
"also works. The only downside is, that selected text will not get copied to
"Xs clipboard. You can work around that by entering insert mode first, which
"will disable mouse support temporarily
set mouse=nv

"Eclim keybindings
"Control-Space -> Autocompletion. C-Space isn't actually a supported
"character, which means that I have to define the map for every unsupported
"character (which sadly includes <C-j>. You can use <C-v> in insert mode to
"insert a character literally and see what vim will see it as)
"inoremap <NUL> <C-X><C-U>
"When you open a .class file in eclim, Eclipse will give you all method
"declarations but it won't show you the code. For some reason this is more
"important than the vim-jad plugin that I like more which is why I disable this
"piece of eclim functionality here.
"It might be possible to fix this with a command like this
"autocmd VimEnter * :autocmd! eclim_java_class_read * *.class
"let g:EclimOpenClassFiles = 0
"autocmd BufReadCmd *.class :echom "fu"
"augroup! eclim_java_class_read
"This is stupid

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
