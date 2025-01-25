return {
  "nvim-tree/nvim-tree.lua",
  config = function()
    local nvim_tree = require("nvim-tree").setup()
    require("nvim-tree").setup {
      on_attach = "default",
      hijack_cursor = true,
      auto_reload_on_write = true,
      hijack_netrw = true,
      hijack_unnamed_buffer_when_opening = true,
      view = {
        centralize_selection = false,
        debounce_delay = 1,
        side = "right",
        preserve_window_proportions = true,
        number = true,
        relativenumber = true,
        signcolumn = "yes",
        width = 30,
      },
    }

    -- Keymaps
    vim.keymap.set('n', '<c-p>', ':NvimTreeToggle<CR>', { desc = "Toggle File Tree" })
  end
}
