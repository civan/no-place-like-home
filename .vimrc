syntax on

colorscheme codedark

" default shel
:set shell=/bin/zsh

" set line numbers
:set number

" show existing tab with 2 spaces width
:set tabstop=2

" On pressing tab, insert 2 spaces
:set expandtab

" when indenting with '>', use 2 spaces width
:set shiftwidth=2

:set mouse=a
:set laststatus=2

" max 80 chars per line
:set textwidth=80 "set tw=80
:set colorcolumn=80 "set cc=80


:set directory=$HOME/.vim//

:set incsearch
:set ignorecase
:set cursorline

"Jshint2 Config
let jshint2_read = 1
let jshint2_save = 1

"sass-lint config
let g:syntastic_sass_checkers=["sass_lint"]
let g:syntastic_scss_checkers=["sass_lint"]

"initiate Vundle
 let &runtimepath.=',$HOME/.vim/bundle/Vundle.vim'
 call vundle#begin()
 " let Vundle manage Vundle, required
 Plugin 'gmarik/Vundle.vim'

 "start plugin defintion
 Plugin 'scrooloose/nerdtree'
 Plugin 'scrooloose/syntastic'
 Plugin 'gcorne/vim-sass-lint'
 Plugin 'Xuyuanp/nerdtree-git-plugin'
 Plugin 'Lokaltog/vim-powerline'
 Plugin 'heavenshell/vim-jsdoc'
 Plugin 'kien/ctrlp.vim'
 Plugin 'tpope/vim-fugitive'
 Plugin 'nathanaelkane/vim-indent-guides'
 Plugin 'tomasiser/vim-code-dark'

 " -- Web Development
 Plugin 'Shutnik/jshint2.vim'

 " end plugin definition
 call vundle#end()            " required for vundle

 " start NERDTree on start-up and focus active window
 autocmd VimEnter * NERDTree
 autocmd VimEnter * wincmd p

 " To close vim if the only windows open is nerdTree
 autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" nerdtree -git Config
let g:NERDTreeIndicatorMapCustom = {
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


" suntastic config
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_javascript_checkers = ['gjslint']
"let g:syntastic_scss_checkers = ['scss_lint']
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" Ctrl p  config

set wildignore+=*/tmp/*,*/node_modules/*,*/bower_components/*,*.so,*.swp,*.zip

" Maps

let mapleader = "\<Space>" " <leader> is <space>

" no need to restar use :so %
nmap <leader>1 :tabnew ~/.vimrc<CR>

" open buffers
nnoremap <F5> :ls<CR>:b<Space> 

" toggle nerdtree
map <C-n> :NERDTreeToggle<CR>

" macros
let @l = 'Iconsole.log(A);'
nmap <leader>l @l

let @c = 'a{}i==ko'
nmap <leader>{ @c

let @s= "a''"
nmap <leader>' @s

let @d= 'a""'
nmap <leader>" @d

let @b= 'o@include from(desktop) {}ko'
nmap <leader>bp @b


