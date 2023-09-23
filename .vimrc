if !$TERM_PROGRAM =~ "Apple_Terminal"
  set termguicolors
endif
syntax on
set re=0
filetype on
colorscheme catppuccin_mocha
set laststatus=2

if !has('gui_running')
  set t_Co=256
endif

set noshowmode

let g:lightline = {'colorscheme': 'catppuccin_mocha'}

let g:javascript_plugin_jsdoc = 1

