"-- PLUGINS --
call plug#begin('~/.vim/plugged')  " Specify a directory for plugins
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'morhetz/gruvbox'
"Plug 'ycm-core/YouCompleteMe'
Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'kien/ctrlp.vim'
Plug 'easymotion/vim-easymotion'
call plug#end()  " Initialize plugin system


"-- COMMON --
set number  " Номера строк

set expandtab  " Замена Tab пробелами
set tabstop=4  " Размер Tab-a
set shiftwidth=4
set smarttab
set smartindent

set hlsearch  " Подсветка слов при поиске
set incsearch " Инкрементальный поиск (с постепенным уточнением)

syntax enable  " on|off|enable  Подсветка синтаксиса

set encoding=utf-8
set list  " Отображение скрытых символов
set listchars=tab:→\ ,trail:·

set updatetime=100  "for vim-gitgutter

" Отключить клавиши со стрелками
noremap <Up> <nop>
noremap <Down> <nop>
noremap <Left> <nop>
noremap <Right> <nop>


"-- COLOR SCHEME --
" colorscheme monokai
" colorscheme darkblue
colorscheme gruvbox
set background=dark  " dark|light


"--  MAPPINGS --
let g:mapleader=','
map <C-n> :NERDTreeToggle<CR>
map <Leader> <Plug>(easymotion-prefix)

" Перемещение между окнами через CTRL+key
map <silent> <C-h> :call WinMove('h')<CR>
map <silent> <C-j> :call WinMove('j')<CR>
map <silent> <C-k> :call WinMove('k')<CR>
map <silent> <C-l> :call WinMove('l')<CR>

function! WinMove(key)
  let t:curwin = winnr()
  exec "wincmd ".a:key
  if (t:curwin == winnr())
    if(match(a:key, '[jk]'))
      wincmd v
    else
      wincmd s
    endif
    exec "wincmd ".a:key
  endif
endfunction


