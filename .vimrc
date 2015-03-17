filetype off                  " required
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'
Bundle 'vim-scripts/Superior-Haskell-Interaction-Mode-SHIM'
Bundle 'tpope/vim-rails.git'
" Bundle 'ervandew/supertab'
Bundle 'scrooloose/nerdtree'
Bundle 'digitaltoad/vim-jade'
Bundle 'tpope/vim-commentary'
set commentstring=//\ %s
map <c-h> gcc
Bundle 'hallison/vim-markdown'
Bundle 'kien/ctrlp.vim'
Bundle 'dgryski/vim-godef'
Bundle 'elzr/vim-json'

Bundle 'fatih/vim-go'
let g:go_fmt_command = "goimports"


filetype plugin indent on   
syntax enable
syntax on


let g:winManagerWindowLayout='FileExplorer|TagList'
nmap wm :WMToggle<cr>

"let g:miniBufExplMapCTabSwitchBufs = 1
"let g:miniBufExplMapWindowNavVim = 1

set fileencodings=uutf-8-bom,ucs-bom,utf-8,gb18030,cp936,cs,big5
set encoding=utf-8
set termencoding=utf-8

set nu

" automatically indent lines (default)
" set noautoindent
set autoindent

" select case-insenitiv search (not default)
" set ignorecase

" show cursor line and column in the status line
set ruler

" show matching brackets
set showmatch

" display mode INSERT/REPLACE/...
set showmode

" changes special characters in search patterns (default)
" set magic

" Required to be able to use keypad keys and map missed escape sequences
set esckeys

set nocompatible
" Changed default required by SuSE security team--be aware if enabling this
" that it potentially can open for malicious users to do harmful things.
set modelines=0
" set expandtab
set tabstop=4
set shiftwidth=4
set cindent
set hlsearch
set backspace=2
set smartcase
set cinoptions=:0,g0
set pastetoggle=<F11>

map <F3> :cp<CR>
map <F4> :cn<CR>
map <F5> :make -s<CR>
map <F6> :make -s clean<CR>
map <F7> :A<CR>

function! GnuIndent()
  setlocal cinoptions=>4,n-2,{2,^-2,:2,=2,g0,h2,p5,t0,+2,(0,u0,w1,m1
  setlocal shiftwidth=2
  setlocal tabstop=8
endfunction

if has("autocmd")
    " When editing a file, always jump to the last cursor position 
    autocmd BufReadPost *
    \ if line("'\"") > 0 && line ("'\"") <= line("$") |
    \ exe "normal g'\"" |
    \ endif
endif


match DiffAdd '\%>100v.*'
let g:load_doxygen_syntax=1
" let g:c_no_
set listchars=tab:>-,trail:-
" set list


nmap <leader>t :NERDTree<cr>

Bundle 'majutsushi/tagbar'
nmap <leader>p  :TagbarToggle<CR>
let g:tagbar_type_go = {
    \ 'ctagstype' : 'go',
    \ 'kinds'     : [
        \ 'p:package',
        \ 'i:imports:1',
        \ 'c:constants',
        \ 'v:variables',
        \ 't:types',
        \ 'n:interfaces',
        \ 'w:fields',
        \ 'e:embedded',
        \ 'm:methods',
        \ 'r:constructor',
        \ 'f:functions'
    \ ],
    \ 'sro' : '.',
    \ 'kind2scope' : {
        \ 't' : 'ctype',
        \ 'n' : 'ntype'
    \ },
    \ 'scope2kind' : {
        \ 'ctype' : 't',
        \ 'ntype' : 'n'
    \ },
    \ 'ctagsbin'  : 'gotags',
    \ 'ctagsargs' : '-sort -silent'
\ }
