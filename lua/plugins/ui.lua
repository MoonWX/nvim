return {
  -- Bread Crumb Context
  "SmiteshP/nvim-navic",
  dependencies = "neovim/nvim-lspconfig",

  "nvim-treesitter/nvim-treesitter-context",

  -- Theme
  {
    'folke/tokyonight.nvim',
    priority = 1000, -- Make sure to load this before all the other start plugins.
    config = function()
      ---@diagnostic disable-next-line: missing-fields
      require('tokyonight').setup {}
      -- Load the colorscheme here.
      -- Like many other themes, this one has different styles, and you could load
      -- any other, such as 'tokyonight-storm', 'tokyonight-moon', or 'tokyonight-day'.
      vim.cmd.colorscheme 'tokyonight-night'
    end,
  },

  -- Icon System
  "nvim-tree/nvim-web-devicons",
  
  -- Status Bar
  { "nvim-lualine/lualine.nvim", dependencies = { "nvim-web-devicons" } },
  
  -- Indent Blackline
  { "lukas-reineke/indent-blankline.nvim" },
  
  -- Startup Page
  { "goolord/alpha-nvim" },

  -- Tabpage
  'akinsho/bufferline.nvim', 
  version = "*", 
  dependencies = 'nvim-tree/nvim-web-devicons',

  -- Which Key
  "folke/which-key.nvim",
  event = "VeryLazy",
  opts = {
    -- your configuration comes here
    -- or leave it empty to use the default settings
    -- refer to the configuration section below
  },
  keys = {
    {
      "<leader>?",
      function()
        require("which-key").show({ global = false })
      end,
      desc = "Buffer Local Keymaps (which-key)",
    },
  },
}
