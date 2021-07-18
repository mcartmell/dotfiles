" Useful shortcuts:
"
" :e# - open prev file
" ,tt - open new tab with file browser
" ,tn - open new tab
" ,f - open file browser
" gd - go to file of code under cursor in new tab
" F4 - run linter
" F5 - close linter window

set nocompatible              " be iMproved, required
filetype off                  " required

" All of your Plugins must be added before the following line
filetype plugin indent on    " required

" Set cwd on opening new file
autocmd BufEnter * lcd %:p:h
set backspace=indent,eol,start
set autoindent
set smartindent
set autoread
set shiftwidth=2
set tabstop=2
set softtabstop=2
set expandtab
set laststatus=2
set nocompatible
set nobackup
set nowritebackup
set noswapfile
set encoding=utf-8
set number
set clipboard=unnamed
set textwidth=120
set nolist
filetype indent on
filetype plugin on
syntax enable
set background=dark
set shell=/bin/sh
set viminfo='10,\"100,:20,%,n~/.viminfo
set laststatus=2

" ale
let g:ale_linters={'go': ['golangci-lint', 'gopls']}
let g:ale_fix_on_save = 0
let g:ale_go_golangci_lint_options = "-c ~/.golang-ci.yaml"
let g:ale_go_golangci_lint_package = 0
let g:airline#extensions#ale#enabled = 1
let g:ale_completion_enabled = 1

" solarized
set termguicolors
colorscheme solarized8
let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"

" airline
let g:airline_powerline_fonts=1
let g:airline_theme='solarized'

" NERDTree
let NERDTreeQuitOnOpen = 1
let g:NERDTreeChDirMode=2

" goimports
let g:goimports = 1
let g:goimports_simplify = 1
let g:goimports_simplify_cmd = 'gofumpt'

" filetypes
autocmd BufNewFile *.go 0r ~/.vim/skeleton.go
autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab
:set pastetoggle=<F6>
map ,tt :tabnew<CR>:NERDTreeToggle<CR>
map ,tn :tabnew<CR>
map ,f :NERDTreeToggle<CR>
map gd :ALEGoToDefinition -tab<CR>
map <F3> :ALEPrevious<CR>
map <F4> :ALENext<CR>
map <F5> :lcl<CR>
map <S-tab> :tabprev<CR>
map <tab> :tabnext<CR>
map ; :FZF ~/go<CR>
nnoremap <silent> gr :GoReferrers<cr>

" Load all plugins now.
packloadall
" Load all of the helptags now, after plugins have been loaded.
silent! helptags ALL
