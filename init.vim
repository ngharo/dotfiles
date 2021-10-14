syntax on

set t_Co=256
set tabstop=2
set shiftwidth=2
set expandtab
set pastetoggle=<F12>
set vb  " Turn on visible bell
set bs=2
set tags=./tags,tags
set incsearch
set number
set modeline
set clipboard+=unnamedplus
filetype indent on
au BufNewFile,BufRead *.rhtml set syn=eruby
au BufNewFile,BufRead *.tpl set ft=html.javascript
map <F7> =%
nnoremap <CR> :noh<CR><CR>
let g:ale_completion_enabled = 1
let g:ale_completion_autoimport = 1

call plug#begin(stdpath('data') . '/plugged')
Plug 'kien/ctrlp.vim'
Plug 'airblade/vim-gitgutter'
Plug 'ervandew/supertab'
Plug 'godlygeek/tabular'
Plug 'gabrielelana/vim-markdown'
Plug 'puppetlabs/puppet-syntax-vim'
Plug 'vim-airline/vim-airline'
Plug 'dense-analysis/ale'
" Plug 'fatih/vim-go'
Plug 'pearofducks/ansible-vim'
" autocomplete
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
"Plug 'drewtempelmeyer/palenight.vim'
"Plug 'arcticicestudio/nord-vim'
Plug 'morhetz/gruvbox'
Plug 'zigford/vim-powershell'
Plug 'hashivim/vim-terraform'
Plug 'hashivim/vim-packer'
Plug 'tpope/vim-commentary'
call plug#end()

let g:go_version_warning = 0
"let g:deoplete#enable_at_startup = 1

let g:markdown_enable_spell_checking = 0

let g:airline#extensions#ale#enabled = 1
let g:airline_powerline_fonts = 1
let g:deoplete#enable_at_startup = 1
" colors
set background=dark
if has('termguicolors')
"  let &t_8f = "\<Esc>[38:2:%lu:%lu:%lum"
"  let &t_8b = "\<Esc>[48:2:%lu:%lu:%lum"
"  set termguicolors
endif
let g:gruvbox_italic=1
"colorscheme gruvbox
colorscheme nazca
"let g:airline_theme = "gruvbox"
"let g:airline_theme = "palenight"
"let g:palenight_terminal_italics=1

let g:ale_fixers = {
  \ '*': ['remove_trailing_lines', 'trim_whitespace'],
  \ 'terraform': ['terraform'],
\}
let g:ale_fix_on_save = 1

highlight ALEWarning ctermbg=DarkMagenta
highlight SignColumn guibg=Black ctermbg=Black

au BufRead,BufNewFile *.pp  set filetype=puppet
au BufRead,BufNewFile *.hcl  set filetype=terraform
au BufRead,BufNewFile */ansible/*.yml set filetype=yaml.ansible
au BufRead,BufNewFile Jenkinsfile* set filetype=groovy

runtime! conf.d/*.vim
