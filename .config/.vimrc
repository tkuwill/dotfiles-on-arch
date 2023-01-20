" Plugins will be downloaded under the specified directory.
call plug#begin('~/.vim/plugged')
" other plugins
Plug 'mg979/vim-visual-multi', {'branch': 'master'}
Plug 'mattn/emmet-vim'
Plug 'tpope/vim-commentary'
Plug 'ap/vim-css-color'
" colortheme
Plug 'morhetz/gruvbox'
call plug#end()

" BACKGROUND COLOR SETTING  --------------------------------------------------------------- {{{


let g:gruvbox_contrast_light = 'hard'
colorscheme gruvbox
set background=light

set t_Co=256

" }}}

" General config --------------------------------------------------------------------------- {{{
set cursorline
set wildmenu
set splitbelow splitright
set ruler
set number
syntax on
set hlsearch
set ignorecase
set smartcase
set softtabstop=4
set listchars=tab:>~,space:.
set cindent
set ai
set shortmess-=S
" }}}

" set laststatus=2
" Some funky status bar code its seems
" https://stackoverflow.com/questions/9065941/how-can-i-change-vim-status-line-colour
" Formats the statusline ------------------------------------------------------------------- {{{
set laststatus=2            " set the bottom status bar

" function! ModifiedColor()
    " if &mod == 1
        " hi statusline guibg=White ctermfg=233 guifg=OrangeRed4 ctermbg=230
    " else
        " hi statusline guibg=White ctermfg=233 guifg=DarkSlateGray ctermbg=230
    " endif
" endfunction

" au InsertLeave,InsertEnter,BufWritePost   * call ModifiedColor()
" default the statusline when entering Vim
" hi statusline guibg=DarkSlateGray ctermfg=233 guifg=White ctermbg=230

set statusline=%F                           " file path and name
set statusline+=[%{strlen(&fenc)?&fenc:'none'}, "file encoding
set statusline+=%{&ff}] "file format
set statusline+=%y      "filetype
set statusline+=%h      "help file flag
set statusline+=[%{getbufvar(bufnr('%'),'&mod')?'modified':'saved'}]      
"modified flag

set statusline+=%r      "read only flag

set statusline+=\ %=                        " align left
set statusline+=Line:%l/%L[%p%%]            " line X of Y [percent of file]
set statusline+=\ Col:%c                    " current column
set statusline+=\ Buf:%n                    " Buffer number
"set statusline+=\ [%b][0x%B]\               " ASCII and byte code under cursor

" }}}

" Encoding fixing -------------------------------------------------------------------------- {{{

set fileencodings=ucs-bom,utf-8,cp936,gb18030,big5,euc-jp,euc-kr,latin1

set termencoding=utf-8

set fileencoding=utf-8

set encoding=utf-8

" }}}

" Folding for markdown
let g:markdown_folding = 1
au FileType markdown setlocal foldlevel=1

" mapleleader config to space (default: \)
" let mapleader = "\<space>"
" keymapping

nnoremap <C-L> :noh<cr>
" nnoremap <F11> :set paste<cr>
" nnoremap <F12> :set nopaste<cr>
nnoremap <F8> :set nowrap<cr>
nnoremap <F9> :set wrap<cr>
nnoremap <F5> :set background=light<cr>
nnoremap <F4> :set background=dark<cr>
