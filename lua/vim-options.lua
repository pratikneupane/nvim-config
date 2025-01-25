-- This file consists of basic vim commands and api usages for navigating splitting copy paste etc...

-- Tabspacing stuffs
vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set shiftwidth=2")

-- Numbers
vim.cmd("set relativenumber")
vim.wo.number = true

-- Maping the leader to <space> key
vim.g.mapleader = " "

-- Navigating Panes
vim.keymap.set('n', '<c-k>', ':wincmd k<CR>', { desc = "Navigate Pane - Up" })
vim.keymap.set('n', '<c-j>', ':wincmd j<CR>', { desc = "Navigate Pane - Down" })
vim.keymap.set('n', '<c-h>', ':wincmd h<CR>', { desc = "Navigate Pane - Left" })
vim.keymap.set('n', '<c-l>', ':wincmd l<CR>', { desc = "Navigate Pane - Right" })

-- Navigating Buffers
vim.keymap.set('n', '<leader>[', ':bnext<CR>', { desc = "Navigate Buffer - Next Buffer" },
  { noremap = true, silent = true })
vim.keymap.set('n', '<leader>]', ':bprevious<CR>', { desc = "Navigate Buffer - Previous Buffer" },
  { noremap = true, silent = true })

-- Close buffer
vim.keymap.set('n', '<leader>kw', ':bufdo bd<CR>', { desc = "Close all buffers" })

-- Copy and Paste for external Clipboard
vim.opt.clipboard:append('unnamedplus')

-- Split Panes
vim.keymap.set('n', '<leader>s', ':vsplit<space><CR>', { desc = "Split Pane" }, { noremap = true, silent = false })

-- Vim Swapfile to false
vim.opt.swapfile = false

-- Netrw
-- vim.keymap.set('n', '<leader>e', ':Lexplore<CR>', {desc = "Open Netrw"}, { noremap = true, silent = true })

-- Disable Netrw
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- Color 24-bit support
vim.opt.termguicolors = true
