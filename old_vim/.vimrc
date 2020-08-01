syntax enable
filetype indent plugin on

set modeline
set tabstop=8
set expandtab
set shiftwidth=4
set softtabstop=4
set ruler
set number
set cursorline
set hlsearch
set enc=utf8

"Code Folding
"set foldmethod=indent
set foldmethod=syntax
set nofoldenable

"Background
set background=dark

"Distinguished
colorscheme distinguished

"Solarized
"let g:solarized_termcolors=256
"colorscheme solarized

"Molokai
"let g:molokai_original = 1
"colorscheme molokai

"Phd
"colorscheme phd

"Git commit
autocmd Filetype gitcommit setlocal spell textwidth=72

"Pathogen
runtime bundle/pathogen/autoload/pathogen.vim
execute pathogen#infect()

"Powerline
let g:Powerline_colorscheme='solarized256'

"NERDTree
nmap <LEADER>e :NERDTreeToggle
