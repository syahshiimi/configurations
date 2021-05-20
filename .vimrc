" create vim workspace 

let g:netrw_banner = 0
set number

" Vim-Plug plugins 

if empty(glob('~/.vim/autoload/plug.vim'))
	  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
	      \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
	    autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
    endif


call plug#begin()

  Plug 'airblade/vim-gitgutter'
  Plug 'mattn/emmet-vim'
  Plug 'vim-airline/vim-airline'
  Plug 'sheerun/vim-polyglot'
  Plug 'pangloss/vim-javascript'
  Plug 'othree/html5.vim'
  Plug 'dracula/vim', { 'as': 'dracula' }
  Plug 'plasticboy/vim-markdown'
  Plug 'prettier/vim-prettier', { 'do': 'yarn install' }
  
call plug#end()

colorscheme dracula
