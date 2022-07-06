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
"Plug 'vim-airline/vim-airline'
"Plug 'vim-airline/vim-airline-themes'
Plug 'ryanoasis/vim-devicons'
Plug 'phha/zenburn.nvim'
Plug 'jasonccox/vim-wayland-clipboard'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'dylanaraps/wal.vim'
Plug 'akinsho/toggleterm.nvim'
Plug 'ellisonleao/gruvbox.nvim'
Plug 'preservim/nerdtree' 
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'drewtempelmeyer/palenight.vim'
Plug 'akinsho/toggleterm.nvim'
Plug 'jasonccox/vim-wayland-clipboard'
"Plug 'arcticicestudio/nord-vim'
Plug 'shaunsingh/nord.nvim'
Plug 'andweeb/presence.nvim'
" Use release branch (recommend)
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'andweeb/presence.nvim'
Plug 'preservim/tagbar'
Plug 'glepnir/dashboard-nvim'
Plug 'liuchengxu/vim-clap'
Plug 'tpope/vim-commentary'
"Plug 'floobits/floobits-neovim'
Plug 'jasonccox/vim-wayland-clipboard'
Plug 'voldikss/vim-floaterm'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'reedes/vim-lexical'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'nvim-lualine/lualine.nvim'
" If you want to have icons in your statusline choose one of these
Plug 'kyazdani42/nvim-web-devicons'
call plug#end()

nnoremap <C-t> :NERDTreeToggle<CR>
"nnoremap <C-G> :Telescope find_files<CR>
noremap ; l
noremap l k
noremap k j
noremap j h
set number
set relativenumber
set background=dark
set termguicolors
colorscheme nord
"colorscheme zenburn
"colorscheme wal
let g:nord_italic = v:false

:set mouse=a

noremap <C-c> :ToggleTerm <CR>
nmap <C-n> :TagbarToggle<CR>
nmap <C-g> :FloatermNew lazygit<CR>'
let mapleader = ","
" nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>ff <cmd>Telescope find_files<cr>

augroup lexical
autocmd!
autocmd FileType markdown,mkd call lexical#init()
autocmd FileType textile call lexical#init()
autocmd FileType text call lexical#init({ 'spell': 0 })
augroup END
let g:lexical#spell = 1
let g:lexical#spelllang = ['en_us',]
let g:lexical#thesaurus = ['~/.config/nvim/thesaurus/moby_thesaurus.txt',]
let g:lexical#spellfile = ['~/.config/nvim/en.utf-8.add',]
let g:lexical#spell_key = '<leader>s'


let g:dashboard_custom_header = [
\ ' ███╗   ██╗ ███████╗ ██████╗  ██╗   ██╗ ██╗ ███╗   ███╗',
\ ' ████╗  ██║ ██╔════╝██╔═══██╗ ██║   ██║ ██║ ████╗ ████║',
\ ' ██╔██╗ ██║ █████╗  ██║   ██║ ██║   ██║ ██║ ██╔████╔██║',
\ ' ██║╚██╗██║ ██╔══╝  ██║   ██║ ╚██╗ ██╔╝ ██║ ██║╚██╔╝██║',
\ ' ██║ ╚████║ ███████╗╚██████╔╝  ╚████╔╝  ██║ ██║ ╚═╝ ██║',
\ ' ╚═╝  ╚═══╝ ╚══════╝ ╚═════╝    ╚═══╝   ╚═╝ ╚═╝     ╚═╝',
\]
