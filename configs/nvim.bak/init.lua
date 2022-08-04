require('plug')

-- Keybinds
vim.g.mapleader = ","
vim.api.nvim_set_keymap('n', ';','l',{noremap = true})
vim.api.nvim_set_keymap('n', 'l','k',{noremap = true})
vim.api.nvim_set_keymap('n', 'k','j',{noremap = true})
vim.api.nvim_set_keymap('n', 'j','h',{noremap = true})
-- vim.api.nvim_set_keymap('n', '<leader>t' , 'NerdTreeToggle', {noremap = true})

vim.api.nvim_set_keymap('v', ';','l',{noremap = true})
vim.api.nvim_set_keymap('v', 'l','k',{noremap = true})
vim.api.nvim_set_keymap('v', 'k','j',{noremap = true})
vim.api.nvim_set_keymap('v', 'j','h',{noremap = true})
-- vim.api.nvim_set_keymap('v', '<leader>t' , 'NerdTreeToggle', {noremap = true})

-- Options
vim.o.mouse = 'a'
vim.o.number = true
vim.o.relativenumber = true
vim.o.termguicolors = true
vim.o.background = "dark"
vim.g.everforest_better_performance = true
vim.g.everforest_background = "medium"
vim.cmd('colorscheme everforest')

-- load legacy options
vim.cmd([[
	so ~/.config/nvim/legacy.vim
]])


local async = require "plenary.async"local async = require "plenary.async"
-- nvim-treesitter
require('nvim-treesitter.configs').setup {
    highlight = {
        enable = true,
    },
    indent = {
    enable = true
  }
}
require('lualine').setup {
  options = {
    -- ... your lualine config
    theme = 'everforest'
    -- ... your lualine config
  }
}

--  local home = os.getenv('HOME')
--  local db = require('dashboard')
--  -- macos
--  -- db.preview_command = 'cat | lolcat -F 0.3'
--  -- linux
--  -- db.preview_command = 'ueberzug'
--  --
--  -- db.preview_file_path = home .. '/.config/nvim/static/neovim.cat'
--  db.preview_file_height = 12
--  db.preview_file_width = 80
--  db.custom_center = {
--      {icon = '  ',
--      desc = 'Recently latest session                  ',
--      shortcut = 'SPC s l',
--      action ='SessionLoad'},
--      {icon = '  ',
--      desc = 'Recently opened files                   ',
--      action =  'DashboardFindHistory',
--      shortcut = 'SPC f h'},
--      {icon = '  ',
--      desc = 'Find  File                              ',
--      action = 'Telescope find_files find_command=rg,--hidden,--files',
--      shortcut = 'SPC f f'},
--      {icon = '  ',
--      desc ='File Browser                            ',
--      action =  'Telescope file_browser',
--      shortcut = 'SPC f b'},
--    }


vim.g.dashboard_default_executive = 'telescope'
vim.g.dashboard_custom_header = {
  [[              ▄▄▄▄▄▄▄▄▄            ]],
  [[           ▄█████████████▄          ]],
  [[   █████  █████████████████  █████  ]],
  [[   ▐████▌ ▀███▄       ▄███▀ ▐████▌  ]],
  [[    █████▄  ▀███▄   ▄███▀  ▄█████    ]],
  [[    ▐██▀███▄  ▀███▄███▀  ▄███▀██▌    ]],
  [[     ███▄▀███▄  ▀███▀  ▄███▀▄███    ]],
  [[     ▐█▄▀█▄▀███ ▄ ▀ ▄ ███▀▄█▀▄█▌    ]],
  [[      ███▄▀█▄██ ██▄██ ██▄█▀▄███      ]],
  [[       ▀███▄▀██ █████ ██▀▄███▀      ]],
  [[      █▄ ▀█████ █████ █████▀ ▄█      ]],
  [[      ███        ███        ███      ]],
  [[      ███▄    ▄█ ███ █▄    ▄███      ]],
  [[      █████ ▄███ ███ ███▄ █████      ]],
  [[      █████ ████ ███ ████ █████      ]],
  [[      █████ ████▄▄▄▄▄████ █████      ]],
  [[       ▀███ █████████████ ███▀      ]],
  [[         ▀█ ███ ▄▄▄▄▄ ███ █▀        ]],
  [[            ▀█▌▐█████▌▐█▀            ]],
  [[               ███████              ]]
}
vim.g.dashboard_custom_section = {
  a = {description = {'  Find File          '}, command = 'Telescope find_files'},
  d = {description = {'  Search Text        '}, command = 'Telescope live_grep'},
  b = {description = {'  Recent Files       '}, command = 'Telescope oldfiles'},
  e = {description = {'  Config             '}, command = 'edit ~/.config/nvim/init.lua'}
}
vim.g.dashboard_custom_footer = {'Do one thing, do it well - Unix Philosophy'}
