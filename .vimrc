syntax on
set hlsearch
set incsearch
set cursorline
filetype indent plugin on
set mouse=a
set number
set tabstop=4
"set noet
"set pastetoggle=<F2>
set textwidth=80
autocmd BufRead,BufNewFile *.js setlocal ts=2 sw=2 expandtab
au BufReadPost *.hbs set syntax=html
colorscheme desert

" insert new line by pressing enter without getting into insert mode
nmap O O<Esc>
nmap <CR> o<Esc>

" Uncomment this if you're using CMDER
" CMDER for some odd reason disables backspace
" set backspace=indent,eol,start

" easier split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

imap jk <C-c>
imap kj <C-c>
imap \\ <C-c>
nmap \\ <C-c>
vmap \\ <C-c>
" insert mode esc and save
imap `` <C-c>:w<CR>
" normal mode esc and save
nnoremap `` <C-c>:w<CR> 
" visual mode esc and save
vnoremap `` <C-c>:w<CR>

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

" autocmd vimenter * NERDTree
" NERDTree Shortcut
nmap = :NERDTreeToggle<cr>

" Place vim-plugs plugins below using the Plug 'function name'
" Run :source %
" Then Run :PlugInstall

call plug#begin('~/.vim/plugged')

Plug 'ctrlpvim/ctrlp.vim'

Plug 'mxw/vim-jsx'
Plug 'pangloss/vim-javascript'
Plug 'w0rp/ale'

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
