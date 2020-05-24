"
"
"
"                               @@@  @@@  @@@  @@@@@@@@@@   @@@@@@@    @@@@@@@  
"                               @@@  @@@  @@@  @@@@@@@@@@@  @@@@@@@@  @@@@@@@@  
"                               @@!  @@@  @@!  @@! @@! @@!  @@!  @@@  !@@       
"                               !@!  @!@  !@!  !@! !@! !@!  !@!  @!@  !@!       
"                               @!@  !@!  !!@  @!! !!@ @!@  @!@!!@!   !@!       
"                               !@!  !!!  !!!  !@!   ! !@!  !!@!@!    !!!       
"                               :!:  !!:  !!:  !!:     !!:  !!: :!!   :!!       
"                                ::!!:!   :!:  :!:     :!:  :!:  !:!  :!:       
"                                 ::::    ::   :::     ::   ::   :::   ::: :::  
"                                  :      :     :      :     :   : :   :: :: :  
"
"
"
" -----------------------------------------------------------------------------------------------------------
"
"
"                @@@  @@@ @@@ @@@@@@@@@@               @@@@@@@  @@@     @@@  @@@  @@@@@@@  
"                @@!  @@@ @@! @@! @@! @@!              @@!  @@@ @@!     @@!  @@@ !@@       
"                @!@  !@! !!@ @!! !!@ @!@   @!@!@!@!   @!@@!@!  @!!     @!@  !@! !@! @!@!@ 
"                 !: .:!  !!: !!:     !!:              !!:      !!:     !!:  !!! :!!   !!: 
"                   ::    :    :      :                 :       : ::.: : :.:: :   :: :: :  
"
"
" -----------------------------------------------------------------------------------------------------------
let mapleader=" "
call plug#begin('~/.vim/plugs')
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-endwise'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-vinegar'
Plug 'jiangmiao/auto-pairs'
Plug 'rstacruz/sparkup'
Plug 'wellle/targets.vim'
Plug 'sheerun/vim-polyglot'
Plug 'junegunn/vim-easy-align'
Plug 'junegunn/fzf'
Plug 'junegunn/goyo.vim'
Plug 'valloric/youcompleteme'
Plug 'itchyny/lightline.vim'
Plug 'bling/vim-bufferline'
Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown'
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() } }
Plug 'morhetz/gruvbox'
Plug 'yggdroot/indentline'
call plug#end()

" Bufferline stuff
let g:bufferline_active_buffer_left = '[ '
let g:bufferline_echo = 1
" autocmd VimEnter *
" 	\ let &statusline='%{bufferline#refresh_status()}'
" 	\ .bufferline#get_status_string()

" markdown-preview.vim stuff
au Filetype md,markdown map <leader>cc <Plug>MarkdownPreviewToggle
let g:mkdp_browser = 'qutebrowser'

" Goyo stuff
let g:goyo_width = "80%"
let g:goyo_height = "80%"

" YCM stuff
let g:jedi#use_splits_not_buffers = "bottom"
let g:ycm_show_diagnostics_ui = 1

" lightline stuff
set noshowmode
let g:lightline = { 'colorscheme': 'gruvbox', }

" Vim-Easy-Align stuff
" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)
" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)

" fzf stuff
" Mapping selecting mappings
let g:fzf_layout = { 'down': '~20%' }

" netrw/vinegar stuff
let g:netrw_liststyle = 3
let g:netrw_bufsettings = 'noma nomod nu nobl nowrap ro'

