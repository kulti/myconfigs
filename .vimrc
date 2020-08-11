filetype on
set nocompatible

set wildmode=longest,list
set history=256
set autowrite
set ruler
set nu
set nowrap
set timeoutlen=250

set pastetoggle=<F3>
inoremap jk <esc>
noremap Y y$
nnoremap <C-W>m :resize<cr>:vertical resize<cr>
nnoremap <C-W><C-M> :resize<cr>:vertical resize<cr>
imap <C-w> <C-o><C-w>

" save without leaving input mode
nnoremap <F2> :up<cr>
inoremap <F2> <c-o>:up<cr>
nnoremap <C-L> :wa<cr>
inoremap <C-L> <c-o>:wa<cr>

" Clipboard copypaste
vnoremap <C-c> "+y
vnoremap <C-x> "+d

" Formatting
set ts=4
set bs=2
set shiftwidth=4
set autoindent
set smarttab
set expandtab
set nocp incsearch
autocmd BufWritePre * :%s/\s\+$//e

" Visual
set lcs=tab:>-,trail:~,extends:>,precedes:<
set list
set sidescroll=5
set novisualbell
set noerrorbells
set laststatus=2
set hlsearch

function! InsertStatuslineColor(mode)
  if a:mode == 'i'
    hi statusline guibg=magenta
  elseif a:mode == 'r'
    hi statusline guibg=blue
  else
    hi statusline guibg=red
  endif
endfunction

au InsertEnter * call InsertStatuslineColor(v:insertmode)
au InsertLeave * hi statusline guibg=green

hi statusline guibg=green
