call plug#begin()
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'github/copilot.vim'
Plug 'mfussenegger/nvim-jdtls'
Plug 'rust-lang/rls'
Plug 'joshdick/onedark.vim'
Plug 'iCyMind/NeoSolarized'
Plug 'junegunn/vim-easy-align'
Plug 'https://github.com/junegunn/vim-github-dashboard.git'
Plug 'rdnetto/YCM-Generator', { 'branch': 'stable' }
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'ryanoasis/vim-devicons'
Plug 'phha/zenburn.nvim'
Plug 'akinsho/toggleterm.nvim'
Plug 'ellisonleao/gruvbox.nvim'
Plug 'preservim/nerdtree' 
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'drewtempelmeyer/palenight.vim'
Plug 'akinsho/toggleterm.nvim'
" Use release branch (recommend)
Plug 'neoclide/coc.nvim', {'branch': 'release'}
call plug#end()

nnoremap <C-t> :NERDTreeToggle<CR>
noremap ; l
noremap l k
noremap k j
noremap j h
set number
set relativenumber
set background=dark
set termguicolors
"colorscheme gruvbox
colorscheme zenburn
:set mouse=a

noremap <C-c> :ToggleTerm <CR>


