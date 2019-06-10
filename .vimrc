set nocompatible              " be iMproved, required filetype off
" required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

set encoding=utf-8
"
" " let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" " Use nerdtree for file tree navigation
Plugin 'scrooloose/nerdtree'

Plugin 'tpope/vim-fugitive'

Plugin 'https://github.com/flazz/vim-colorschemes.git' 
Plugin 'lepture/vim-jinja'

Plugin 'tpope/vim-surround'

Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

Plugin 'ctrlpvim/ctrlp.vim'

Plugin 'SirVer/ultisnips'

let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>" 
let g:UltiSnipsSnippetDirectories = ['~/.vim/UltiSnips', 'UltiSnips']
let g:UltiSnipsEditSplit="vertical"

" " For commenting and uncommeting
Plugin 'scrooloose/nerdcommenter'

" " Syntax checking (linting)
Plugin 'vim-syntastic/syntastic'

Plugin 'dbakker/vim-lint'

" " Emmet for HTML velocity
Plugin 'mattn/emmet-vim'

"
" " Trigger configuration. Do not use <tab> if you use
" https://github.com/Valloric/YouCompleteMe.

" " Auto-tagging
Plugin 'craigemery/vim-autotag'

" " Editor config support
Plugin 'editorconfig/editorconfig-vim'

" " Namespace auto completion for PHP
Plugin 'arnaud-lb/vim-php-namespace' 

" " Code folding plugin
Plugin 'tmhedberg/SimpylFold'

" " Python indenting
Plugin 'vim-scripts/indentpython.vim'

" " python pep 8 checking 
Plugin 'nvie/vim-flake8'

Plugin 'leafgarland/typescript-vim'

Plugin 'Quramy/tsuquyomi'

Plugin 'Shougo/vimproc.vim'

Plugin 'w0rp/ale'

let g:ale_sign_error = '●' " Less aggressive than the default '>>'
let g:ale_sign_warning = '.'
let g:ale_lint_on_enter = 0 "

Plugin 'pangloss/vim-javascript'
Plugin 'mxw/vim-jsx'

let g:user_emmet_leader_key='<Tab>'
let g:user_emmet_settings = {
\ 'typescript' : {
\     'extends' : 'jsx',
\ },
\ 'javascript' : {
\     'extends' : 'jsx',
\ },
\ 'javascript.jsx' : {
\     'extends' : 'jsx',
\ },
\}

Plugin 'maxmellon/vim-jsx-pretty'

Plugin 'prettier/vim-prettier'
Plugin 'vim-scripts/vim-auto-save'

let g:auto_save = 1

"
" Naming conflict if you've already installed a " different version somewhere
" else.  " Plugin 'ascenator/L9', {'name': 'newL9'}
"
" " All of your Plugins must be added before the following line
call vundle#end()

" " NERDTree Menu to be toggled with Ctrl + N
map <C-n> :NERDTreeToggle<CR> set splitright


" Don't show arros in NERDTree navigation
let NERDTreeDirArrowExpandable = "\u00a0"
let NERDTreeDirArrowCollapsible = "\u00a0" 
map <C-n> :NERDTreeToggle<CR>

" Set default colorscheme
colorscheme OceanicNext

set guifont=Dank\ Mono\

" Set line numbers visible by default
set nu

function! IPhpInsertUse() 
    call PhpInsertUse()
    call feedkeys('a',  'n') 
endfunction

autocmd FileType php inoremap <Leader>u <Esc>:call IPhpInsertUse()<CR>
autocmd FileType php noremap <Leader>u :call PhpInsertUse()<CR>

"" Tags for PHP
set tags+=tags,tags.vendors

" " Use Ctrl + P and fuzzy search to look for tags inside files
nnoremap <leader>. :CtrlPTag<cr>

set wildmenu

" " Split navigation shortcuts
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" " Keep docstring visible when folding
let g:SimpylFold_docstring_preview=1

" " Automatic indentation for Python
au BufNewFile,BufRead *.py 
    \   set tabstop=4
    \   softtabstop=4
    \   shiftwidth=4
    \   textwidth=79
    \   expandtab
    \   autoindent
    \   fileformat=unix

let python_highlight_all=1

" " automatic indentation for fullstack web development
au BufNewFile,BufRead *.js,*.ts,*.d.ts,*.html,*.css 
    \ set tabstop=2 
    \   softtabstop=2
    \   shiftwidth=2 
    \	expandtab

autocmd FileType *.js set formatprg=prettier

autocmd BufNewFile,BufRead *.ts setlocal filetype=typescript

filetype plugin indent on

" " Enable folding
set foldmethod=indent
set foldlevel=99

" Enable folding with the spacebar
nnoremap <space> za

syntax on

inoremap <C-h> <Left>
inoremap <C-j> <Down>
inoremap <C-k> <Up>
inoremap <C-l> <Right>
cnoremap <C-h> <Left>
cnoremap <C-j> <Down>
cnoremap <C-k> <Up>
cnoremap <C-l> <Right>

nnoremap <C-j> :tabprevious<CR>
nnoremap <C-k> :tabnext<CR>
