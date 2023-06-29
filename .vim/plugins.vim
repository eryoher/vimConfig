call plug#begin('~/.vim/plugged') 
	" IDE
	Plug 'preservim/nerdtree'
	Plug 'easymotion/vim-easymotion'
	Plug 'yggdroot/indentline'
	Plug 'scrooloose/nerdcommenter'
	" post install (yarn install | npm install) then load plugin only for editing supported files
	Plug 'prettier/vim-prettier', {'do': 'yarn install --frozen-lockfile --production','for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql', 'markdown', 'vue', 'svelte', 'yaml', 'html'] }
	Plug 'editorconfig/editorconfig-vim'
  	Plug 'SirVer/ultisnips'
  	Plug 'mlaursen/vim-react-snippets'

	" tmux
	Plug 'benmills/vimux'
	Plug 'christoomey/vim-tmux-navigator'
	
	Plug 'sheerun/vim-polyglot'
	Plug 'styled-components/vim-styled-components', { 'branch':'main' }
	Plug 'norcalli/nvim-colorizer.lua'
	Plug 'maximbaz/lightline-ale'
	
	" find files
	Plug 'junegunn/fzf', { 'do': {-> fzf#install() } }
	Plug 'junegunn/fzf.vim'
	Plug 'airblade/vim-rooter'

	" status bar
	Plug 'maximbaz/lightline-ale'
	Plug 'itchyny/lightline.vim'	

	" typing
	Plug 'jiangmiao/auto-pairs'
	Plug 'alvan/vim-closetag'
	Plug 'tpope/vim-surround'

	" autocomplete
	Plug 'sirver/ultisnips'
	Plug 'neoclide/coc.nvim', {'branch':'release'}

	" Theme
	Plug 'morhetz/gruvbox'
	Plug 'shinchu/lightline-gruvbox.vim'

call plug#end()
