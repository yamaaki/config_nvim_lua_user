return {
  "nvim-neo-tree/neo-tree.nvim",
  opts = {
    sources = {
      "filesystem",
    },
    filesystem = {
      filtered_items = {
        visible = true,
      },
    },
    default_source = "filesystem",
    source_selector = {
      winbar = false,
    },
    default_component_configs = {
      indent = { padding = 0, indent_size = 2 },
    },
  }
}
