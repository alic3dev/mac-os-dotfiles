set tabstop=2
set shiftwidth=0
set expandtab
set mouse=a

"syntax on
set number
set re=0
filetype on
"set laststatus=2

if !has('gui_running')
  set t_Co=256
endif

set noshowmode

autocmd FileType make set noexpandtab shiftwidth=8 softtabstop=0

