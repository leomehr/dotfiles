" easy save/quit
command WQ wq
command Wq wq
command W w
command Q q

" tab stuff
set tabstop=2
set shiftwidth=2
set expandtab
set smarttab

set hlsearch " highlight search

filetype plugin on
filetype indent on
syn on

" syntax recognition
au BufRead,BufNewFile *.md set syntax=markdown

" good habit
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>

" fancy escape
imap jk <Esc>

" trailing whitespace
highlight ExtraWhitespace ctermbg=red
match ExtraWhitespace /\s\+$/
autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd InsertLeave * match ExtraWhitespace /\s\+$/
autocmd BufWinLeave * call clearmatches()
command Killwhite %s/\s\+$//

" long line coloring
highlight LineLimit ctermbg=white
2mat LineLimit '\%81v.'

" move lines up and down
" use inoremap and vnoremap for insert and visual modes respectively
"nnoremap <c-j> :m .+1<CR>==
"nnoremap <c-k> :m .-2<CR>==

" highlight current word
" nnoremap <space> bve

" line numbers
set number
set relativenumber

" Coloring and such
set background=dark
command Light set background=dark
command Dark set background=light

" incremental search
set incsearch

"spelling
command Spelling set spell spelllang=en_us
command NoSpelling set nospell

" Remove highlighting with Ctrl+?
nnoremap <c-?> :noh<CR>

function! NumberToggle()
  if(&relativenumber == 1)
    set nonumber
    set norelativenumber
  else
    set number
    set relativenumber
  endif
endfunc

nnoremap <C-n> :call NumberToggle()<cr>

" copying to system clipboard
set clipboard=unnamedplus

" autocomplete brackets
" TODO: do this only in c,c++, or java files
"inoremap { {<CR>}<Esc>ko

" ; becomes :
:nmap ; :

" Vim Pathogen (for vim/bundle)

execute pathogen#infect()

" copy all lines in file
command All %y

" switch between .cc and .h files
" see http://vim.wikia.com/wiki/Easily_switch_between_source_and_header_file
function! SwitchSourceHeader()
  "update!
  if (expand ("%:e") == "cc")
    find %:t:r.h
  else
    find %:t:r.cc
  endif
endfunction

nmap ,s :call SwitchSourceHeader()<CR>
