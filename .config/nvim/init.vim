call plug#begin()
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'vim-airline/vim-airline-themes'
Plug 'vim-airline/vim-airline'
Plug 'scrooloose/nerdtree'
Plug 'arcticicestudio/nord-vim'
call plug#end()
"add fzf to runtimepath
set rtp+=~/.fzf


let mapleader="\<SPACE>"

set shell=/bin/zsh
let g:coc_node_path = $HOME.'/.nvm/versions/node/v12.16.2/bin/node'
" theme
if has('nvim') || has('termguicolors')
    set termguicolors
  endif
syntax enable
colorscheme nord

" theme end
set showmatch
set number
set formatoptions+=o
set expandtab
set tabstop=2
set shiftwidth=2
set nojoinspaces
set tw=80
let g:airline#extensions#tabline#fnamemod = ':t'
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#tabline#right_sep = ' '
let g:airline#extensions#tabline#right_alt_sep = '|'
let g:airline_left_sep = ' '
let g:airline_left_alt_sep = '|'
let g:airline_right_sep = ' '
let g:airline_right_alt_sep = '|'
let g:airline_theme= 'nord'
map <Leader>o :NERDTreeToggle<CR>

" Terminal Function
let g:term_buf = 0
let g:term_win = 0

nnoremap <C-p> :FZF<Cr>

" --column: Show column number
" --line-number: Show line number
" --no-heading: Do not show file headings in results
" --fixed-strings: Search term as a literal string
" --ignore-case: Case insensitive search
" --no-ignore: Do not respect .gitignore, etc...
" --hidden: Search hidden files and folders
" --follow: Follow symlinks
" --glob: Additional conditions for search (in this case ignore everything in the .git/ folder)
" --color: Search color options
command! -bang -nargs=* Find call fzf#vim#grep('rg --column --line-number --no-heading --fixed-strings --ignore-case --no-ignore --hidden --follow --glob "!.git/*" --color "always" '.shellescape(<q-args>), 1, <bang>0)

if match($TERMCAP, 'Co#256:') == 0 || match($TERMCAP, ':Co#256:') > 0           
    set t_Co=256                                                                
endif
