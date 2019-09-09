call plug#begin('~/.vim/plugged')
Plug 'vimoutliner/vimoutliner'
Plug 'spolu/dwm.vim'
Plug 'dracula/vim'
" Plug 'vim-airline/vim-airline'
Plug 'junegunn/fzf.vim'
Plug 'tpope/vim-commentary'
Plug 'gabrielelana/vim-markdown'
"Plug 'plasticboy/vim-markdown'
Plug 'masukomi/vim-markdown-folding'
Plug 'vifm/vifm.vim'
Plug 'lervag/vim-rmarkdown'
Plug 'scrooloose/nerdtree'
"Plug 'tpope/vim-fugitive'
Plug 'jreybert/vimagit'
Plug 'vim-voom/VOoM'
Plug 'majutsushi/tagbar'
Plug 'lervag/vimtex'
Plug 'kovetskiy/sxhkd-vim'
Plug 'Konfekt/vim-alias'
"Plug '<++>/<++>'

call plug#end()

colorscheme zellner
set autoindent
set  fdm=marker
set bg=dark
" VIm pager EYS
"runtime macros/less.vim


filetype plugin on
filetype plugin indent on
syntax on
set nocompatible
set incsearch
set hlsearch
set cursorline
set linebreak
set cursorcolumn


" Bindings
let mapleader = ","

" Save wihtout comamnd line
nnoremap  ds :FZF<CR>
nnoremap vie :EditVifm<CR>
nnoremap vis :SplitVifm<CR>
nnoremap vid :DiffVifm<CR>
nnoremap vit :TabVifm<CR>
" Save wihtout comamnd line
nnoremap qw :w<CR>
ino qw <ESC>:w<CR>


"Search for <++>.  Stolen from Luke Smith's vim config
nnoremap <Leader><Leader> /<++><CR>:nohcf>
ino <Leader><Leader> <ESC>/<++><CR>:nohcf>

"Just cycle through <++>
nnoremap <Leader>. /<++><CR>
ino <Leader>. <ESC>/<++><CR>

" Change current word
ino ciw <ESC>ciw
ino ciW <ESC>ciW

" List all the searches
nnoremap <Leader>// :g//#<Left><Left>
ino <Leader>// <ESC>:g//#<Left><Left>
"

" Escape usign this. Stoeln from spacemacs

" Escape usign this. Stoeln from spacemacs
imap fd <ESC>
nmap gh :noh<CR>

" Indnet Line
imap <Leader>> <ESC>>>i
imap <Leader>< <ESC><<i


" Quit using Q
ino QQ <ESC>:wq<CR>
nnoremap Q :wq<CR>

" So i dont' ahve to hit :e all the fucking time
nnoremap <Leader>E :e 

" Get out of temrinal mode
:tnoremap fd <C-\><C-n>

" vimgrep.
nnoremap <Leader>/, :vimgrep  %<left><left>
ino <Leader>/, <ESC>:vimgrep  %<left><left>
nnoremap <Leader>?, :lvimgrep  %<left><left>
ino <Leader>?, <ESC>:lvimgrep  %<left><left>

" vimgrep.
nnoremap <Leader>/g :grep  %<left><left>
ino <Leader>/g <ESC>:grep  %<left><left>
nnoremap <Leader>/G :lgrep  %<left><left>
ino <Leader>/G <ESC>:lgrep  %<left><left>

" Error bindings
nnoremap <C-p> :cnext<CR>
ino <C-p> <ESC>:cnext<CR>
nnoremap <C-o> <ESC>:cprevious<CR>
nnoremap <Leader>ceo :cw<CR> 
ino <Leader>ceo <ESC>:cw<CR> 
nnoremap <Leader>cec :cclose<CR> 
ino <Leader>cec <ESC>:cclose<CR> 

" Error bindings
nnoremap A-<C-p> :lnext<CR>
ino A-<C-p> <ESC>:lnext<CR>
nnoremap A-<C-o> <ESC>:lprevious<CR>
nnoremap <Leader>leo :lw<CR> 
ino <Leader>leo <ESC>:lw<CR> 
nnoremap <Leader>lel :lclose<CR> 
ino <Leader>lec <ESC>:lclose<CR> 


