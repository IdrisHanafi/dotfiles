syntax on
set re=0
set hlsearch
set incsearch
set cursorline
filetype indent plugin on
set mouse=a
set number
"set relativenumber
set tabstop=4
set shiftwidth=4
set expandtab
set ic
set backspace=indent,eol,start
"set noet
set pastetoggle=<F2>
set textwidth=80
set colorcolumn=80
autocmd BufRead,BufNewFile *.html setlocal ts=2 sw=2 expandtab textwidth=120 colorcolumn=120
autocmd BufRead,BufNewFile *.css setlocal ts=2 sw=2 expandtab textwidth=120 colorcolumn=120
autocmd BufRead,BufNewFile *.js setlocal ts=2 sw=2 expandtab textwidth=120 colorcolumn=120
autocmd BufRead,BufNewFile *.jsx setlocal ts=2 sw=2 expandtab textwidth=120 colorcolumn=120
autocmd BufRead,BufNewFile *.ts setlocal ts=2 sw=2 expandtab textwidth=120 colorcolumn=120
autocmd BufRead,BufNewFile *.tsx setlocal ts=2 sw=2 expandtab textwidth=120 colorcolumn=120
au BufRead,BufNewFile *.ts set syntax=javascript
au BufReadPost *.hbs set syntax=html
" colorscheme desert
" If it's too dark, try:
" colorscheme darkblue
" disable the annoying Windows bell sound:
set visualbell

" show filename
set laststatus=2

" easy buffer navigations
nnoremap <leader>b :buffers<cr>:b<space>
nnoremap <leader>vb :buffers<cr>:vert sb<space>
nnoremap <leader>sb :buffers<cr>:sb<space>
nnoremap <leader><tab> :b#<cr>
map <leader>] :bn<cr>
map <leader>[ :bp<cr>

" easier split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" copy into mac clipboard
vnoremap <leader>c :w !pbcopy<CR><CR> 

inoremap jk <Esc>
inoremap kj <Esc>
" insert mode esc and save
imap <Leader><Leader> <C-c>:w<CR>
" normal mode esc and save
nnoremap <Leader><Leader> <C-c>:w<CR>
" visual mode esc and save
vnoremap <Leader><Leader> <C-c>:w<CR>

" resize vertical splits
nnoremap <silent> <Leader>+ :vertical resize +5<CR>
nnoremap <silent> <Leader>- :vertical resize -5<CR>

" J and K on a visual block moves things up and down
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv

" Force replace, example /word_to_replace \r
nnoremap <Leader>r :%s///g<Left><Left>
" Replace with confirm, example /word_to_replace \rc
nnoremap <Leader>rc :%s///gc<Left><Left><Left>

" Open FZF and search
nmap <Leader>ff :Files<cr>
nmap <Leader>gf :GFiles<cr>
" Find a word in the directory
nmap <Leader>rg :Rg<Space>
" Find a word in the directory using value from buffer
nmap <Leader>rgb :Rg<Space><C-r>"<cr>
" List commits
nmap <Leader>c :Commits<cr>

" Add colors to HEX in text
nmap <Leader>co :ColorHighlight<cr>

" Open NERDTree with toggle.
" NOTE: weird bug in NERDTree where it doesn't
" minimize the cmdheight automatically
nmap = :NERDTreeToggle<cr>:set cmdheight=2<cr>:set cmdheight=1<cr>
nnoremap <C-f> :NERDTreeFind<CR>

" Place vim-plugs plugins below using the Plug 'function name'
" Run :source %
" Then Run :PlugInstall
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif
call plug#begin('~/.vim/plugged')

" Automatically install missing plugins on startup
if !empty(filter(copy(g:plugs), '!isdirectory(v:val.dir)'))
  autocmd VimEnter * PlugInstall | q
endif

Plug 'morhetz/gruvbox'
Plug 'chrisbra/colorizer'
Plug 'mxw/vim-jsx'
Plug 'pangloss/vim-javascript'
Plug 'w0rp/ale'
Plug 'ctrlpvim/ctrlp.vim'

Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
" Allow passing optional flags into the Rg command.
"   Example: :Rg myterm -g '*.md'
command! -bang -nargs=* Rg call fzf#vim#grep("rg --column --line-number --no-heading --color=always --smart-case " . <q-args>, 1, <bang>0)

" add preview window to the Rg command
command! -bang -nargs=* Rg
  \ call fzf#vim#grep(
  \   'rg --column --line-number --no-heading --color=always --smart-case '.shellescape(<q-args>), 1,
  \   fzf#vim#with_preview(), <bang>0)

" Add preview to the :Files command
command! -bang -nargs=? -complete=dir Files
    \ call fzf#vim#files(<q-args>, {'options': ['--layout=reverse', '--info=inline', '--preview', 'cat {}']}, <bang>0)

Plug 'jiangmiao/auto-pairs'
Plug 'prettier/vim-prettier', { 'do': 'yarn install' }
" File Directory
Plug 'preservim/nerdtree'

" autocomplete stuffs
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" nginx styling
Plug 'chr4/nginx.vim'

Plug 'vim-airline/vim-airline'

" Terraform
Plug 'hashivim/vim-terraform'

Plug 'junegunn/vim-easy-align'

" PlantUML
Plug 'scrooloose/vim-slumlord'
Plug 'weirongxu/plantuml-previewer.vim'
Plug 'tyru/open-browser.vim'
Plug 'aklt/plantuml-syntax'

"LaTeX
Plug 'lervag/vimtex'
call plug#end()

" Best colorscheme ever
colorscheme gruvbox
set background=dark

" Always show the signcolumn, otherwise it would shift the text each time
" diagnostics appear/become resolved.
set signcolumn=yes

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
"nmap <buffer> gr <Plug>(coc-references)
" For  some odd reason the above doesn't 
" work in regular vim but the below one does
nnoremap <silent> gr :call CocAction('jumpReferences')<cr>

" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" NOTE: There's always complete item selected by default, you may want to enable
" no select by `"suggest.noselect": true` in your configuration file.
" other plugin before putting this into your config.
inoremap <silent><expr> <C-j>
      \ coc#pum#visible() ? coc#pum#next(1):
      \ CheckBackspace() ? "\<Tab>" :
      \ coc#refresh()

inoremap <expr><C-k> 
      \ coc#pum#visible() ? coc#pum#prev(1): "\<C-h>"

" Make <CR> to accept selected completion item or notify coc.nvim to format
" <C-g>u breaks current undo, please make your own choice.
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

" Symbol renaming.
nmap <leader>rn <Plug>(coc-rename)

function! CheckBackspace() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" ignore certain files in ctrlp
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git'

" ESLint configs
let g:ale_fixers = {
 \ 'javascript': ['eslint'],
 \ 'typescript': ['prettier', 'eslint']
 \ }

let g:ale_fix_on_save = 1

" Easy Align
" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)
" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)

" LaTeX Settings
let g:vimtex_view_method = 'skim'
