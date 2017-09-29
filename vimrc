" ln -s ~/.vim/vimrc ~/.vimrc
"mkdir -p ~/.vim/autoload ~/.vim/bundle && \
" curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
" ln -s ~/src/github.com/madhanganesh/vimconfig/bundle/ ~/.vim/bundle
" git submodule add https://github.com/scrooloose/nerdtree.git bundle/nerdtree
" git submodule init or git submodule update
" brew install the_silver_searcher

execute pathogen#infect()

filetype on
syntax on
filetype indent on
colorscheme Tomorrow
set guifont=Menlo\ Regular:h14
set lines=35 columns=80
set number
set hidden
set nowrap
set tabstop=2
set shiftwidth=2
set expandtab
set smartindent
set autoindent
set showmatch
set cursorline
set wildmenu
set lazyredraw
set incsearch 
set hlsearch

set foldenable
set foldlevelstart=10
set foldnestmax=10
set foldmethod=indent

map <leader>s :source ~/.vimrc<CR>
nnoremap <Leader><Leader> :e#<CR>
nnoremap <leader><space> :nohlsearch<CR>
nnoremap <space> za
nnoremap j gj
nnoremap k gk
nnoremap B ^
nnoremap E $
nnoremap $ <nop>
nnoremap ^ <nop>
map <D-A-RIGHT> <C-w>l
map <D-A-LEFT> <C-w>h
map <D-A-DOWN> <C-w><C-w>
map <D-A-UP> <C-w>W

set backup
set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set backupskip=/tmp/*,/private/tmp/*
set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set writebackup

let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 'ra'
let g:ctrlp_match_window = 'bottom,order:ttb'
let g:ctrlp_switch_buffer = 0
let g:ctrlp_working_path_mode = 0
let g:ctrlp_user_command = 'ag %s -l --nocolor --hidden -g ""'

" syntastic settings
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:jsx_ext_required = 0 " Allow JSX in normal JS files
let g:syntastic_javascript_checkers = ['eslint']
let g:syntastic_quiet_messages={"regex":"main redeclared"}
let g:syntastic_html_tidy_ignore_errors = [
    \"'<' + '/' + letter not allowed here"
    \ ]

" prettier settings
let g:prettier#autoformat = 0
autocmd BufWritePre *.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.scss,*.graphql PrettierAsync

function! CHANGE_CURR_DIR() 
    let _dir = expand("%:p:h") 
    exec "cd " . _dir 
    unlet _dir 
endfunction 
autocmd BufEnter * call CHANGE_CURR_DIR()

