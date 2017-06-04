syntax on
set autoindent
set expandtab

filetype plugin indent on
au FileType py set autoindent
au FileType py set smartindent
au FileType py set textwidth=79 " PEP-8 Friendly

set tabstop=8
set shiftwidth=4
set softtabstop=4
set nu

set vb t_vb=

set fdm=marker
set gfn=Monospace\ 14
set hlsearch
set csto=1
set ignorecase

set background=dark
" reasonable color scheme
:colo default
" :colo peachpuff
" :colo delek
" :colo zellner
" :colo murphy

" not so good...
" :colo desert
" :colo torte
" :colo blue
" :colo ron
" :colo slate
" :colo pablo
" :colo elflord


" Return to last edit position when opening files (You want this!)
autocmd BufReadPost *
\ if line("'\"") > 0 && line("'\"") <= line("$") |
\   exe "normal! g`\"" |
\ endif


"autocmd vimenter * NERDTree
set pastetoggle=<F9>   " no auto indent whey copy

hi clear

set guifont=Monospace\ 9
set lines=55 columns=170
set backspace=2
