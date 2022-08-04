local Plug = vim.fn['plug#']
vim.call('plug#begin', '~/.config/nvim/plugged')
-- Programming langugages
Plug 'rust-lang/rls'
-- Color Schemes
-- Plug 'joshdick/onedark.vim'
-- Plug 'iCyMind/NeoSolarized'
-- Plug 'phha/zenburn.nvim'
-- Plug 'ellisonleao/gruvbox.nvim'
-- Plug 'shaunsingh/nord.nvim'
-- Plug 'arcticicestudio/nord-vim'
-- Plug 'dylanaraps/wal.vim'
Plug 'sainnhe/everforest'

-- Parsers
Plug 'nvim-treesitter/nvim-treesitter'
Plug('junegunn/fzf', {
  ['do'] = function()
    vim.call('fzf#install')
  end
})
Plug ('neoclide/coc.nvim', {branch = 'release'})
Plug 'sheerun/vim-polyglot'

-- Utils
-- Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
-- Plug 'github/copilot.vim'
Plug 'mfussenegger/nvim-jdtls'
Plug 'junegunn/vim-easy-align'
-- Plug 'https://github.com/junegunn/vim-github-dashboard.git'
--Plug('rdnetto/YCM-Generator', { 'branch' = 'stable' })
-- Plug 'vim-airline/vim-airline'
-- Plug 'vim-airline/vim-airline-themes'
Plug 'ryanoasis/vim-devicons'
Plug 'jasonccox/vim-wayland-clipboard'
Plug 'akinsho/toggleterm.nvim'
Plug 'preservim/nerdtree'
Plug 'drewtempelmeyer/palenight.vim'
Plug 'akinsho/toggleterm.nvim'
Plug 'jasonccox/vim-wayland-clipboard'
Plug 'andweeb/presence.nvim'
--  Use release branch (recommend)
Plug 'preservim/tagbar'
Plug 'glepnir/dashboard-nvim'
Plug 'liuchengxu/vim-clap'
Plug 'tpope/vim-commentary'
--Plug 'floobits/floobits-neovim'
Plug 'jasonccox/vim-wayland-clipboard'
Plug 'voldikss/vim-floaterm'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'reedes/vim-lexical'
Plug 'nvim-lualine/lualine.nvim'
Plug 'kyazdani42/nvim-web-devicons'
Plug 'ap/vim-css-color'
Plug 'nvim-lua/plenary.nvim'
Plug 'terryma/vim-multiple-cursors'
Plug 'nvim-telescope/telescope-file-browser.nvim'

vim.call('plug#end')

