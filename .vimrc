filetype off                  " required

" initiate plugins
let &runtimepath.=',$HOME/.vim/bundle/Vundle.vim'
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

"start plugin definition

Plugin 'airblade/vim-gitgutter'
Plugin 'gcorne/vim-sass-lint'
Plugin 'kien/ctrlp.vim'
Plugin 'kien/rainbow_parentheses.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'majutsushi/tagbar'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'quramy/tsuquyomi'
Plugin 'leafgarland/typescript-vim'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic'
Plugin 'tomasiser/vim-code-dark'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-surround'
Plugin 'xuyuanp/nerdtree-git-plugin'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'jlanzarotta/bufexplorer'
Plugin 'darthmall/vim-vue'
" Plugin 'valloric/youcompleteme'
Plugin 'tpope/vim-commentary'

" end plugin definition
call vundle#end()   " required for Vundle
filetype plugin indent on    " required


" General Settings
syntax on

" set line numbers
set number

" show existing tab with 2 spaces width
set tabstop=2

" On pressing tab, insert 2 spaces
set expandtab

" when indenting with '>', use 2 spaces width
set shiftwidth=2

" Enable mouse
set mouse=a

set laststatus=2

" max 80 chars per line
set textwidth=80 "set tw=80
set colorcolumn=80 "set cc=80

" lets you open a buffer with unsaved changes
set hidden

" vim folder
set directory=$HOME/.vim//

set incsearch
set ignorecase
set cursorline
set spelllang=en_us " use :set spell
set t_Co=256
set term=xterm-256color
set encoding=utf-8

" folding
set foldmethod=indent
set foldlevel=20

" color scheme
colorscheme codedark

" start NERDTree on start-up and focus active window
autocmd VimEnter * NERDTree
autocmd VimEnter * wincmd p

" To close vim if the only windows open is NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" NERDTree -git Config
let g:NERDTreeGitStatusIndicatorMapCustom = {
  \ "Modified"  : "✹",
  \ "Staged"    : "✚",
  \ "Untracked" : "✭",
  \ "Renamed"   : "➜",
  \ "Unmerged"  : "═",
  \ "Deleted"   : "✖",
  \ "Dirty"     : "✗",
  \ "Clean"     : "✔︎",
  \ "Unknown"   : "?"
  \ }

" NERDTress File highlighting
function! NERDTreeHighlightFile(extension, fg, bg, guifg, guibg)
exec 'autocmd filetype nerdtree highlight ' . a:extension .' ctermbg='. a:bg .' ctermfg='. a:fg .' guibg='. a:guibg .' guifg='. a:guifg
exec 'autocmd filetype nerdtree syn match ' . a:extension .' #^\s\+.*'. a:extension .'$#'
endfunction

