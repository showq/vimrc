" ------------------------------------------------------------------------------
" My basic settings
"
" ------------------------------------------------------------------------------
    let g:iswin=0

    if has('win16') || has('win32') || has('win64')
        let g:iswin = 1
    endif

    if g:iswin
        let $WORK = expand('D:/Dev/Htdocs')

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


    " My information
    iab xname ShOwQ<showqonline#gmail dot com>
"""""""""""""""""""""""""
" Special settings
if g:iswin
    let Tlist_Ctags_Cmd = "D:/Dev/Tools/ctags/ctags.exe"
    map <F12> :!ctags --langmap=php:.engine.inc.module.theme.php --php-kinds=cdfi --lanuages=php --recurse<CR>
else
    let Tlist_Ctags_Cmd = '/usr/local/bin/ctags'
endif

" ------------------------------------------------------------------------------
" My map
" ------------------------------------------------------------------------------
    " Fixes common typos
    command W w
    command Q q
    map <F1> <Esc>
    map <F1> <Esc>

    " Make line completion easier
    imap <C-l> <C-x><C-l>

    " Equal Size Windows
    " nmap <silent> <leader>w= :wincmd =<CR>
    " Swap Windows
    nmap <silent> <leader>wx :wincmd x<CR>

    language message zh_CN.UTF-8

    " Indent Tab
    noremap <Tab> v>
    noremap <s-tab> v<
    vnoremap <tab> >gv
    vnoremap <s-tab> <gv

    " Quit window on <leader>q
    nnoremap <Leader>q :q<CR>

    " Quick Switch filetype
    " Some nice mapping to witch syntax ( useful if one mixes different languages
    " in one file )
    map <leader>1 :set syntax=php<CR>
    map <leader>2 :set syntax=xhtml<CR>
    map <leader>3 :set syntax=python<CR>
    map <leader>4 :set ft=javascript<CR>
    map <leader>$ :syntax sync fromstart<CR>

    """"""""""""""""""""
    " Switch Fileformats
    """"""""""""""""""""
    nmap <leader>fd :se ff=dos<CR>
    nmap <leader>fu :se ff=unix<CR>

    """"""""""""""""""""
    " Switch nu, rnu 
    """"""""""""""""""""
    nmap <leader>nu :set nu<CR>
    nmap <leader>rn :set rnu<CR>

    """"""""""""""""""""
    " Switch to current dir
    """"""""""""""""""""
    map <silent> <leader>cd :cd %:p:h<CR>


" FIXED
" 修改一些vim中常用文件的位置，保持$HOME下的干净
set viminfo='50,<1000,s100,:0,n~/.vim_runtime/temp_dirs/_viminfo
" 取消对,t,的快捷键，原因: 冲突
unmap <leader>t,
