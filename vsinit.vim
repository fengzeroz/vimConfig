syntax on
filetype plugin indent on

set hidden
set encoding=utf-8
set hlsearch
exec "nohlsearch"
set incsearch
"set ignorecase
set smartcase
set autochdir
set backspace=indent,eol,start
set updatetime=300
"set signcolumn=yes
"
""some language server have issue with backup files
set nobackup
set nowritebackup
"
""don't give | ins-completion-menu | messages.
set shortmess+=c

set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4
set ts=4
set autoindent

set history=200
set scrolloff=20
set path+=./**

let mapleader=" "
noremap <LEADER><CR> :nohlsearch<CR>

nnoremap <LEADER>l <C-w>l
nnoremap <LEADER>k <C-w>k
nnoremap <LEADER>j <C-w>j
nnoremap <LEADER>h <C-w>h

nnoremap sl :set splitright<CR>:vsplit<CR>
nnoremap sh :set nosplitright<CR>:vsplit<CR>
nnoremap sk :set nosplitbelow<CR>:split<CR>
nnoremap sj :set splitbelow<CR>:split<CR>

nnoremap <left> :vertical resize-5<CR>
nnoremap <right> :vertical resize+5<CR>

nnoremap fj :cnext<CR>
nnoremap fk :cprev<CR>

call plug#begin('~/.nvim/plugged')

Plug 'neoclide/coc.nvim', {'branch': 'release'}

call plug#end()


"coc.nvim plug
let g:coc_root_patterns = ['.git', 'CMakeLists.txt']
nmap <silent> <LEADER>gd <Plug>(coc-definition)
nmap <silent> <LEADER>gt <Plug>(coc-type-definition)
nmap <silent> <LEADER>gi <Plug>(coc-implementation)
nmap <silent> <LEADER>fr <Plug>(coc-references)
nmap <leader>rn <Plug>(coc-rename)
autocmd CursorHold * silent call CocActionAsync('highlight')

nnoremap <silent>K :call <SID>show_documentation()<CR>

function! s:show_documentation()
    if &filetype == 'vim'
        execute 'h '.expand('<cword>')
    else
        call CocAction('doHover')
    endif
endfunction

nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)
nmap <leader>qf <Plug>(coc-fix-current)
nmap <silent> <C-d> <Plug>(coc-range-select)
xmap <silent> <C-d> <Plug>(coc-range-select)