call NERDTreeHighlightFile('ini', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('md', 'blue', 'none', '#3366FF', '#151515')
call NERDTreeHighlightFile('yaml', 'Magenta', 'none', '#ff00ff', '#151515')
call NERDTreeHighlightFile('config', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('conf', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('json', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('html', 'green', 'none', 'green', '#151515')
call NERDTreeHighlightFile('styl', 'cyan', 'none', 'cyan', '#151515')
call NERDTreeHighlightFile('scss', 'cyan', 'none', 'cyan', '#151515')
call NERDTreeHighlightFile('js', 'red', 'none', '#ffa500', '#151515')
call NERDTreeHighlightFile('php', 'magenta', 'none', '#ff00ff', '#151515')
call NERDTreeHighlightFile('ts', 'blue', 'none', '#2b4f7e', '#2b4f7e')
call NERDTreeHighlightFile('yaml', 'Magenta', 'none', '#ff00ff', '#151515')
call NERDTreeHighlightFile('tpl', 'magenta', 'none', '#ff00ff', '#151515')
call NERDTreeHighlightFile('vue', 'green', 'none', '#ff00ff', '#151515')

" Vue
let g:syntastic_vue_checkers = ['eslint']


" Airline
set laststatus=2
let g:airline_powerline_fonts = 1
let g:Powerline_symbols = 'fancy'
" show buffers in tabs
let g:airline#extensions#tabline#enabled = 1


" syntastic config
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_javascript_checkers = ['eslint']
let g:syntastic_sass_checkers=["sasslint"]
let g:syntastic_scss_checkers=['sass_lint']
let g:syntastic_auto_loc_list = 1
"let g:syntastic_check_on_open = 1
"let g:syntastic_check_on_wq = 1


" Omni Complete
set omnifunc=syntaxcomplete#Complete

"not to check on html files
let g:syntastic_html_checkers=['tidy']

" Ctrl-p config
set wildignore+=*/tmp/*,*/node_modules/*,*/bower_components/*,*.so,*.swp,*.zip

" Vim-Indent-Lines
let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_start_level=2
let g:indent_guides_guide_size=1
let g:indent_guides_auto_colors = 0
hi IndentGuidesOdd  ctermbg=236
hi IndentGuidesEven ctermbg=233


" Highlight Extra Whitespace
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/
autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd InsertLeave * match ExtraWhitespace /\s\+$/
autocmd BufWinLeave * call clearmatches()


" Persistent Undo
if !isdirectory($HOME."/.vim/undo-dir")
  call mkdir($HOME."/.vim/undo-dir", "", 0700)
endif

set undodir=~/.vim/undo-dir
set undofile

" Rainbow Parentheses
au VimEnter * RainbowParenthesesActivate
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces
let g:rbpt_colorpairs = [
  \ ['brown',       'RoyalBlue3'],
  \ ['darkgray',    'DarkOrchid3'],
  \ ['darkgreen',   'firebrick3'],
  \ ['darkcyan',    'RoyalBlue3'],
  \ ['darkred',     'SeaGreen3'],
  \ ['darkmagenta', 'DarkOrchid3'],
  \ ['brown',       'firebrick3'],
  \ ['gray',        'RoyalBlue3'],
  \ ['darkmagenta', 'DarkOrchid3'],
  \ ['darkgreen',   'RoyalBlue3'],
  \ ['darkcyan',    'SeaGreen3'],
  \ ['darkred',     'DarkOrchid3'],
  \ ['red',         'firebrick3'],
  \ ]

"vim typescript
let g:typescript_compiler_binary = 'tsc'
let g:typescript_compiler_options = ''
autocmd QuickFixCmdPost [^l]* nested cwindow
autocmd QuickFixCmdPost    l* nested lwindow

" tsuquyomi
let g:tsuquyomi_disable_quickfix = 1
let g:typescript_indent_disable = 1
let g:syntastic_typescript_checkers = ['tsuquyomi']
"autocmd FileType typescript setlocal completeopt+=menu,preview
autocmd FileType typescript :set makeprg=tsc
setlocal indentkeys+=0

" Omni Complete
set omnifunc=syntaxcomplete#Complete

" Always show line numbers in relative mode
set number relativenumber

" Toogle relative line numbers
:augroup numbertoggle
:  autocmd!
:  autocmd BufEnter,FocusGained,InsertLeave * set number relativenumber
:  autocmd BufLeave,FocusLost,InsertEnter   * set number norelativenumber
:augroup END

" incremental search
if has("patch-8.0.1238")
  augroup vimrc-incsearch-highlight
    autocmd!
    autocmd CmdlineEnter [/\?] :set hlsearch
    autocmd CmdlineLeave [/\?] :set nohlsearch
  augroup END
endif


" MAPS
" | F5         --> List buffers and sets :b to open
" | <space> o  --> Opens BufferExplorer
" | <C> (movement)  --> Moves between panels

let mapleader = "\<Space>" " <leader> is <space>

" no need to restart use :so %
nmap <leader>1 :edit ~/.vimrc<CR>

" open .zshrc
nmap <leader>2 :edit ~/.zshrc<CR>

" open buffers
nnoremap <F5> :ls<CR>:b<Space>

" toggle nerdtree
map <C-n> :NERDTreeToggle<CR>

" Split Navigation
nnoremap <C-J> <C-W>j
nnoremap <C-K> <C-W>k
nnoremap <C-H> <C-W>h
nnoremap <C-L> <C-W>l


" Split Navigation
nnoremap <Down> <C-W>j
nnoremap <Up> <C-W>k
nnoremap <Left> <C-W>h
nnoremap <Right> <C-W>l


" escape
inoremap jj <Esc>

" buffers navigation
nnoremap <leader>bn :bnext<CR>
nnoremap <leader>bp :bprev<CR>
nnoremap <leader>x :bd<CR>
nnoremap <leader>b :ls<CR>:b<space>
nnoremap <leader>o :BufExplorer<CR>

" copy/pasting clipboard
noremap <Leader>p "*p
noremap <Leader>y "*y

" To Reveal current file in directory
nnoremap <leader>r :NERDTreeFind<CR>

" Open an overview of current file by using Tagbar, hot key: F8 "
nmap <F8> :TagbarToggle<CR>


" macros

" uncomment
nmap <leader>uc :s/\/\/ /<CR>

" snippets

" HTML skeleton
nnoremap <leader>html :-1read $HOME/vim-snippets/html/skeleton.html<CR>

" empty jinja macro
nnoremap <leader>macro :-1read $HOME/vim-snippets/jinja/empty-macro.tpl<CR>2wce

" js querySelector all
nnoremap <leader>qsa :read $HOME/vim-snippets/js/query-selector-all.js<CR>

