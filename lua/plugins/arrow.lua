return {
  "otavioschwanck/arrow.nvim",
  dependencies = {
    { "nvim-tree/nvim-web-devicons" },
  },
  opts = {
    show_icons = true,
    always_show_path = true,
    separate_by_branch = true,
    separate_save_and_remove = true,
    leader_key = ';',
    buffer_leader_key = 'm',
    mappings = {
      edit = "e",
      delete_mode = "D",
      clear_all_items = "C",
      toggle = "a",  -- used as save if separate_save_and_remove is true
      open_vertical = "v",
      open_horizontal = "-",
      quit = "q",
      remove = "d",  -- only used if separate_save_and_remove is true
      next_item = "n",
      prev_item = "p"
    },
  }
}
