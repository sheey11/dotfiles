set number
set mouse=
set relativenumber
set backspace=indent,eol,start

" background color of losed focus window
:hi ColorColumn ctermbg=0 guibg=Black

" background color of auto compeletion window
highlight Pmenu ctermfg=15 ctermbg=0 guifg=#ffffff guibg=#000000

" show existing tab with 4 spaces width
set tabstop=4
" when indenting with '>', use 4 spaces width
set shiftwidth=4
" On pressing tab, insert 4 spaces
set expandtab

" set termwinsize=10x0

if $TERM_PROGRAM =~ "iTerm"
    let &t_SI = "\<Esc>]50;CursorShape=1\x7"
    let &t_EI = "\<Esc>]50;CursorShape=1\x7"
endif

let g:airline_powerline_fonts = 1
set nowrap

syntax on
filetype plugin indent on

if exists("g:neovide")
    runtime config/neivide.vim
endif
