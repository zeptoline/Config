set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'airblade/vim-gitgutter'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'majutsushi/tagbar'
Plugin 'vim-scripts/VisIncr'
"Plugin 'vim-scripts/Align'
Plugin 'vim-scripts/DoxygenToolkit.vim'
Plugin 'vimperator/vimperator.vim'
Plugin 'nanotech/jellybeans.vim'
Plugin 'altercation/vim-colors-solarized'
"Plugin 'Valloric/YouCompleteMe'
call vundle#end()

"filetype plugin indent on
let mapleader=','

nnoremap <C-n> :TagbarToggle<CR>
let g:airline_theme='raven'

"set ignorecase
set hlsearch
set noincsearch

vnoremap // y/<C-R>"<CR>
set virtualedit=block
nmap <A-o> o<Esc>k

set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab

"set autoindent
set smartindent

map <PageUp> <C-u>
map <PageDown> <C-d>
imap <PageUp> <C-u>
imap <PageDown> <C-d>

autocmd FileType make setlocal noexpandtab

set confirm
set noautowriteall
set noautowrite
set mouse=
set visualbell
set t_vb=
set showcmd
set lazyredraw
set showmatch

nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

set splitbelow
set splitright

set tabpagemax=900

"nnoremap <F7>     :tabp<CR>
"nnoremap <F8>     :tabn<CR>
nnoremap <F7>   :tabmove -1<CR>
nnoremap <F8>   :tabmove +1<CR>

nnoremap <F11>   gT
nnoremap <F12>   gt

set noruler
set laststatus=2

syntax on
syntax enable

set number
"set relativenumber
set wildmenu
set wildmode=list:longest
"set cursorline

set background=dark
set colorcolumn=80,130
set formatoptions+=t
set textwidth=0

colorscheme jellybeans

"------------------------------------------------------------------------------
"   Highlighting
"------------------------------------------------------------------------------

:highlight ExtraWhitespace ctermbg=brown guibg=red
:match ExtraWhitespace /\s\+$/
:autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
:autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
:autocmd InsertLeave * match ExtraWhitespace /\s\+$/

:autocmd BufWinLeave * call clearmatches()

"------------------------------------------------------------------------------
"   Invisible characters
"------------------------------------------------------------------------------
set list
"set listchars=tab:▸·,nbsp:⏎
set listchars=tab:▸·,nbsp:⏎,trail:␣
"set listchars=tab:▸·,nbsp:⏎,trail:·

"------------------------------------------------------------------------------
"   Tools
"------------------------------------------------------------------------------

" Remove extra space
command CleanSpace  :%s/\s\+$//g

" Delete current file
command DelCurr       :call delete(expand('%'))
command BDelCurr      :call delete(expand('%')) | bdelete!

"==============================================================================
"   Unsorted
"==============================================================================

nnoremap j gj
nnoremap k gk

nnoremap gV `[v`]


autocmd BufNewFile,BufRead *.bb   set syntax=bitbake
autocmd BufNewFile,BufRead *.bbclass   set syntax=bitbake
autocmd BufNewFile,BufRead *.bbappend   set syntax=bitbake
autocmd BufNewFile,BufRead *.inc   set syntax=bitbake
autocmd BufNewFile,BufRead *.txt   set syntax=sh
autocmd BufNewFile,BufRead *.adoc  set textwidth=80

nnoremap - kzz
nnoremap + jzz
