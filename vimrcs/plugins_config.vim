"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Important: 
"       This requries that you install https://github.com/amix/vimrc !
"
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


""""""""""""""""""""""""""""""
" => Load pathogen paths
""""""""""""""""""""""""""""""
call pathogen#infect('~/.vim_runtime/sources_forked')
call pathogen#infect('~/.vim_runtime/sources_non_forked')
call pathogen#infect('~/.vim_runtime/sources_plugins')
call pathogen#helptags()

""""""""""""""""""""""""""""""
" => bufExplorer plugin
""""""""""""""""""""""""""""""
let g:bufExplorerDefaultHelp=0
let g:bufExplorerShowRelativePath=1
let g:bufExplorerFindActive=1
let g:bufExplorerSortBy='name'
map <leader>o :BufExplorer<cr>


""""""""""""""""""""""""""""""
" => MRU plugin
""""""""""""""""""""""""""""""
let MRU_Max_Entries = 400
let MRU_File = $HOME.'/.vim_runtime/temp_dirs/_vim_mru_files'
map <leader>f :MRU<CR>

""""""""""""""""""""""""""""""
" => YankRing
""""""""""""""""""""""""""""""
if has("win16") || has("win32")
    " Don't do anything
    let g:yankring_history_file = '/.vim_runtime/temp_dirs/yankring_history'
else
    let g:yankring_history_dir = '~/.vim_runtime/temp_dirs/'
endif


""""""""""""""""""""""""""""""
" => CTRL-P
""""""""""""""""""""""""""""""
let g:ctrlp_working_path_mode = 0

let g:ctrlp_map = '<c-f>'
map <c-b> :CtrlPBuffer<cr>

let g:ctrlp_max_height = 20
let g:ctrlp_max_files = 0
" TODO: About drupal common ignore
let g:ctrlp_custom_ignore = 'node_modules\|^\.DS_Store\|^\.git\|^\.coffee\|files'
let g:ctrlp_cache_dir = $HOME.'/.vim_runtime/temp_dirs/ctrlp'
let g:ctrlp_dotfiles = 0

""""""""""""""""""""""""""""""
" => snipMate (beside <TAB> support <CTRL-j>)
""""""""""""""""""""""""""""""
ino <c-j> <c-r>=snipMate#TriggerSnippet()<cr>
snor <c-j> <esc>i<right><c-r>=snipMate#TriggerSnippet()<cr>

""""""""""""""""""""""""""""""
" => Vim grep
""""""""""""""""""""""""""""""
let Grep_Skip_Dirs = 'RCS CVS SCCS .svn generated'
set grepprg=/usr/bin/grep\ -nH


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Nerd Tree
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
map <leader>nn :NERDTreeToggle<cr>
map <leader>nb :NERDTreeFromBookmark 
map <leader>nf :NERDTreeFind<cr>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => surround.vim config
" Annotate strings with gettext http://amix.dk/blog/post/19678
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
vmap Si S(i_<esc>f)
au FileType mako vmap Si S"i${ _(<esc>2f"a) }<esc>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" TagList
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let Tlist_Auto_Hightlight_Tag=1
let Tlist_Close_On_Select = 1
let Tlist_Compact_Format=0
let Tlist_Enable_Fold_Column=0
let Tlist_Show_One_File = 1
let Tlist_Use_Right_Window=1
let Tlist_Hightlight_Tag_On_BufEnter=1
let Tlist_GainFocus_On_ToggleOpen=1
let Tlist_Inc_Winwidth=0
let Tlist_Max_Submenu_Items=1
let Tlist_Max_Tag_Length=30
let Tlist_Process_File_Always=0
let Tlist_Show_Menu=0
let Tlist_Use_Horiz_Window=0
let Tlist_WinWidth=30
let Tlist_php_settings="php;c:class;i:interfaces;f:function;d:constant"
let Tlist_Sort_Type="name"

nnoremap <silent> <leader>tl :TlistToggle<CR>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Syntastic
" Syntastic
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:syntastic_check_on_open=1
" phpcs, tab 4个空格，编码参考使用CodeIgniter风格
let g:syntastic_phpcs_conf = "--tab-width=4 --standardCodeIgniter"
let g:syntastic_error_symbol='✗'
let g:syntastic_warning_symbol='⚠'

let g:syntastic_auto_jump=1

