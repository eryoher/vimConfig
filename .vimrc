set number 
set mouse=a
set numberwidth=1
set clipboard^=unnamed,unnamedplus
syntax on
set showcmd
set ruler
set cursorline
set encoding=utf-8
set showmatch
set sw=2
set relativenumber
set bg=dark

so ~/.vim/plugins.vim
so ~/.vim/plugin-config.vim

colorscheme gruvbox
let g:gruvbox_contrast_dark="hard"
let NERDTreeQuitOnOpen=1
let mapleader=" "
let g:fzf_layout = {'down':'40%'}

command! -nargs=0 Prettier :call CocAction('runCommand', 'prettier.formatFile')

nmap <Leader>s <Plug>(easymotion-s2)
nmap <Leader>nt :NERDTreeFind<CR>
nmap <Leader>w :w<CR>
nmap <Leader>q :q<CR>
nmap <Leader>x :x<CR>
nmap <Leader>p :Files<CR>
nmap <Leader>f :Rg<CR>
nmap <Leader>b :Buffers<CR>
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
nmap <Leader>py :Prettier<CR>