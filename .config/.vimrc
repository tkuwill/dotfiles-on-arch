" Plugins will be downloaded under the specified directory. {{{
call plug#begin('~/.vim/plugged')
" other plugins
Plug 'mg979/vim-visual-multi', {'branch': 'master'}
Plug 'mattn/emmet-vim'
Plug 'tpope/vim-commentary'
Plug 'ap/vim-css-color'
Plug 'Yggdroot/indentLine'
Plug 'preservim/nerdtree'
Plug 'justinmk/vim-sneak'
Plug 'jeffkreeftmeijer/vim-numbertoggle'
" Add maktaba and codefmt to the runtimepath.
" (The latter must be installed before it can be used.)
Plug 'google/vim-maktaba'
Plug 'google/vim-codefmt'
" Also add Glaive, which is used to configure codefmt's maktaba flags. See
" `:help :Glaive` for usage.
Plug 'google/vim-glaive'
" colortheme
Plug 'NLKNguyen/papercolor-theme'
" vim-devicon SHOULD be the LAST one
Plug 'ryanoasis/vim-devicons'
call plug#end()
" the glaive#Install() should go after the call plug#end()"
call glaive#Install()
" Optional: Enable codefmt's default mappings on the <Leader>= prefix.
Glaive codefmt plugin[mappings]
Glaive codefmt google_java_executable="java -jar /path/to/google-java-format-VERSION-all-deps.jar"
" auto formatting
augroup autoformat_settings
  autocmd FileType sh AutoFormatBuffer shfmt
  autocmd FileType html,css,sass,scss,less,json AutoFormatBuffer js-beautify
augroup END


" }}}
" indentline config (disable the conceal for JSON and markdown)
let g:vim_json_conceal=0
let g:markdown_syntax_conceal=0

" Gvim config
"if has('gui_running')
"  set guioptions-=T  " no toolbar
"  if has('gui_win32')
"    set guifont=SauceCodeProNerdFontBold:h22:cANSI
"  else
"    set guifont=Sauce\ Code\ Pro\ Nerd\ Font\ Bold\ 22
"
"  endif
"endif

" BACKGROUND COLOR SETTING  --------------------------------------------------------------- {{{


set background=light
colorscheme PaperColor
set t_Co=256

" }}}

" General config --------------------------------------------------------------------------- {{{
" hi CursorLine ctermfg=NONE ctermbg=226 cterm=NONE
" hi CursorColumn ctermfg=NONE ctermbg=226 cterm=NONE
set cursorline
set cursorcolumn
set wildmenu
set splitbelow splitright
set ruler
set number
syntax on
" hi Search cterm=NONE ctermfg=232 ctermbg=70
set hlsearch
set smartcase
set softtabstop=4
set listchars=tab:>~,space:.
set cindent
set ai
set shortmess-=S
" }}}

" Some funky status bar code its seems
" https://stackoverflow.com/questions/9065941/how-can-i-change-vim-status-line-colour
" Formats the statusline ------------------------------------------------------------------- {{{
set laststatus=2            " set the bottom status bar

 " function! ModifiedColor()
 "     if &mod == 1
 "         hi statusline ctermfg=233  ctermbg=230
 "     else
 "         hi statusline ctermfg=233  ctermbg=230
 "     endif
 " endfunction

" au InsertLeave,InsertEnter,BufWritePost   * call ModifiedColor()
 " " default the statusline when entering Vim
" hi statusline ctermfg=233 ctermbg=230

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

nnoremap <F2> :NERDTreeToggle<CR>
nnoremap <C-L> :noh<CR>
" nnoremap <F11> :set paste<cr>
" nnoremap <F12> :set nopaste<cr>
nnoremap <F8> :set nowrap<CR>
nnoremap <F9> :set wrap<CR>
" spelling check in English
set spelllang=en,cjk
nnoremap <F3> :set spell<CR>
nnoremap <F4> :set nospell<CR>
" For relative-number-toggke.
nnoremap <silent> <F1> :set relativenumber!<CR>
" For insert numbers <99 in the lines selected 
vnoremap <F6> :!nl -ba -w 2 -s '. '<CR>
" For insert numbers <999 in the lines selected 
vnoremap <F7> :!nl -ba -w 3 -s '. '<CR>

" This will make esc key respond faster when having the config below.
set ttimeoutlen=100
" Change the input method to English when leaving insert mode.Then recover IME used in the buffer when entering insert mode.
let fcitx5state=system("fcitx5-remote")
autocmd InsertLeave * :silent let fcitx5state=system("fcitx5-remote")[0] | silent !fcitx5-remote -c
autocmd InsertEnter * :silent if fcitx5state == 2 | call system("fcitx5-remote -o") | endif
