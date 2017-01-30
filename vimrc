set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Bundle 'VundleVim/Vundle.vim'
Bundle 'kien/ctrlp.vim'
Bundle 'scrooloose/nerdtree'
Bundle 'bling/vim-airline'
Bundle 'vim-airline/vim-airline-themes'
Bundle 'airblade/vim-gitgutter'
Bundle 'mattn/emmet-vim'
Bundle 'chrisbra/colorizer'
Bundle 'vim-ruby/vim-ruby'
Bundle 'gabesoft/vim-ags'
Bundle 'nanotech/jellybeans.vim'
Bundle 'ciaranm/detectindent'
Bundle 'easymotion/vim-easymotion'
Bundle 'kabbamine/zeavim.vim'

call vundle#end()            
filetype plugin indent on    

set laststatus=2
syntax on

colorscheme jellybeans

set tabstop=4
set shiftwidth=4
set relativenumber
set cursorline
set cursorcolumn
set clipboard=unnamedplus
set virtualedit=onemore
highlight CursorLine ctermbg=236 ctermfg=white
highlight CursorColumn ctermbg=235

set runtimepath^=~/.vim/bundle/ctrlp.vim

set wildignore+=*/.git/*,*/.hg/*,*/.svn/*,*/.idea/*,*/.DS_Store,*/vendor,*/node_modules,*/tmp

let mapleader = ","
nmap <leader>n :NERDTreeToggle<cr>
nmap <S-Enter> O<Esc>
nmap <CR> o<Esc>

let g:ctrlp_prompt_mappings = {
    \ 'AcceptSelection("e")': ['<c-t>'],
    \ 'AcceptSelection("t")': ['<cr>', '<2-LeftMouse>'],
    \ }
