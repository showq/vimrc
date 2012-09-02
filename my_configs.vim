let g:iswin=0
if has('win16') || has('win32') || has('win64')
    " let $HOME = expand('F://opensources/dotfiles')
    " let $MYVIM = expand($HOME.'/.vim')
    let g:iswin = 1

    cd ~
elseif has('gui_macvim')
    set macmeta
else
    " let $MYVIM = expand('~/.vim')
endif

set textwidth=79
set rnu
if exists('+colorcolumn')
    set colorcolumn=81
endif

" For chinese
set fileencodings=utf-8,gbk,gb2312,big5,chinese,latin-1
if g:iswin
    source $VIMRUNTIME/delmenu.vim
    source $VIMRUNTIME/menu.vim
    " Font
    set guifont=Yahei_Mono:h12:cANSI
    set gfw=Yahei_Mono:h12:cGB2312
    set shell=C:/Cygwin/bin/bash.exe
endif

" Better complete options to speed it up
set complete=.,w,b,u,U

" ------------------------------------------------------------------------------
" My Key map
" ------------------------------------------------------------------------------
" Fixes common typos
command W w
command Q q
map <F1> <Esc>
map <F1> <Esc>

" Make line completion easier
imap <C-l> <C-x><C-l>

" Equal Size Windows
nmap <silent> <leader>w= :wincmd =<CR>
" Swap Windows
nmap <silent> <leader>wx :wincmd x<CR>

map <leader>ct :cd ~/Desktop/Todoist/todoist<CR>
map <leader>cw :cd ~/Desktop/Wedoist/wedoist<CR>

language message zh_CN.UTF-8

" Indent Tab
noremap <Tab> v>
noremap <s-tab> v<
vnoremap <tab> >gv
vnoremap <s-tab> <gv

" Quit window on <leader>q
nnoremap <Leader>q :q<CR>
