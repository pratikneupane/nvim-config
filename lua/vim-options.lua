vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.cmd("set relativenumber")
vim.cmd("set foldmethod=syntax")
vim.g.mapleader = " "

vim.opt.swapfile = false

-- Navigate vim panes better
vim.keymap.set('n', '<c-k>', ':wincmd k<CR>')
vim.keymap.set('n', '<c-j>', ':wincmd j<CR>')
vim.keymap.set('n', '<c-h>', ':wincmd h<CR>')
vim.keymap.set('n', '<c-l>', ':wincmd l<CR>')

vim.keymap.set('n', '<leader>h', ':nohlsearch<CR>')
vim.wo.number = true

-- Navigate buffers
vim.api.nvim_set_keymap('n', '<Tab>', ':bnext<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<S-Tab>', ':bprevious<CR>', { noremap = true, silent = true })

-- Copy and Paste for external Clipboard
vim.opt.clipboard:append("unnamedplus")

-- Undo history file for undo tree
vim.opt.undofile = true
vim.opt.undodir = vim.fn.expand("~/.config/nvim/undo")

-- Split panes
vim.keymap.set(
  "n",
  "<C-s>",
  ":vsplit<Space>",
  { noremap = true, silent = false }
)

-- close buffers

vim.keymap.set('n', '<leader>ka', ':bufdo bd<CR>', { desc = 'Close all buffers' })

vim.keymap.set('n', '<leader>kw', ':bufdo if bufnr("%") ~= bufnr("") | bd | endif<CR>', { desc = 'Close all except current buffer' })
