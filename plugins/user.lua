-- Minimap
vim.g.minimap_width = 10
vim.g.minimap_auto_start = 1
vim.g.minimap_auto_start_win_enter = 1

return {
  -- You can also add new plugins here as well:
  -- Add plugins, the lazy syntax
  -- "andweeb/presence.nvim",
  -- {
  --   "ray-x/lsp_signature.nvim",
  --   event = "BufRead",
  --   config = function()
  --     require("lsp_signature").setup()
  --   end,
  -- },

  {
    "folke/zen-mode.nvim",
    config = function()
      require("zen-mode").setup {}
    end,
  },
  {
    "folke/todo-comments.nvim",
    requires = "nvim-lua/plenary.nvim",
    lazy = false,
    config = function()
      require("todo-comments").setup {}
    end,
  },
  {
    "wfxr/minimap.vim",
    lazy = false,
  }
}
