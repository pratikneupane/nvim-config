return {
  "catppuccin/nvim",
  name = "catppuccin",
  lazy = false,
  priority = 1000,
  opts = {
    transparent_background = true,
  },
  config = function()
    require("catppuccin").setup({
      flavour = "macchiato",
      integrations = {
        treesitter = true,
        lsp_trouble = true,
        cmp = true,
        gitsigns = true,
        telescope = true,
        nvimtree = true,
        bufferline = true,
        markdown = true,
        notify = true,
        mini = true,
      },
    })
    vim.cmd.colorscheme("catppuccin")
  end,
}
