set nocompatible  " be iMproved
set hidden
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
Bundle 'mmozuras/vim-whitespace'
Bundle 'nathanaelkane/vim-indent-guides'
Bundle 'mhinz/vim-startify'
Bundle 'mru.vim'
Bundle 'farmergreg/vim-lastplace'
Bundle 'ericbn/vim-relativize'
Bundle 'jamshedvesuna/vim-markdown-preview'
Bundle 'valloric/youcompleteme'
Bundle 'ternjs/tern_for_vim'
Bundle 'scrooloose/syntastic'

call vundle#end()
filetype plugin indent on
set laststatus=2
colorscheme jellybeans
syntax on

set showtabline=0

let g:indent_guides_enable_on_vim_startup=1
let g:indent_guides_start_level=2
set number
set tabstop=2
set expandtab
set encoding=utf-8
set nowrap 											" Avoid wrapping text when too wide
set virtualedit=all 						" Keeps cursor in same horizontal position when scrolling
set nobackup nowritebackup noswapfile autoread            " no backup or swap
nnoremap <BS> X " Make backspace delete character in every mode

" >80 char width
let &colorcolumn=join(range(81,999),",")
highlight ColorColumn ctermbg=234

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

" Stupid easymotion
nmap f <Plug>(easymotion-bd-w)

" Python development
vmap <leader>y :w! /tmp/vitmp<CR>
nmap <leader>p :r! cat /tmp/vitmp<CR>

" Most Recently Used
nmap ø :MRU<CR>

" System Clipboard Copy Paste With CTRL + X, C, V
set paste
" set clipboard+=unnamed,unnamedplus " use the system clipboard
vmap <C-c> "+y
vmap <C-x> "+d
map <C-v> "+p


" Python specific
" autocmd BufWritePost *.py !python3 test.py

" Go: Test and run on each save
autocmd BufWritePost *.go !go test
autocmd BufWritePost *.go !make

" Startify
let g:startify_custom_header = ['']
let g:startify_list_order = ['dir', 'bookmarks']
let g:startify_bookmarks = [{'v': '~/.vimrc'}, {'z': '~/.zshrc'}, {'t': '~/dev/toolbelt'}]

" Indent Guides Color
let g:indent_guides_auto_colors=0
let g:indent_guides_start_level=1
autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  guibg=red   ctermbg=234
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=green ctermbg=235

" Markdown preview
let vim_markdown_preview_hotkey='<C-m>'

" Syntax checking hacks for vim
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 0
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_loc_list_height=5
