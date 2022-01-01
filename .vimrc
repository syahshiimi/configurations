" create vim workspace 
"
syntax on
set ai
set number
set ruler
set termguicolors
set foldmethod=indent
set hidden
set cmdheight=2
set laststatus=2


au BufEnter,BufWinEnter,BufNewFile,BufRead *.sc,*.scd set filetype=supercollider
au Filetype supercollider packadd scvim

" vim bindings
"
" set leader


nmap <C-P> :FZF<CR>

if has("nvim-0.5.0") || has("patch-8.1.1564")
  " Recently vim can merge signcolumn and number column into one
  set signcolumn=number
  else
  set signcolumn=yes
  endif
" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
 inoremap <silent><expr> <TAB>
       \ pumvisible() ? "\<C-n>" :
       \ <SID>check_back_space() ? "\<TAB>" :
       \ coc#refresh()
 inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Make <CR> auto-select the first completion item and notify coc.nvim to
" format on enter, <cr> could be remapped by other vim plugin
 inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm()
       \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

let g:netrw_banner = 0
let g:scFlash = 1
let g:lightline = {
      \ 'colorscheme': 'onedark',
      \ }
let g:onedark_termcolors=16 



" Vim-Plug plugins 

if empty(glob('~/.vim/autoload/plug.vim'))
	  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
	      \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
	    autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
    endif


call plug#begin()

  Plug 'airblade/vim-gitgutter'
  Plug 'mattn/emmet-vim'
  Plug 'sheerun/vim-polyglot'
  Plug 'pangloss/vim-javascript'
  Plug 'othree/html5.vim'
  Plug 'plasticboy/vim-markdown'
  Plug 'prettier/vim-prettier', { 'do': 'yarn install' }
  Plug 'joshdick/onedark.vim'
  Plug 'neoclide/coc.nvim', {'branch': 'release'}
  Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
  Plug 'junegunn/fzf.vim'
  Plug 'styled-components/vim-styled-components', { 'branch': 'main' }
  Plug 'itchyny/lightline.vim'



call plug#end()

colorscheme onedark
