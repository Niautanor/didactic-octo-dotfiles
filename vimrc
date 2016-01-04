version 6.0
" vim: set ft=vim :

" BEGIN MyOwnStuff
syntax enable
set nocompatible

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

" Python stuff (but it is also quite usefull in other Languages)
"filetype indent plugin on "I think this is the same as the similar line below
set tabstop=4
set shiftwidth=0
set expandtab

"vim latex suite
filetype plugin indent on
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
inoremap <NUL> <C-X><C-U>
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

"I like my Maven poms to be indented with two spaces
augroup FileSpecificSettings
    autocmd BufRead pom.xml :set sw=2
augroup END

"Für das Projekt interactive Systems im WS2015. Ich habe den coding style auf
"indent with tabs und Leerzeichen in leeren Zeilen nicht entfernen festgelegt
augroup ISWS15_Coding_Style
    "I don't want to expand tabs because I want spaces
    autocmd BufRead /home/tim/Hausaufgaben/Interactive\ Systems/*.java  :set noet
    autocmd BufRead /home/tim/Hausaufgaben/Interactive\ Systems/*.java  :set noet
    autocmd BufRead /home/tim/Hausaufgaben/Interactive\ Systems/*.java :inoremap <buffer> <cr> <cr>x<bs>
    autocmd BufRead /home/tim/Hausaufgaben/Interactive\ Systems/*.java :nnoremap <buffer> o ox<bs>
    autocmd BufRead /home/tim/Hausaufgaben/Interactive\ Systems/*.java :nnoremap <buffer> O Ox<bs>
augroup END
