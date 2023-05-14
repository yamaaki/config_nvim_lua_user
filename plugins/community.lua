return {
  -- Add the community repository of plugin specifications
  "AstroNvim/astrocommunity",
  { import = "astrocommunity.completion.copilot-lua" },
  {
    -- further customize the options set by the community
    "copilot.lua",
    opts = {
      suggestion = {
        -- auto_trigger = false,
        keymap = {
          accept_word = "<C-o>",
          accept_line = false,
          accept = "<C-l>",
          next = "<C-n>",
          prev = "<C-p>",
          dismiss = false,
        },
      },
    },
  },
  -- example of imporing a plugin, comment out to use it or add your own
  -- available plugins can be found at https://github.com/AstroNvim/astrocommunity

  -- { import = "astrocommunity.colorscheme.catppuccin" },
  -- { import = "astrocommunity.completion.copilot-lua-cmp" },
}
