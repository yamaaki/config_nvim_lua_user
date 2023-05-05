return {
  "hrsh7th/nvim-cmp",
  opts = {
    -- <C-n> / <C-p> は Copilot の次候補 / 前候補に使う
    -- <C-j> / <C-k> はこれまで通り cmp の選択に使える
    mapping = {
      -- ["<C-n>"] = function() require("copilot.suggestion").next() end,
      -- ["<C-p>"] = function() require("copilot.suggestion").prev() end,
      ["<C-n>"] = function() end,
      ["<C-p>"] = function() end,
    },
  }
}
