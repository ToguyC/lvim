--[[
lvim is the global options object

Linters should be
filled in as strings with either
a global executable or a path to
an executable
]]
-- THESE ARE EXAMPLE CONFIGS FEEL FREE TO CHANGE TO WHATEVER YOU WANT

-- general
lvim.format_on_save = true
lvim.lint_on_save = true
lvim.colorscheme = "onedarker"

-- keymappings [view all the defaults by pressing <leader>Lk]
lvim.leader = "space"

-- Which_key
lvim.builtin.which_key.mappings["P"] = { "<cmd>Telescope projects<CR>", "Projects" }

-- Project rooter: disable LSP, only root for git repo
lvim.builtin.project.detection_methods = { "pattern" }
lvim.builtin.project.patterns = { ".git" }

-- TODO: User Config for predefined plugins
-- After changing plugin config exit and reopen LunarVim, Run :PackerInstall :PackerCompile
lvim.builtin.dashboard.active = true
lvim.builtin.terminal.active = true
lvim.builtin.dap.active = true
lvim.builtin.nvimtree.side = "left"
lvim.builtin.nvimtree.show_icons.git = 1

-- if you don't want all the parsers change this to a table of the ones you want
lvim.builtin.treesitter.ensure_installed = "maintained"
lvim.builtin.treesitter.ignore_install = { "haskell" }
lvim.builtin.treesitter.highlight.enabled = true
lvim.builtin.treesitter.matchup.enabled = true
lvim.builtin.treesitter.indent = { enable=true, disable={"yaml", "python"} }

-- set a formater if you want to override the default lsp one
lvim.lang.python.formatters = {
  {
    exe = "black"
  }
}

-- custom builtin plugin
require("user.lualine").config()
require("user.dashboard").config()

require'lspconfig'.ansiblels.setup{}
lvim.builtin.dap.on_config_done = require("user.dap").config_done

-- additional plugins
lvim.plugins = {
  { "lunarvim/colorschemes" },
  { "folke/tokyonight.nvim" },
  { "EdenEast/nightfox.nvim" },
  { "navarasu/onedark.nvim" },
  {
    "ray-x/lsp_signature.nvim",
    event = "InsertEnter",
    config = function()
      require("user.lsp_signature")
    end
  },
  {
    "ethanholz/nvim-lastplace",
    event = "BufRead",
    config = function()
      require("user.lastplace").config()
    end,
  },
  {
    "lukas-reineke/indent-blankline.nvim",
    config = function()
      require("user.blankline")
    end,
  },
  {
    "phaazon/hop.nvim",
    event = "BufRead",
    config = function()
      require("user.hop").config()
    end,
  },
  {
    "andymass/vim-matchup", -- % key to go from beginning to end of a block and reverse
    event = "CursorMoved",
    config = function()
      require "user.matchup"
    end,
  },
  {
    "tpope/vim-surround", -- see https://github.com/tpope/vim-surround
    keys = {"c", "d", "y"}
  },
  { "tpope/vim-repeat" },
  {
    "iamcco/markdown-preview.nvim",
    run = "cd app && npm install",
    ft = "markdown",
    config = function()
      vim.g.mkdp_auto_start = 1
    end,
  },
  {
    "norcalli/nvim-colorizer.lua",
    config = function()
      require("user.colorizer").config()
    end,
  },
  {
    "simrat39/symbols-outline.nvim",
    cmd = "SymbolsOutline",
  },
  {
    "folke/trouble.nvim",
    config = function()
      require("trouble").setup()
    end,
  },
  {
    -- DiffViewOpen
    "sindrets/diffview.nvim",
    event = "BufRead",
  },
  {
    "Pocco81/TrueZen.nvim"
  },
  {
    "rcarriga/nvim-dap-ui",
    config = function()
      require("user.dap").config()
    end,
  },
  {
    "folke/todo-comments.nvim",
    requires = "nvim-lua/plenary.nvim",
    config = function()
      require("todo-comments").setup()
    end,
    event = "BufRead",
  },
  {
    'nvim-telescope/telescope-media-files.nvim'
  },
}

-- custom builtin plugin config

-- import keymapping
require("user.keys")

-- Autocommands (https://neovim.io/doc/user/autocmd.html)
lvim.autocommands.custom_groups = {
  { "BufWinEnter", "*.md", "setlocal nospell" },
}
