return {
  {
      "nvim-neorg/neorg",
      lazy = false, -- Disable lazy loading as some `lazy.nvim` distributions set `lazy = true` by default
      version = "*", -- Pin Neorg to the latest stable release
      config = true,
  },

  {
      'nvim-flutter/flutter-tools.nvim',
      lazy = false,
      dependencies = {
          'nvim-lua/plenary.nvim',
          'stevearc/dressing.nvim', -- optional for vim.ui.select
      },
      config = true,
  },
} -- end of plugins
