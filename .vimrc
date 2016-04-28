"----------------------------------------
" dein.vim
"----------------------------------------
let s:dein_dir = expand('~/.vim/dein')
let s:dein_repo_dir = s:dein_dir . '/repos/github.com/Shougo/dein.vim'

if &runtimepath !~# '/dein.vim'
  if !isdirectory(s:dein_repo_dir)
    execute '!git clone https://github.com/Shougo/dein.vim' s:dein_repo_dir
  endif
  execute 'set runtimepath^=' . fnamemodify(s:dein_repo_dir, ':p')
endif

if dein#load_state(s:dein_dir)
  call dein#begin(s:dein_dir)

  let s:toml      = s:dein_dir . '/dein.toml'
  let s:lazy_toml = s:dein_dir . '/dein_lazy.toml'

  call dein#load_toml(s:toml,      {'lazy': 0})
  call dein#load_toml(s:lazy_toml, {'lazy': 1})

  call dein#end()
  call dein#save_state()
endif

if dein#check_install()
  call dein#install()
endif

"----------------------------------------
" General Settings
"----------------------------------------
set nocompatible
syntax on

"----------------------------------------
" Search Settings
"----------------------------------------
set ignorecase
set smartcase
set incsearch
set hlsearch

"----------------------------------------
" Editor Settings
"----------------------------------------
set infercase
set hidden
set switchbuf=useopen
set showmatch
set matchtime=1
set matchpairs& matchpairs+=<:>
set backspace=indent,eol,start

"----------------------------------------
" Display Settings
"----------------------------------------
set list
set wrap
set textwidth=0
set noerrorbells
set novisualbell
set t_vb=
set display=lastline

