" call plug#begin()
"Programming languages
"Plug 'rust-lang/rls'

""Color Schemes
""Plug 'joshdick/onedark.vim'
""Plug 'iCyMind/NeoSolarized'
""Plug 'phha/zenburn.nvim'
""Plug 'ellisonleao/gruvbox.nvim'
""Plug 'shaunsingh/nord.nvim'
""Plug 'arcticicestudio/nord-vim'
""Plug 'dylanaraps/wal.vim'
"Plug 'sainnhe/everforest'

""Parsers
"Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
" Plug 'neoclide/coc.nvim', {'branch': 'release'}
"Plug 'sheerun/vim-polyglot'

""Utils
"Plug 'SirVer/ultisnips'
"Plug 'honza/vim-snippets'
""Plug 'github/copilot.vim'
"Plug 'mfussenegger/nvim-jdtls'
"Plug 'junegunn/vim-easy-align'
""Plug 'https://github.com/junegunn/vim-github-dashboard.git'
"Plug 'rdnetto/YCM-Generator', { 'branch': 'stable' }
"Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
""Plug 'vim-airline/vim-airline'
""Plug 'vim-airline/vim-airline-themes'
"Plug 'ryanoasis/vim-devicons'
"Plug 'jasonccox/vim-wayland-clipboard'
"Plug 'akinsho/toggleterm.nvim'
"Plug 'preservim/nerdtree' 
"Plug 'drewtempelmeyer/palenight.vim'
"Plug 'akinsho/toggleterm.nvim'
"Plug 'jasonccox/vim-wayland-clipboard'
"Plug 'andweeb/presence.nvim'
"" Use release branch (recommend)
"Plug 'preservim/tagbar'
"Plug 'glepnir/dashboard-nvim'
"Plug 'liuchengxu/vim-clap'
"Plug 'tpope/vim-commentary'
""Plug 'floobits/floobits-neovim'
"Plug 'jasonccox/vim-wayland-clipboard'
"Plug 'voldikss/vim-floaterm'
"Plug 'nvim-lua/plenary.nvim'
"Plug 'nvim-telescope/telescope.nvim'
"Plug 'reedes/vim-lexical'
"Plug 'nvim-lualine/lualine.nvim'
"Plug 'kyazdani42/nvim-web-devicons'
"Plug 'ap/vim-css-color'
"Plug 'nvim-lua/plenary.nvim'
"Plug 'terryma/vim-multiple-cursors'
"Plug 'nvim-telescope/telescope-file-browser.nvim'
" call plug#end()

"nnoremap <C-G> :Telescope find_files<CR>
" noremap ; l
" noremap l k
" noremap k j
" noremap j h
" " set number
" set relativenumber
" set background=dark
" set termguicolors
" colorscheme = everforest
" let g:everforest_background = 'medium'
"let g:nord_italic = v:false

" :set mouse=a

nnoremap <leader>t :NERDTreeToggle<CR>
" nmap <leader> n :TagbarToggle<CR>
nmap <leader>g :FloatermNew lazygit<CR>'
nmap <leader>c :FloatermToggle<CR> 
let mapleader = ","
nnoremap <leader>ff <cmd>Telescope find_files<cr>

function! s:check_back_space() abort
    let col = col('.') - 1
    return !col || getline('.')[col - 1]  =~ '\s'
  endfunction

  " Insert <tab> when previous text is space, refresh completion if not.
  inoremap <silent><expr> <TAB>
	\ coc#pum#visible() ? coc#pum#next(1):
	\ <SID>check_back_space() ? "\<Tab>" :
	\ coc#refresh()
  inoremap <expr><S-TAB> coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"




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
