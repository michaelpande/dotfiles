"
" ██████╗ ██╗     ██╗   ██╗ ██████╗ ██╗███╗   ██╗███████╗
" ██╔══██╗██║     ██║   ██║██╔════╝ ██║████╗  ██║██╔════╝
" ██████╔╝██║     ██║   ██║██║  ███╗██║██╔██╗ ██║███████╗
" ██╔═══╝ ██║     ██║   ██║██║   ██║██║██║╚██╗██║╚════██║
" ██║     ███████╗╚██████╔╝╚██████╔╝██║██║ ╚████║███████║
" ╚═╝     ╚══════╝ ╚═════╝  ╚═════╝ ╚═╝╚═╝  ╚═══╝╚══════╝
"
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
Bundle 'djoshea/vim-autoread'
Bundle 'conormcd/matchindent.vim'
Bundle 'scrooloose/nerdcommenter'
Bundle 'jeffkreeftmeijer/vim-numbertoggle'
Bundle 'timakro/vim-searchant'
Bundle 'obxhdx/vim-auto-highlight'
Bundle 'tpope/vim-fugitive'
Bundle 'tommcdo/vim-fugitive-blame-ext'
Bundle 'ntpeters/vim-airline-colornum'

call vundle#end()
filetype plugin indent on

"
"  ██████╗ ██████╗ ███╗   ██╗███████╗██╗ ██████╗
" ██╔════╝██╔═══██╗████╗  ██║██╔════╝██║██╔════╝
" ██║     ██║   ██║██╔██╗ ██║█████╗  ██║██║  ███╗
" ██║     ██║   ██║██║╚██╗██║██╔══╝  ██║██║   ██║
" ╚██████╗╚██████╔╝██║ ╚████║██║     ██║╚██████╔╝
"  ╚═════╝ ╚═════╝ ╚═╝  ╚═══╝╚═╝     ╚═╝ ╚═════╝
"

set ttyfast
set lazyredraw


set nocompatible  " be iMproved
set hidden
filetype off
set number
set encoding=utf-8
set nowrap 											" Avoid wrapping text when too wide
set virtualedit=all 						" Keeps cursor in same horizontal position when scrolling
set nobackup nowritebackup noswapfile autoread            " no backup or swap
set cursorline

set paste
" set clipboard+=unnamed,unnamedplus " use the system clipboard

" INDENT/TAB/SPACES
set tabstop=2
set softtabstop=2

set wildignore+=*/.git/*,*/.hg/*,*/.svn/*,*/.idea/*,*/.DS_Store,*/vendor,*/node_modules,*/tmp

set listchars=trail:█
set list!

"
" ██╗  ██╗███████╗██╗   ██╗███████╗
" ██║ ██╔╝██╔════╝╚██╗ ██╔╝██╔════╝
" █████╔╝ █████╗   ╚████╔╝ ███████╗
" ██╔═██╗ ██╔══╝    ╚██╔╝  ╚════██║
" ██║  ██╗███████╗   ██║   ███████║
" ╚═╝  ╚═╝╚══════╝   ╚═╝   ╚══════╝
"

" Most Recently Used
    nmap ø :MRU<CR>

" Standard hotkeys for vim
    vmap <C-c> "+y
    vmap <C-x> "+d
    map <C-v> "+p
    map <C-f> /
    nnoremap <BS> X " Make backspace delete character in every mode

" Markdown preview
    let vim_markdown_preview_hotkey='<C-m>'

" Easy easymotion
    nmap f <Plug>(easymotion-overwin-w)

let mapleader = ","
nmap <leader>n :NERDTreeToggle<cr>
nmap <S-Enter> O<Esc>
nmap <CR> o<Esc>

" CTRLP
    let g:ctrlp_prompt_mappings = {
        \ 'AcceptSelection("e")': ['<c-t>'],
        \ 'AcceptSelection("t")': ['<cr>', '<2-LeftMouse>'],
        \ }


"
" ███████╗████████╗██╗   ██╗██╗     ███████╗
" ██╔════╝╚══██╔══╝╚██╗ ██╔╝██║     ██╔════╝
" ███████╗   ██║    ╚████╔╝ ██║     █████╗
" ╚════██║   ██║     ╚██╔╝  ██║     ██╔══╝
" ███████║   ██║      ██║   ███████╗███████╗
" ╚══════╝   ╚═╝      ╚═╝   ╚══════╝╚══════╝
"

set laststatus=2

syntax enable
colorscheme jellybeans

" >80 char width
"    let &colorcolumn=join(range(81,999),",")
"    highlight ColorColumn ctermbg=234
" Indent Guides Color
"    let g:indent_guides_auto_colors=0
"    let g:indent_guides_start_level=1
"    autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  guibg=red   ctermbg=234
"    autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=green ctermbg=235




"
" ███╗   ███╗██╗███████╗ ██████╗
" ████╗ ████║██║██╔════╝██╔════╝
" ██╔████╔██║██║███████╗██║
" ██║╚██╔╝██║██║╚════██║██║
" ██║ ╚═╝ ██║██║███████║╚██████╗
" ╚═╝     ╚═╝╚═╝╚══════╝ ╚═════╝
"


" DEVELOPMENT: PYTHON
    vmap <leader>y :w! /tmp/vitmp<CR>
    nmap <leader>p :r! cat /tmp/vitmp<CR>
    "autocmd BufWritePost *.py !python3 test.py
    let python_highlighting_all = 1

" DEVELOPMENT: Go - Test and run on each save
    autocmd BufWritePost *.go !go test
    autocmd BufWritePost *.go !make

" Airline
    let g:airline#extensions#tabline#fnamemod = ':.'
    let g:airline#extensions#tabline#fnamecollapse = 0
    let g:airline_section_z = '%f'
    let g:airline_section_y = ''
    let g:airline_detect_paste=0
    let g:airline_theme = 'jellybeans'

" INDENTGUIDES
    let g:indent_guides_enable_on_vim_startup=1
    let g:indent_guides_start_level=2

" CTRLP
    set runtimepath^=~/.vim/bundle/ctrlp.vim




" Startify
    let g:startify_custom_header = ['']
    let g:startify_list_order = ['dir', 'bookmarks']
    let g:startify_bookmarks = [{'v': '~/dotfiles/vimrc'}, {'z': '~/dotfiles/zshrc'}, {'t': '~/dev/toolbelt'}]



" Syntastic - Syntax checking hacks for vim
    set statusline+=%#warningmsg#
    set statusline+=%{SyntasticStatuslineFlag()}
    set statusline+=%*
    let g:syntastic_always_populate_loc_list = 1
    let g:syntastic_auto_loc_list = 0
    let g:syntastic_check_on_open = 1
    let g:syntastic_check_on_wq = 0
    let g:syntastic_loc_list_height=5

