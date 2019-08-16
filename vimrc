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
set background=light
" END MyOwnStuff

" Originally for python. Nice anyway
set tabstop=2
set shiftwidth=2
set expandtab

"vim latex suite
set grepprg=grep\ -nH\ $*
let g:tex_flavor = "latex"
let g:Tex_DefaultTargetFormat = "pdf"
let g:Tex_GotoError = 0

"absolutely nice. It allows me to use the mouse when I'm in normal or visual
"mode (selecting text in normal mode will put me into visual mode). Scrolling
"also works. The only downside is, that selected text will not get copied to
"Xs clipboard. You can work around that by entering insert mode first, which
"will disable mouse support temporarily
set mouse=nv

"This will automatically wrap lines at 80 characters, which is very useful for
"LaTeX as well as Linux Kernel hacking.
set tw=80

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

"TODO: :help iskeyword
"iskeyword kann anscheinend dafür verwendet werden, das _ als wortgrenzen
"gesehen werden

"I like my Maven poms to be indented with two spaces
augroup FileSpecificSettings
    au!
    autocmd BufRead pom.xml :set sw=2
    autocmd Filetype tex :set sw=4
augroup END

augroup MyLaTeXIMAPS
  au!
  au VimEnter tex call IMAP('footnote', "\\footnote{<++>}<++>", 'tex')
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
