-- Mapping data with "desc" stored directly by vim.keymap.set().
--
-- Please use this mappings table to set keyboard mapping since this is the
-- lower level configuration and more robust one. (which-key will
-- automatically pick-up stored data by this setting.)
return {
  -- first key is the mode
  n = {
    -- second key is the lefthand side of the map
    -- mappings seen under group name "Buffer"
    ["<leader>bn"] = { "<cmd>tabnew<cr>", desc = "New tab" },
    ["<leader>bD"] = {
      function()
        require("astronvim.utils.status").heirline.buffer_picker(function(bufnr)
          require("astronvim.utils.buffer").close(
            bufnr)
        end)
      end,
      desc = "Pick to close",
    },
    -- tables with the `name` key will be registered with which-key if it's installed
    -- this is useful for naming menus
    ["<leader>b"] = { name = "Buffers" },
    -- quick save
    -- ["<C-s>"] = { ":w!<cr>", desc = "Save File" },  -- change description but the same command

    -- Vertical Split と Horizontal Split を再定義
    ["vv"] = { "<cmd>vsplit<cr>", desc = "Vertical Split" },
    ["ss"] = { "<cmd>split<cr>", desc = "Horizontal Split" },

    -- <C-S-[kjhl]> で Split Pane の高さや幅を調整
    ["<C-S-k>"] = { function() require("smart-splits").resize_up() end, desc = "Resize split up" },
    ["<C-S-j>"] = { function() require("smart-splits").resize_down() end, desc = "Resize split down" },
    ["<C-S-h>"] = { function() require("smart-splits").resize_left() end, desc = "Resize split left" },
    ["<C-S-l>"] = { function() require("smart-splits").resize_right() end, desc = "Resize split right" },

    ["nn"] = {
      function() require("astronvim.utils.buffer").nav(-(vim.v.count > 0 and vim.v.count or 1)) end,
      desc = "Previous buffer",
    },
    ["mm"] = {
      function() require("astronvim.utils.buffer").nav(vim.v.count > 0 and vim.v.count or 1) end,
      desc = "Next buffer",
    },
    ["ww"] = {
      function() require("zen-mode").toggle({ window = { width = .9, height = .9 } }) end,
      desc = "Zen mode",
    },
    ["<C-i>"] = { "<cmd>ToggleTerm<cr>", desc = "Toggle terminal" },

    -- ToDo
    [",d"] = { "0r!f[lrx", desc = "Make it done" },
    [",e"] = { "0r f[lr ", desc = "Make it empty" },
    [",r"] = { "0r!f[lr ", desc = "Make it reset" },
    [",a"] = { "0r-f[lr ", desc = "Make it active" },
    [",f"] = { "0r>f[lr ", desc = "Make it forward" },

    -- 現在開いているファイルまでのパスを取得して make debug DIR=<dir> FILE=<file> を実行
    [",,"] = {
      "<cmd>execute 'TermExec cmd=\"make debug DIR=' . expand('%:h') . ' FILE=' . expand('%:t') . '\"'<cr>",
      desc = "Execute this file",
    },

    -- Toggle Copilot
    ["<leader>uo"] = {
      function() require("copilot.suggestion").toggle_auto_trigger() end,
      desc = "Toggle Copilot Auto Suggestion",
    },

    -- すべての内容を削除
    ["<leader>dd"] = { "<cmd>%delete<cr>", desc = "Delete all contents" },
  },
  v = {
    -- ToDo
    [",d"] = { ":s/^\\(.\\) => \\[.\\]/! => [x]/<cr>", desc = "Make them done" },
    [",e"] = { ":s/^\\(.\\) => \\[.\\]/  => [ ]/<cr>", desc = "Make them empty" },
    [",r"] = { ":s/^\\(.\\) => \\[.\\]/! => [ ]/<cr>", desc = "Make them reset" },
    [",a"] = { ":s/^\\(.\\) => \\[.\\]/- => [ ]/<cr>", desc = "Make them active" },
    [",f"] = { ":s/^\\(.\\) => \\[.\\]/> => [ ]/<cr>", desc = "Make them forward" },
  },
  t = {
    -- setting a mapping to false will disable it
    -- ["<esc>"] = false,

    -- <C-S-[kjhl]> で Split Pane の高さや幅を調整
    ["<C-S-k>"] = { function() require("smart-splits").resize_up() end, desc = "Resize split up" },
    ["<C-S-j>"] = { function() require("smart-splits").resize_down() end, desc = "Resize split down" },
    ["<C-S-h>"] = { function() require("smart-splits").resize_left() end, desc = "Resize split left" },
    ["<C-S-l>"] = { function() require("smart-splits").resize_right() end, desc = "Resize split right" },

    -- -- Next / Prev buffer.
    ["nn"] = {
      function() require("astronvim.utils.buffer").nav(-(vim.v.count > 0 and vim.v.count or 1)) end,
      desc = "Previous buffer",
    },
    ["mm"] = {
      function() require("astronvim.utils.buffer").nav(vim.v.count > 0 and vim.v.count or 1) end,
      desc = "Next buffer",
    },

    -- <Esc> で Normal Mode に戻る
    ["<Esc>"] = { "<C-\\><C-n>", desc = "Resize split right" },
  },
}
