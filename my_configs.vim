let g:iswin=0

if has('win16') || has('win32') || has('win64')
    let g:iswin = 1
endif

if g:iswin
    let $WORK = expand('D:/Development/Htdocs')

    " Special
    source $VIMRUNTIME/delmenu.vim
    source $VIMRUNTIME/menu.vim

    " Font
    set guifont=Yahei_Mono:h12:cANSI
    set gfw=Yahei_Mono:h12:cGB2312
else
    let $WORK = expand('~/Dev/Sites')

    " Font
    set guifont=Monaco:h\ 16
endif

if exists("$WORK")
    cd $WORK
endif

set textwidth=79
set nu

if exists('+colorcolumn')
    set colorcolumn=81
endif

if has("gui_running")
    colorscheme peaksea
else
    colorscheme desert
endif

" For chinese encoding
set fileencodings=utf-8,gbk,gb2312,big5,chinese,latin-1

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

" map <leader>ct :cd ~/Desktop/Todoist/todoist<CR>
" map <leader>cw :cd ~/Desktop/Wedoist/wedoist<CR>

language message zh_CN.UTF-8

" Indent Tab
noremap <Tab> v>
noremap <s-tab> v<
vnoremap <tab> >gv
vnoremap <s-tab> <gv

" Quit window on <leader>q
nnoremap <Leader>q :q<CR>

" ------------------------------------------------------------------------------
" My Plugins
" ------------------------------------------------------------------------------
"
"
"
"
"
" ------------------------------------------------------------------------------
" My FileType
" ------------------------------------------------------------------------------

au FileType php setl shiftwidth=2
au FileType php setl tabstop=2
