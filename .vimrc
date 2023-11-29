"	Basic settings

set number							"	show line numbers
set hlsearch							"	highlight search 
set showmatch							"	show matching saerch results while typing
set incsearch							"	show search results while typing
set ignorecase							"	ignore case of letters when searching
set laststatus=2						"	show last second status
set foldmethod=indent						"	folding (collapsing) blocks method

"	el status line

set statusline=%F						"	filepath
set statusline+=%=						"	justify right
set statusline+=%y						"	filetype
set statusline+=\ l\:						"	separator
set statusline+=%l						"	current line
set statusline+=\ c\: 						"	separator
set statusline+=%c						"	current column


"	Plugins
call plug#begin()

	"	Snippets
	

" Track the engine.
Plug 'SirVer/ultisnips'

" Snippets are separated from the engine. Add this if you want them:
Plug 'honza/vim-snippets'

" Trigger configuration. You need to change this to something other than <tab> if you use one of the following:
" - https://github.com/Valloric/YouCompleteMe
" - https://github.com/nvim-lua/completion-nvim
let g:UltiSnipsExpandTrigger="<Right>"
let g:UltiSnipsJumpForwardTrigger="<Right>"
let g:UltiSnipsJumpBackwardTrigger="<Left>"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"




	"	End of snippets
Plug 'ycm-core/YouCompleteMe'

Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }		"	golang
Plug 'vim-scripts/c.vim'					"	c lang tools
Plug 'osyo-manga/vim-over'					"	replace preview
Plug 'tpope/vim-fugitive'					"	git
" NERD tree will be loaded on the first invocation of NERDTreeToggle command
Plug 'preservim/nerdtree', { 'on': 'NERDTreeToggle' }

" Multiple commands
Plug 'junegunn/vim-github-dashboard', { 'on': ['GHDashboard', 'GHActivity'] }

" Loaded when clojure file is opened
Plug 'tpope/vim-fireplace', { 'for': 'clojure' }

" Multiple file types
Plug 'kovisoft/paredit', { 'for': ['clojure', 'scheme'] }

" On-demand loading on both conditions
Plug 'junegunn/vader.vim',  { 'on': 'Vader', 'for': 'vader' }

" Code to execute when the plugin is lazily loaded on demand
Plug 'junegunn/goyo.vim', { 'for': 'markdown' }

autocmd! User goyo.vim echom 'Goyo is now loaded!'


call plug#end()

