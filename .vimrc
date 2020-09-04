set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'git://git.wincent.com/command-t.git'
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}

Plugin 'scrooloose/nerdtree'
Plugin 'majutsushi/tagbar'
Plugin 'vim-airline/vim-airline'

Plugin 'ycm-core/YouCompleteMe'
Plugin 'mattn/emmet-vim'

" ColorScheme
Plugin 'franbach/miramare'
Plugin 'tlhr/anderson.vim'
Plugin 'pgavlin/pulumi.vim'

" Syntax Highlight
Plugin 'sheerun/vim-polyglot'

" Syntatic
Plugin 'scrooloose/syntastic'

" Lint Engine
Plugin 'dense-analysis/ale'

" Plugin for Vue.js
Plugin 'posva/vim-vue'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

" Basic Programming Settings
syntax on
set nu
set encoding=utf-8

" CTags Settings
set tags+=./tags,tags

" CTags for MBS Project
" set tags+=/Users/peterlee/code/mbs/mbs_ctags/django_admin_tags
" set tags+=/Users/peterlee/code/mbs/mbs_ctags/flask_apihub_tags
" set tags+=/Users/peterlee/code/mbs/mbs_ctags/rpc_mbs_tags

map <C-\> :tab split<CR>:exec("tag ".expand("<cword>"))<CR>:TagbarOpen<CR>
map <A-]> :vsp <CR>:exec("tag ".expand("<cword>"))<CR>

" Theme Settings
" Miramare
set termguicolors
"let g:miramare_enable_italic = 1
"let g:miramare_disable_italic_comment = 1
"colorscheme miramare
let g:airline_theme = 'miramare'

" Color Scheme
" colorscheme anderson
" colorscheme pulumi
colorscheme gruvbox

" Window Split
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Code Folding
" Enable folding
set foldmethod=indent
set foldlevel=99
nnoremap <space> za

" Tabe Navigation
nnoremap <S-Left> :tabprevious<CR>
nnoremap <S-Right> :tabnext<CR>
nnoremap <C-n> :NERDTreeToggle<CR>

"
set autoindent
set fileformat=unix
set hlsearch


" Python PEP8
au BufNewFile,BufRead *.py
    \  set tabstop=4
    \ | set softtabstop=4
    \ | set shiftwidth=4
    \ | set textwidth=79
    \ | set expandtab

" Full Stack
"au BufNewFile,BufRead *.js, *.html, *.css
au Filetype html
    \  set tabstop=2
    \ | set softtabstop=2
    \ | set shiftwidth=2
    \ | set expandtab

au Filetype htmldjango
    \  set tabstop=2
    \ | set softtabstop=2
    \ | set shiftwidth=2
    \ | set expandtab

au Filetype javascript
    \  set tabstop=2
    \ | set softtabstop=2
    \ | set shiftwidth=2
    \ | set expandtab

au Filetype css
    \  set tabstop=2
    \ | set softtabstop=2
    \ | set shiftwidth=2
    \ | set expandtab

au Filetype vue
    \  set tabstop=2
    \ | set softtabstop=2
    \ | set shiftwidth=2
    \ | set expandtab

" YCM - Configuration
let g:ycm_global_ycm_extra_conf = '~/global_extra_conf.py'

" Emmet HTML Plugin
let g:user_emmet_leader_key=','

" Posva/vim-vue
autocmd FileType vue syntax sync fromstart

" Tag Bar
autocmd FileType python,javascript TagbarOpen
nmap <F8> :TagbarToggle<CR>

" Gruvbox
let g:gruvbox_bold=1

" Syntatic Settings
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_javascript_checkers = ['eslint']
