""" Indenting shit of something lmao idk
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set ai


""" Haskell Syntax Highlighting
execute pathogen#infect()
syntax on
filetype plugin indent on

let g:haskell_enable_quantification = 1   " highlighting for `forall`
let g:haskell_enable_recursivedo = 1      " highlighting for `mdo` and `rec`
let g:haskell_enable_arrowsyntax = 1      " highlighting for `proc`
let g:haskell_enable_pattern_synonyms = 1 " highlighting for `pattern`
let g:haskell_enable_typeroles = 1        " highlighting for type roles
let g:haskell_enable_static_pointers = 1  " highlighting for `static`
let g:haskell_backpack = 1                " highlighting for backpack keywords

" bunch of indenting shit
let g:haskell_indent_if = 2
let g:haskell_indent_case = 4
let g:haskell_indent_let = 4
let g:haskell_indent_where = 6
let g:haskell_indent_before_where = 2
let g:haskell_indent_after_bare_where = 2
let g:haskell_indent_do = 3
let g:haskell_indent_in = 1
let g:haskell_indent_guard = 5


""" Dracula theme
packadd! dracula
syntax enable
colorscheme dracula

hi Normal guibg=NONE ctermbg=NONE
