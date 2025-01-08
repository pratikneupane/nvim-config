return {
  "folke/which-key.nvim",
  config = function()
    -- Require which-key
    local wk = require("which-key")

    -- Define the keybindings
    wk.register({

      { "<leader>-",                desc = "<cmd>OilToggleFloat<cr>" },
      { "<leader><C-,>",            desc = "<cmd>lua vim.fn['codeium#CycleCompletions'](-1)<cr>" },
      { "<leader><C-;>",            desc = "Cycle Codeium Completions Forward" },
      { "<leader><C-g>",            desc = "<cmd>lua vim.fn['codeium#Accept']()<cr>" },
      { "<leader><C-h>",            desc = ":wincmd h<CR>" },
      { "<leader><C-j>",            desc = ":wincmd j<CR>" },
      { "<leader><C-k>",            desc = "<cmd>Telescope find_files<cr>" },
      { "<leader><C-l>",            desc = ":wincmd l<CR>" },
      { "<leader><C-n>",            desc = "<cmd>VMulti<cr>" },
      { "<leader><C-p>",            desc = "<cmd>Neotree filesystem toggle right<CR>" },
      { "<leader><C-s>",            desc = ":vsplit<Space>" },
      { "<leader><C-x>",            desc = "<cmd>lua vim.fn['codeium#Clear']()<cr>" },
      { "<leader><S-Tab>",          desc = ":bprevious<CR>" },
      { "<leader><Tab>",            desc = ":bnext<CR>" },
      { "<leader><leader><leader>", desc = "<cmd>Telescope oldfiles<cr>" },
      { "<leader><leader>bf",       desc = "<cmd>Neotree buffers reveal float<CR>" },
      { "<leader><leader>ca",       desc = "<cmd>lua vim.lsp.buf.code_action()<cr>" },
      { "<leader><leader>cl",       desc = "<cmd>Trouble lsp toggle focus=false win.position=right<cr>" },
      { "<leader><leader>cs",       desc = "<cmd>Trouble symbols toggle focus=false<cr>" },
      { "<leader><leader>fg",       desc = "<cmd>Telescope live_grep<cr>" },
      { "<leader><leader>fu",       desc = "<cmd>Telescope ui-select<cr>" },
      { "<leader><leader>gd",       desc = "<cmd>lua vim.lsp.buf.definition()<cr>" },
      { "<leader><leader>gf",       desc = "<cmd>lua vim.lsp.buf.formatting()<cr>" },
      { "<leader><leader>gg",       desc = "<cmd>:Gitsigns preview_hunk<CR>" },
      { "<leader><leader>gr",       desc = "<cmd>lua vim.lsp.buf.references()<cr>" },
      { "<leader><leader>gt",       desc = "<cmd>:Gitsigns toggle_current_line_blame<CR>" },
      { "<leader><leader>h",        desc = ":nohlsearch<CR>" },
      { "<leader><leader>s",        desc = "<cmd>lua require('luasnip').expand_or_jump()<cr>" },
      { "<leader><leader>u",        desc = "<cmd>UndotreeToggle<cr>" },
      { "<leader><leader>xL",       desc = "<cmd>Trouble loclist toggle<cr>" },
      { "<leader><leader>xQ",       desc = "<cmd>Trouble qflist toggle<cr>" },
      { "<leader><leader>xX",       desc = "<cmd>Trouble diagnostics toggle filter.buf=0<cr>" },
      { "<leader><leader>xx",       desc = "<cmd>Trouble diagnostics toggle<cr>" },
      { "<leader>K",                desc = "<cmd>lua vim.lsp.buf.hover()<cr>" },
    })
  end,
}
