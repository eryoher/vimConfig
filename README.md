# Configuration for Vim

This is my Vim configuration file. It sets various parameters for the Vim text editor, loads plugin configuration files, sets up key mappings, and enables some plugins.

## Basic settings

```vim
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
```

## Configuration Changes

The following configuration changes are made in this file:

- `set number` shows line numbers
- `set mouse=a` enables the mouse in Vim
- `set numberwidth=1` sets the number column width to 1 character
- `set clipboard^=unnamed,unnamedplus` enables yanking text to the system clipboard
- `syntax on` enables syntax highlighting
- `set showcmd` shows incomplete commands in the last line of the display
- `set ruler` shows the line and column numbers of the cursor position
- `set cursorline` highlights the current line
- `set encoding=utf-8` sets the file encoding to UTF-8
- `set showmatch` highlights matching parentheses, brackets, and braces
- `set sw=2` sets the width of a tab to 2 spaces
- `set relativenumber` shows line numbers relative to the current line
- `set bg=dark` sets the background color scheme to dark

## Plugins

```vim
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
```

## Plugins Settings

The following plugins are loaded and configured:

- **NERDTree**

  - `let NERDTreeQuitOnOpen=1` quits the NERDTree automatically when a file is selected
  - `nmap <Leader>nt :NERDTreeFind<CR>` defines a key mapping to open the NERDTree plugin and find the current file

- **gruvbox**

  - `colorscheme gruvbox` sets the color scheme to gruvbox
  - `let g:gruvbox_contrast_dark="hard"` sets gruvbox's contrast to "hard"

- **FZF**
  - `let mapleader=" "` sets the map leader to the space key
  - `let g:fzf_layout = {'down':'40%'}` sets the FZF plugin's layout
  - `nmap <Leader>p :Files<CR>` defines a key mapping to search for a file using the FZF plugin
  - `nmap <Leader>f :Rg<CR>` defines a key mapping to search for a pattern using the FZF plugin
  - `nmap <Leader>b :Buffers<CR>` defines a key mapping to open a list of open buffers using the FZF plugin

## Key Mappings

The following key mappings are defined in this file:

- `nmap <Leader>s <Plug>(easymotion-s2)` defines a key mapping for the "easymotion" plugin
- `nmap <Leader>w :w<CR>` defines a key mapping to save the current file
- `nmap <Leader>q :q<CR>` defines a key mapping to close the current file
- `nmap <Leader>x :x<CR>` defines a key mapping to save and close the current file
- `nmap <silent> gd <Plug>(coc-definition)` defines a key mapping to jump to a variable's definition (using the "coc" plugin)
- `nmap <silent> gy <Plug>(coc-type-definition)` defines a key mapping to show a variable's type definition (using the "coc" plugin)
- `nmap <silent> gi <Plug>(coc-implementation)` defines a key mapping to jump to a function's implementation (using the "coc" plugin)
- `nmap <silent> gr <Plug>(coc-references)` defines a key mapping to search for a variable's references (using the "coc" plugin)
- `nmap <Leader>py :Prettier<CR>` defines a key mapping to format the current buffer using the "prettier" plugin.

## License

This code is released under the MIT License.