"
"
"                          @@@@@@@ @@@@@@  @@@      @@@@@@  @@@@@@@   @@@@@@ 
"                         !@@     @@!  @@@ @@!     @@!  @@@ @@!  @@@ !@@     
"                         !@!     @!@  !@! @!!     @!@  !@! @!@!!@!   !@@!!  
"                         :!!     !!:  !!! !!:     !!:  !!! !!: :!!      !:! 
"                          :: :: : : :. :  : ::.: : : :. :   :   : : ::.: :  
"
"
" -----------------------------------------------------------------------------------------------------------
syntax enable
let g:gruvbox_contrast_dark = 'hard'
colorscheme gruvbox
"
"                                           
"                         @@@@@@  @@@@@@@ @@@@@@@ @@@  @@@@@@  @@@  @@@  @@@@@@ 
"                        @@!  @@@ @@!  @@@  @!!   @@! @@!  @@@ @@!@!@@@ !@@     
"                        @!@  !@! @!@@!@!   @!!   !!@ @!@  !@! @!@@!!@!  !@@!!  
"                        !!:  !!! !!:       !!:   !!: !!:  !!! !!:  !!!     !:! 
"                         : :. :   :         :    :    : :. :  ::    :  ::.: :                                                         
"
"
" -----------------------------------------------------------------------------------------------------------
set number relativenumber
set breakindent
set linebreak
set showmatch
set visualbell
set hlsearch
set smartcase
set ignorecase
set incsearch
set autoindent
set wrap
set cindent
set shiftwidth=5
set softtabstop=5
set tabstop=5
set ruler
set undolevels=100
set backspace=indent,eol,start
set hidden
set mouse=a
set foldmethod=manual
set cursorline
set splitbelow
set splitright

"
"
"                    @@@  @@@ @@@@@@@@ @@@ @@@ @@@@@@@  @@@ @@@  @@@ @@@@@@@   @@@@@@ 
"                    @@!  !@@ @@!      @@! !@@ @@!  @@@ @@! @@!@!@@@ @@!  @@@ !@@     
"                    @!@@!@!  @!!!:!    !@!@!  @!@!@!@  !!@ @!@@!!@! @!@  !@!  !@@!!  
"                    !!: :!!  !!:        !!:   !!:  !!! !!: !!:  !!! !!:  !!!     !:! 
"                     :   ::: : :: ::    .:    :: : ::  :   ::    :  :: :  :  ::.: :  
"
"
" -----------------------------------------------------------------------------------------------------------
" map up and down to go-up and go-down
" for navigating wrapped lines easier
"
tnoremap <Esc>			<C-\><C-n>
inoremap <Tab>			<C-T>

" SpaceVim
" Jump Point Movement
nnoremap <leader><leader> /<XXX><CR>c5l
" Split (Window) management
nnoremap <leader>wl		<C-w>l
nnoremap <leader>wL		<C-w>L
nnoremap <leader>wh		<C-w>h
nnoremap <leader>wH		<C-w>H
nnoremap <leader>wk		<C-w>k
nnoremap <leader>wK		<C-w>K
nnoremap <leader>wj		<C-w>j
nnoremap <leader>wJ		<C-w>J
nnoremap <leader>wc		<C-w>c
nnoremap <leader>ws		:split<CR>
nnoremap <leader>wv		:vsplit<CR>
nnoremap <leader>w+		<C-w>+
nnoremap <leader>w-		<C-w>-
nnoremap <leader>w<		<C-w><
nnoremap <leader>w>		<C-w>>
" Toggle things
nnoremap <leader>tz		:Goyo<CR>
" Open terminal things
nnoremap <leader>ot		:split<CR>:terminal<CR>
" Buffer movement
nnoremap <leader>bn		:bn<CR>
nnoremap <leader>bp		:bp<CR>
nnoremap <leader>bd		:bd<CR>
nnoremap <leader>bD		:bd!<CR>
" File management
nnoremap <leader>ff		:FZF<CR>
nnoremap <leader>fw		:w!<CR>
nnoremap <leader>fc		:wq!<CR>
nnoremap <leader>fo		:execute "normal \<Plug>VinegarUp"<CR>
" fix some filetypes on buffer open
autocmd BufRead,BufNewFile *.h set filetype=c
autocmd BufRead,BufNewFile *.ms set filetype=groff
" remove terminal line numbers
au TermOpen * setlocal nonumber norelativenumber
" Some groff commands for remapping indentations and a compile command
autocmd BufRead,BufNewFile *.ms inoremap .rs .rs<Esc>o.re<Esc>O
au Filetype groff,ms map <leader>cc :w!<CR>:!refer -PS -e % <bar> groff -me -ms % -T pdf > %:r.pdf<CR><CR>
" Snippets
au BufRead,BufNewFile *.md inoremap ![ ![<XXX>] (./images/<XXX>.png "<XXX>")<Esc>0/<XXX><CR>c5l
au BufRead,BufNewFile *.md inoremap * **<esc>i
