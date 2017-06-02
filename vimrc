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
Bundle 'chaquotay/ftl-vim-syntax'
Bundle 'FredKSchott/CoVim'
Bundle 'fatih/vim-go'
Bundle 'hdima/python-syntax'

call vundle#end()            
filetype plugin indent on    

set laststatus=2
syntax on

colorscheme jellybeans

set number
set tabstop=2
set expandtab
set encoding=utf-8
set cursorline
set cursorcolumn
set clipboard+=unnamed,unnamedplus " use the system clipboard for yank/put/delete
set virtualedit=onemore
set nobackup
set nowritebackup
set nowrap 											" Avoid wrapping text when too wide
set virtualedit=all 						" Keeps cursor in same horizontal position when scrolling

set nobackup nowritebackup noswapfile autoread            " no backup or swap
nnoremap <BS> X " Make backspace delete character in every mode



" Highlight horizontal width over 80 characters
"highlight OverLength ctermbg=red ctermfg=white guibg=#592929
"match OverLength /\%81v.\+/

" >80 char width
let &colorcolumn=join(range(81,999),",")

highlight CursorLine ctermbg=236 ctermfg=white
highlight CursorColumn ctermbg=235

set runtimepath^=~/.vim/bundle/ctrlp.vim

set wildignore+=*/.git/*,*/.hg/*,*/.svn/*,*/.idea/*,*/.DS_Store,*/vendor,*/node_modules,*/tmp
let python_highlighting_all = 1
let mapleader = ","
nmap <leader>n :NERDTreeToggle<cr>
nmap <S-Enter> O<Esc>
nmap <CR> o<Esc>

let g:ctrlp_prompt_mappings = {
    \ 'AcceptSelection("e")': ['<c-t>'],
    \ 'AcceptSelection("t")': ['<cr>', '<2-LeftMouse>'],
    \ }

" <Leader>f{char} to move to {char}
map  <Leader>f <Plug>(easymotion-bd-f)
nmap <Leader>f <Plug>(easymotion-overwin-f)

" s{char}{char} to move to {char}{char}
nmap s <Plug>(easymotion-overwin-f2)

" Move to line
map <Leader>L <Plug>(easymotion-bd-jk)
nmap <Leader>L <Plug>(easymotion-overwin-line)

" Move to word
map  <Leader>w <Plug>(easymotion-bd-w)
nmap <Leader>w <Plug>(easymotion-overwin-w)

" Python development

vmap <leader>y :w! /tmp/vitmp<CR>                                                                   
nmap <leader>p :r! cat /tmp/vitmp<CR>

set paste

" Python specific
" autocmd BufWritePost *.py !python3 test.py

" Go specific 
autocmd BufWritePost *.go !go test
autocmd BufWritePost *.go !make
