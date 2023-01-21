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
" Plug 'scrooloose/nerdtree'
" Plug 'valloric/youcompleteme'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-endwise'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-vinegar'
Plug 'scrooloose/syntastic'
Plug 'jiangmiao/auto-pairs'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'rstacruz/sparkup'
Plug 'wellle/targets.vim'
Plug 'sheerun/vim-polyglot'
Plug 'junegunn/vim-easy-align'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all'  }
Plug 'junegunn/fzf'
call plug#end()

" fzf stuff
" Mapping selecting mappings
nmap <leader>of <Esc>:FZF<CR>
xmap <leader><leader> <plug>(fzf-maps-x)
omap <leader><leader> <plug>(fzf-maps-o)
" Insert mode completion
imap <c-x><c-k> <plug>(fzf-complete-word)
imap <c-x><c-f> <plug>(fzf-complete-path)
imap <c-x><c-j> <plug>(fzf-complete-file-ag)
imap <c-x><c-l> <plug>(fzf-complete-line)
let g:fzf_action = {
  \ 'ctrl-t': 'tab split',
  \ 'ctrl-x': 'split',
  \ 'ctrl-v': 'vsplit' }
" Default fzf layout
" - down / up / left / right
let g:fzf_layout = { 'down': '~40%' }
" Advanced customization using autoload functions
" inoremap <expr> <c-x><c-k> fzf#vim#complete#word({'left': '15%'})

" Surround Stuff
"

" Airline Stuff
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
let g:airline_theme='deus'

" NERDTree Stuff
" let g:NERDTreeShowLineNumbers = 1
" autocmd BufEnter NERD_* setlocal rnu
" autocmd vimenter * NERDTree <C-w>w
" map <C-n> :NERDTreeToggle<CR>
" autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
" function! NERDTreeRefresh()
"     if &filetype == "nerdtree"
"         silent exe substitute(mapcheck("R"), "<CR>", "", "")
"     endif
" endfunction
" autocmd bufenter * call NERDTreeRefresh()

" netrw stuff
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
colorscheme cottonmouse
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
set linebreak
set showmatch	
set visualbell	
set hlsearch	
set smartcase	
set ignorecase	
set incsearch	
set autoindent	
set cindent	
set shiftwidth=5
set autoindent	
set smarttab	
set tabstop=5
set softtabstop=5
set ruler	
set undolevels=1000	
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
inoremap	qq			<Esc>
nnoremap	<Tab>		<C-w>w
nnoremap	<C-h>		:bp<CR>
nnoremap	<C-l>		:bn<CR>
nnoremap	<CR>			i<CR><Esc>
nnoremap	<BS>			hx