nnoremap <Leader>tc :tabnew<CR> 
ino <Leader>tc <ESC>:tabnew<CR> 

nnoremap <Leader>tp :tabp<CR> 
ino <Leader>tp <ESC>:tabp<CR> 

nnoremap <Leader>tn :tabn<CR> 
ino <Leader>tn <ESC>:tabn<CR> 

nnoremap <Leader>td :tabclose<CR> 
ino <Leader>td <ESC>:tabclose<CR> 

" Then set your own
"nnoremap <silent> <leader>N :NnnPicker<CR>
nnoremap <silent> <leader>n :NERDTree<CR>

" BN
nnoremap <leader>B :buffers<CR>
nnoremap <leader>b :buffer 


" DWM
nnoremap <leader>dr :call DWM_Rotate(0)<CR>
nnoremap <leader>dR :call DWM_Rotate(1)<CR>


let g:vimwiki_global_ext = 1
autocmd BufNewFile,BufReadPost *.rmd set filetype=markdown
autocmd FileType markdown set foldexpr=NestedMarkdownFolds()








"let g:instant_markdown_slow = 1
"let g:instant_markdown_autostart = 0
"let g:instant_markdown_open_to_the_world = 1 
"let g:instant_markdown_allow_unsafe_content = 1
"let g:instant_markdown_allow_external_content = 0
"let g:instant_markdown_mathjax = 1

let g:vimwiki_list = [  {'path': '~/Wiki/Vimwiki/CodeShit/',  'ext': '.wiki'},  {'path': '/home/zaki/Wiki/Vimwiki/Tasks/',  'ext': '.wiki'} ]
syntax enable
set number


" Color name (:help cterm-colors) or ANSI code
"let g:limelight_conceal_ctermfg = 'gray'
"let g:limelight_conceal_ctermfg = 240
set rnu nu
let g:fff#split = "30vnew"

set t_Co=256


" Disable default mappings
let g:nnn#set_default_mappings = 0



"let g:vimwiki_folding='list'


"Autocmd commands
"
 au BufNewFile,BufRead *.ldg,*.ledger setf ledger | comp ledger

"autocmd BufwritePost *py w ! python % | less
"autocmd BufwritePost ~/.Xresources w ! xrdb %  && urxvt
"autocmd BufwritePost *hs w ! runhaskell %
""autocmd BufwritePost *sh w ! bash %
"autocmd BufwritePost *Bar w ! ./% | lemonbar -p
""autocmd BufwritePost *R w ! Rscript ./% 
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
    nmap } ]sz=
    nmap { [sz=
  endif
  if g:showingSpell==0
    let g:showingSpell=1
    set nospell
    unmap }
    unmap {
  else
    let g:showingSpell=0
    set spell
    nmap } ]sz=
    nmap { [sz=
  endif
endfunction

" " Gstatus
" nnoremap <F2> :Gstatus <CR>

" Tag shit
nnoremap <F3> :TagbarToggle<CR> :wincmd l <CR>
" Bunch of mkae shit
nnoremap <F4> :w<CR> :!clear<CR> :  make! -s  <CR>
" Voom binding
nnoremap <F5> :Voom 
"nnoremap <F5> :w :!clear && rm run && g++ % -o run && ./run
" Taskwarrior binding
nnoremap <F6> :TW<CR>
" Setting up funciton to disblae/renable spell check
nnoremap <F7> :call ToggleSpell()<CR>

nnoremap <F8> :! clear && pandoc % -o %:r.pdf <CR>

"rmarkdown::render(%, 'pdf_document', 'output_file'='Temp.pdf')
nnoremap <F9> :! clear && echo "rmarkdown::render('%', 'pdf_document', 'output_file'='%:r.pdf')" \| R --vanilla  <CR>


set nocompatible
if has("autocmd")
	filetype plugin indent on
endif
