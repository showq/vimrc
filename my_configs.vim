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
" My Settings
" ------------------------------------------------------------------------------


" ------------------------------------------------------------------------------
" My Plugins
" ------------------------------------------------------------------------------

" TODO
" TagList
" Supertab
" 

" ------------------------------------------------------------------------------
" My FileTypes
" ------------------------------------------------------------------------------

" PHP
au FileType php setl shiftwidth=2
au FileType php setl tabstop=2

" TODO analyse drupal.vim
" Drupal
if has("autocmd")
  " Drupal *.module and *.install files.
  augroup module
    autocmd BufRead,BufNewFile *.module set filetype=php
    autocmd BufRead,BufNewFile *.install set filetype=php
    autocmd BufRead,BufNewFile *.test set filetype=php
    autocmd BufRead,BufNewFile *.inc set filetype=php
    autocmd BufRead,BufNewFile *.profile set filetype=php
    autocmd BufRead,BufNewFile *.view set filetype=php
  augroup END
endif

" Obj-C

" XHTML+CSS

" ------------------------------------------------------------------------------
" My key map
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

" TODO Switch nu, rnu

" Some nice mapping to witch syntax ( useful if one mixes different languages
" in one file )
map <leader>1 :set syntax=c<CR>
map <leader>2 :set syntax=xhtml<CR>
map <leader>3 :set syntax=python<CR>
map <leader>4 :set ft=javascript<CR>
" map <leader>$ :syntax sync fromstart<CR>


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Fileformats
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nmap <leader>fd :se ff=dos<CR>
nmap <leader>fu :se ff=unix<CR>

" Switch to current dir
map <silent> <leader>cd :cd %:p:h<CR>

" My information
iab xname ShOwQ<showqonline@gmail.com>

" Enable syntax
if has("autocmd") && exists("+omnifunc")
    autocmd Filetype *
        \if &omnifunc == "" | 
        \   setlocal omnifunc=syntaxcomplete#Complete |
        \endif
endif

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" cscope setting
"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
if has("cscope")
    if g:iswin
        set csprg=cscope
    else
        set csprg=/usr/bin/cscope
    endif
    set csto=1
    set cst
    set nocsverb
    " add any database in currrent directory
    if filereadable("cscope.out")
        cs add cscope.out
    endif
    set csverb
endif

nmap <C-@>s :cs find s <C-R>=expand("<cword>")<CR><CR>
nmap <C-@>g :cs find g <C-R>=expand("<cword>")<CR><CR>
nmap <C-@>c :cs find c <C-R>=expand("<cword>")<CR><CR>
nmap <C-@>t :cs find t <C-R>=expand("<cword>")<CR><CR>
nmap <C-@>e :cs find e <C-R>=expand("<cword>")<CR><CR>
nmap <C-@>f :cs find f <C-R>=expand("<cfile>")<CR><CR>
nmap <C-@>i :cs find i ^<C-R>=expand("<cfile>")<CR><CR>
nmap <C-@>d :cs find d <C-R>=expand("<cword>")<CR><CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" TagList
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
if g:iswin
    let Tlist_Ctags_Cmd = '/usr/bin/ctags'
else
    let Tlist_Ctags_Cmd = '/usr/bin/ctags'
endif
let Tlist_Auto_Hightlight_Tag=1
let Tlist_Auto_Open=0
let Tlist_Auto_Update=1
let Tlist_Close_On_Select = 1
let Tlist_Compact_Format=0
let Tlist_Display_Prototype=0
let Tlist_Display_Tag_Scope=1
let Tlist_Enable_Fold_Column=0
let Tlist_Show_One_File = 1
let Tlist_Use_Right_Window=1
let Tlist_File_Fold_Auto_Close=0
let Tlist_Hightlight_Tag_On_BufEnter=1
let Tlist_GainFocus_On_ToggleOpen=1
let Tlist_Inc_Winwidth=0
let Tlist_Max_Submenu_Items=1
let Tlist_Max_Tag_Length=30
let Tlist_Process_File_Always=0
let Tlist_Show_Menu=0
let Tlist_Use_Horiz_Window=0
let Tlist_WinWidth=30
let Tlist_php_settings="php;c:class;i:interfaces;d:constant;f:function'
let Tlist_Sort_Type="name"

map <F12> :!ctags --langmap=php:.engine.inc.module.theme.php --php-kinds=cdfi --lanuages=php --recurse<CR>
nnoremap <silent> <leader>tl :TlistToggle<CR>


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Filetype generic
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
  " TODO
  "
  
  """"""""""""""""""""""""""""
  " HTML related
  """"""""""""""""""""""""""""
  let xml_use_xhtml = 1
  
  " To HTML
  let html_use_css = 1
  let html_number_lines = 0
  let use_xhtml = 1


  """"""""""""""""""""""""""""
  " C/C++
  """"""""""""""""""""""""""""
  autocmd FileType c,cpp map <buffer> <leader><space> :make<CR>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Syntastic
"""
let g:syntastic_check_on_open=1
" phpcs, tab 4个空格，编码参考使用CodeIgniter风格
let g:syntastic_phpcs_conf = "--tab-width=4 --standardCodeIgniter"



