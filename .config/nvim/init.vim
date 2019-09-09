call plug#begin('~/.vim/plugged')
Plug 'vimoutliner/vimoutliner'
Plug 'rkitover/vimpager'
Plug 'yuratomo/w3m.vim'
Plug 'godlygeek/tabular'
Plug 'gabrielelana/vim-markdown'
"Plug 'plasticboy/vim-markdown'
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-fugitive'
Plug 'vim-voom/VOoM'
Plug 'mcchrish/nnn.vim'
Plug 'dhruvasagar/vim-table-mode'
Plug 'junegunn/goyo.vim'
Plug 'vimwiki/vimwiki'
Plug 'junegunn/limelight.vim'
"Plug 'tbabej/taskwiki'
"Plug 'powerman/vim-plugin-AnsiEsc'
Plug 'majutsushi/tagbar'
Plug 'xarthurx/taskwarrior.vim'
Plug 'vim-airline/vim-airline'
Plug 'Shougo/unite.vim'
Plug 'lervag/vimtex'
call plug#end()

colorscheme pablo
set autoindent


" Bindings
let mapleader = ","
"Search for <++>.  Stolen from Luke Smith's vim config
nnoremap wq :w<CR>
ino wq <ESC>:w<CR>

"Search for <++>.  Stolen from Luke Smith's vim config
nnoremap <Leader><Leader> /<++><CR>cf>
ino <Leader><Leader> <ESC>/<++><CR>cf>

" Change current word
ino ciw <ESC>ciw
ino ciW <ESC>ciW

" List all the searches
nnoremap <Leader>// :g//#<Left><Left>
ino <Leader>// <ESC>:g//#<Left><Left>
"
" vimgrep.
nnoremap <Leader>/, :vimgrep  %<left><left>
ino <Leader>/, <ESC>:vimgrep  %<left><left>

" Escape usign this. Stoeln from spacemacs
imap fd <ESC>
nmap fd :noh<CR>

" Error bindings
nnoremap <C-j> :cnext<CR>
ino <C-j> <ESC>:cnext<CR>

"nnoremap <C-k> :cprevious<CR>
nnoremap <C-k> <ESC>:cprevious<CR>
ino <C-k> <ESC>:cprevious<CR>


nnoremap <Leader>eo :cw<CR> 
ino <Leader>eo <ESC>:cw<CR> 

nnoremap <Leader>ec :cclose<CR> 
ino <Leader>ec <ESC>:cclose<CR> 

nnoremap <Leader>t<++> :<++><CR> 
ino <Leader>t<++> <ESC>:<++><CR> 

" t is the leader
nnoremap <Leader>tc :tabnew<CR> 
ino <Leader>tc <ESC>:tabnew<CR> 

nnoremap <Leader>tp :tabp<CR> 
ino <Leader>tp <ESC>:tabp<CR> 

nnoremap <Leader>tn :tabn<CR> 
ino <Leader>tn <ESC>:tabn<CR> 

nnoremap <Leader>td :tabclose<CR> 
ino <Leader>td <ESC>:tabclose<CR> 


" VIm pager EYS
runtime macros/less.vim


set nocompatible
filetype plugin on
filetype plugin indent on
syntax on
set incsearch
set hlsearch
let g:vimwiki_global_ext = 1
"autocmd BufNew,BufNewFile,BufRead *.md,*.markdown :setfiletype markdown






"let g:instant_markdown_slow = 1
"let g:instant_markdown_autostart = 0
"let g:instant_markdown_open_to_the_world = 1 
"let g:instant_markdown_allow_unsafe_content = 1
"let g:instant_markdown_allow_external_content = 0
"let g:instant_markdown_mathjax = 1

let g:vimwiki_list = [  {'path': '~/Task/',  'ext': '.wiki'},  {'path': '/home/zaki/Wiki/Lit/',  'ext': '.wiki'},  {'path': '/home/zaki/Wiki/CodeNotes/',  'ext': '.wiki'}, {'path': '/home/zaki/Wiki/Notes/',  'ext': '.wiki'} ]
syntax enable
set number


set background=dark
" Color name (:help cterm-colors) or ANSI code
let g:limelight_conceal_ctermfg = 'gray'
let g:limelight_conceal_ctermfg = 240
set rnu nu

set t_Co=256


" Disable default mappings
let g:nnn#set_default_mappings = 0

" Then set your own
"nnoremap <silent> <leader>N :NnnPicker<CR>
nnoremap <silent> <leader>n :NERDTree<CR>

" BN
nnoremap <leader>b :buffers<CR>


"let g:vimwiki_folding='list'


"Autocmd commands
autocmd BufwritePost *py w ! python %
autocmd BufwritePost *hs w ! runhaskell %
"autocmd BufwritePost *sh w ! bash %
autocmd BufwritePost *Bar w ! ./% | lemonbar -p
autocmd BufwritePost *R w ! Rscript ./% 
"autocmd BufwritePost *R w ! Rscript ./% | less

let g:taskwarrior_cmd = 'task'








" Stole from Plug 'leifdenby/vim-spellcheck-toggle'
" Spell has to always be on to support word completion, so instead we toggle
" " the highlight
" Spell has to always be on to support word completion, so instead we toggle
" the highlight



function! ToggleSpell()
  if !exists("g:showingSpell")
    let g:showingSpell=0
  endif

  if g:showingSpell==0
    let g:showingSpell=1
    set nospell
  else
    let g:showingSpell=0
    set spell
  endif
endfunction


" Gstatus
nnoremap <F1> :Gstatus <CR>
" Voom binding
nnoremap <F2> :Voom 
" Taskwarrior binding
nnoremap <F4> :TW<CR>
" Setting up funciton to disblae/renable spell check
nnoremap <F3> :call ToggleSpell()<CR>
" Bunch of mkae shit
nnoremap <F5> : make  <CR>


