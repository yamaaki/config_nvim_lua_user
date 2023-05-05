return {
  "nvim-telescope/telescope.nvim",
  opts = {
    defaults = {
      mappings = {
        i = { ["<ESC>"] = require("telescope.actions").close }
      }
    }
  },
}
