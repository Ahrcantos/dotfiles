"Vim-Plug
call plug#begin('~/.vim/plugged')

Plug 'francoiscabrol/ranger.vim'

"Multiple Cursors
Plug 'terryma/vim-multiple-cursors'

"TypeScript
Plug 'leafgarland/typescript-vim'

"Visual
Plug 'itchyny/lightline.vim'
Plug 'dracula/vim', { 'as': 'dracula' }

"Javascript Syntax
Plug 'jelera/vim-javascript-syntax'

"NodeJS
Plug 'moll/vim-node'

"Fzf for vim
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'

" Better Highligthing
Plug 'justinmk/vim-syntax-extra'

"GDB Integration
"Plug 'vim-scripts/Conque-GDB'
"Plug 'xavierd/clang_complete'
Plug 'myint/clang-complete'

"Better Textobjects
Plug 'wellle/targets.vim'



call plug#end()

"Vim Color Theme
let g:dracula_colorterm = 0
syntax on
color dracula

"Relative Line Numbers
set number relativenumber

set completeopt-=preview
set backspace=2

"LightLine
set laststatus=2

"Tab size
filetype plugin indent on
set tabstop=2
set shiftwidth=2

"Set Leader to ,
let mapleader=","

"Fzf mappings
nnoremap <leader>f :Files<Enter>
nnoremap <leader>c :Commands<Enter>


" Disables automatic commenting on newline:
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o"

" Replace all is aliased to S.
nnoremap S :%s//g<Left><Left>

"Leader Jumping"
inoremap <leader><leader> <Esc>/<++><Enter>"_c4l
vnoremap <leader><leader> <Esc>/<++><Enter>"_c4l
map <leader><leader> <Esc>/<++><Enter>"_c4l

"Folding
set foldmethod=manual
augroup remember_folds
	autocmd!
	autocmd BufWinLeave * mkview
	autocmd BufWinEnter * silent! loadview
augroup END

"Tab Controls
map <leader>th :tabfirst<Enter>
map <leader>tl :tablast<Enter>
map <leader>tj :tabprevious<Enter>
map <leader>tk :tabnext<Enter>
map <leader>tn :RangerNewTab<Enter>


"Auto Brackets
inoremap " ""<left>
inoremap ' ''<left>
inoremap ( ()<left>
inoremap [ []<left>
inoremap { {}<left>
inoremap {<CR> {<CR>}<ESC>O
inoremap {;<CR> {<CR>};<ESC>O

"Spell Checker"
map <F6> :setlocal spell! spelllang=de_de<CR>

"Emu File Type
au BufRead,BufNewFile *.emu set filetype=emu


"C Autocomplete
" path to directory where library can be found

"au FileType c,cpp,objc,objcpp call <SID>ClangCompleteInit()
"au FileType c.*,cpp.*,objc.*,objcpp.* call <SID>ClangCompleteInit()

let g:clang_library_path='/usr/lib/llvm-6.0/lib'

let g:clang_snippets = 0
let g:clang_c_options = '-std=gnu11'
let g:clang_cpp_options = '-std=c++11 -stdlib=libc++'
let g:clang_complete = 1
"let g:clang_close_preview = 1
"let g:clang_snippets_engine = 'clang_complete'
let g:clang_user_options='|| exit 0'
"let g:clang_complete_copen = 1
set conceallevel=2
set concealcursor=vin
"let g:clang_conceal_snippets=1
