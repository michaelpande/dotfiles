set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'tyrannicaltoucan/vim-quantum'
Plugin 'kien/ctrlp.vim'



" All of your Plugins must be added before the following two lines
call vundle#end()            
filetype plugin indent on    

set background=dark
colorscheme quantum

if has("termguicolors")
    set termguicolors
endif



set runtimepath^=~/.vim/bundle/ctrlp.vim

set wildignore+=*/.git/*,*/.hg/*,*/.svn/*,*/.idea/*,*/.DS_Store,*/vendor,*/node_modules,*/tmp
