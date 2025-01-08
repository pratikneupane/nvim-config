return {
  "mbbill/undotree",
  config = function()
    -- Keybinding to toggle the undo tree
    vim.keymap.set("n", "<leader>u", ":UndotreeToggle<CR>", { noremap = true, silent = true })
  end,
}

