syntax on

set tabstop=4 softtabstop=4
set expandtab
set shiftwidth=4
set autoindent
set smartindent
set nu						 "sets line numbers
set nowrap
set smartcase
set incsearch

"Autmoatic closing braces
inoremap {<CR> {<CR>}<Esc>ko<tab>
inoremap [<CR> [<CR>]<Esc>ko<tab>
inoremap (<CR> (<CR>)<Esc>ko<tab>

"Coc binds
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm() : "\<C-g>u\<CR>"

"Fix file browser"
autocmd FileType netrw setl bufhidden=delete "automtically kill phantom buffers
let g:netrw_liststyle=3 "tree style
let g:netrw_banner=0    "remove banner
let g:netrw_bowse_split=4 "files open on previous window
let g:netrw_winsize=25    "explorer page set to 25% width

map <silent> <C-e> :Lex<CR> 
map <silent> <tab> <C-w>w

"Plugins
call plug#begin('~/.vim/plugged')

Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'morhetz/gruvbox'

call plug#end()

colorscheme gruvbox
set background=dark

