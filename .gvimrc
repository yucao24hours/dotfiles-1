"----------------------------------------
" .gvimrc 
"----------------------------------------
"----------------------------------------
" Run-Time Path Settings 
"----------------------------------------
if isdirectory($HOME . '/.vim') 
  let $MY_VIMRUNTIME = $HOME.'/.vim' 
elseif isdirectory($HOME . '\vimfiles') 
  let $MY_VIMRUNTIME = $HOME.'\vimfiles' 
elseif isdirectory($VIM . '\vimfiles') 
  let $MY_VIMRUNTIME = $VIM.'\vimfiles' 
endif 

"----------------------------------------
" Font Settings 
"----------------------------------------
if has('win32')
    set guifont=MeiryoKe_Gothic:h11
    set linespace=2
elseif has('mac')
    set guifont=Ricty:h16
    set linespace=3
elseif has('unix')
    set guifont=Ricty\ 12
    set linespace=3
endif

"----------------------------------------------------
" Solarized
"----------------------------------------------------
if has("gui_running")
    set background=light
    let g:solarized_contrast="normal"
    let g:solarized_visibility="low"
    colorscheme solarized
endif

