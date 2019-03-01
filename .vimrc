call plug#begin('~/.vim/plugged')

Plug 'scrooloose/nerdtree'
Plug 'scrooloose/nerdcommenter'
" fzf is <3 
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'tpope/vim-endwise'
Plug 'w0rp/ale'
Plug 'vim-airline/vim-airline'

call plug#end()

" Color Scheme
let &t_Co = 256
" set background=dark
colorscheme railscasts

" Syntax highlighting
syntax on
filetype plugin indent on

" Bacskpace, spaces and tabs
set backspace=indent,eol,start	" more powerful backspacing
set tabstop=2    " Set the default tabstop
set softtabstop=2
set shiftwidth=2 " Set the default shift width for indents
set expandtab   " Make tabs into spaces (set by tabstop)
set smarttab " Smarter tab levels
set clipboard=unnamedplus

" Plugin mappings
map <C-n> :NERDTreeToggle<CR>
nnoremap <C-f> :FZF<cr>
nnoremap <C-t> :tabe<cr>

" Set filename to tab name
let &titlestring = @%
set title

" Move swap files to tmp
set swapfile
set dir=~/tmp

" Highlight selections
set hlsearch

" Show line numbers
set number

" Remove whitespaces
autocmd BufWritePre *.rb,*.js,*.jsx,*.slim,*.css,*.scss :%s/\s\+$//e

" Set specific linters
let g:ale_linters = {
\   'javascript': ['eslint'],
\   'ruby': ['rubocop'],
\}

" Only run linters named in ale_linters settings.
let g:ale_linters_explicit = 1

let g:airline#extensions#ale#enabled = 1
let g:ale_sign_column_always = 1

" Disable ALE auto highlights
let g:ale_set_highlights = 0
