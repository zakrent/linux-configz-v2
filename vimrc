runtime! archlinux.vim

call plug#begin('~/.vim/autoload')

Plug 'ctrlpvim/ctrlp.vim'
"Plug 'flazz/vim-colorschemes'
"Plug 'Valloric/YouCompleteMe', { 'do': './install.py --clang-completer --system-libclang' }
"Plug 'octol/vim-cpp-enhanced-highlight'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
"Plug 'dylanaraps/wal.vim'
"Plug 'bagrat/vim-workspace'

call plug#end()

" Remap split switching to ctrl+dir
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

nnoremap  <silent>   <tab>  :if &modifiable && !&readonly && &modified <CR> :write<CR> :endif<CR>:bnext<CR>
nnoremap  <silent> <s-tab>  :if &modifiable && !&readonly && &modified <CR> :write<CR> :endif<CR>:bprevious<CR>
"let g:workspace_powerline_separators = 1
"let g:workspace_tab_icon = "\uf00a"
"let g:workspace_left_trunc_icon = "\uf0a8"
"let g:workspace_right_trunc_icon = "\uf0a9"

let g:airline#extensions#tabline#enabled = 1

colorscheme slate
set splitbelow
set splitright

:set tabstop=4
:set shiftwidth=4

set relativenumber
syntax on
