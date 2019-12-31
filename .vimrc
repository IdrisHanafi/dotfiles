syntax on
set hlsearch
set incsearch
set cursorline
filetype indent plugin on
set mouse=a
set number
set relativenumber
set tabstop=4
set ic
"set noet
"set pastetoggle=<F2>
set textwidth=80
autocmd BufRead,BufNewFile *.js setlocal ts=2 sw=2 expandtab
au BufReadPost *.hbs set syntax=html
colorscheme desert

" easier split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

inoremap jk <Esc>
inoremap kj <Esc>
" insert mode esc and save
imap `` <C-c>:w<CR>
" normal mode esc and save
nnoremap `` <C-c>:w<CR> 
" visual mode esc and save
vnoremap `` <C-c>:w<CR>

" Force replace, example /word_to_replace \r
nnoremap <Leader>r :%s///g<Left><Left>
" Replace with confirm, example /word_to_replace \rc
nnoremap <Leader>rc :%s///gc<Left><Left><Left>

" normal mode: save
" nnoremap <c-s> :w<CR> 
" insert mode: escape to normal and save
" inoremap <c-s> <Esc>:w<CR> 
" visual mode: escape to normal and save
" vnoremap <c-s> <Esc>:w<CR>  

" stty -ixon
" noremap <silent> <C-S>          :update<CR>
" vnoremap <silent> <C-S>         <C-C>:update<CR>
" inoremap <silent> <C-S>         <C-O>:update<CR>

" nnoremap <C-s> :w<cr>

" Open NERDTree with toggle
nmap = :NERDTreeToggle<cr>
" autocmd vimenter * NERDTree

" Place vim-plugs plugins below using the Plug 'function name'
" Run :source %
" Then Run :PlugInstall

call plug#begin('~/.vim/plugged')

Plug 'mxw/vim-jsx'
Plug 'pangloss/vim-javascript'
Plug 'w0rp/ale'
Plug 'ctrlpvim/ctrlp.vim'

let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git'

Plug 'jiangmiao/auto-pairs'
" post install (yarn install | npm install)
Plug 'prettier/vim-prettier', { 'do': 'yarn install' }
"Plug 'vim-scripts/AutoComplPop'
" File Directory
Plug 'scrooloose/nerdtree'

" Track the engine. Autocomplete
Plug 'SirVer/ultisnips'

" Snippets are separated from the engine. Add this if you want them:
Plug 'honza/vim-snippets'

" React Plugin
Plug 'tellijo/vim-react-native-snippets'

" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"

call plug#end()
