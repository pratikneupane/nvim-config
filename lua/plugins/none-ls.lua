return {
  "nvimtools/none-ls.nvim",
  dependencies = {
    {
      "AstroNvim/astrolsp",
      opts = {},
    }
  },
  opts = function()
    return {
      on_attach = require("astrolsp").on_attach,
    }
  end,
  config = function()
    local null_ls = require("null-ls")
    null_ls.setup({
      sources = {
        null_ls.builtins.formatting.stylua,
        null_ls.builtins.formatting.prettier,
        null_ls.builtins.formatting.gofmt,
        null_ls.builtins.diagnostics.erb_lint,
        null_ls.builtins.diagnostics.rubocop,
        null_ls.builtins.formatting.rubocop,
      },
    })

    vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, {})
  end,
}
