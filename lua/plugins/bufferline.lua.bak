return {
  'akinsho/bufferline.nvim',
  version = "*",
  dependencies = 'nvim-tree/nvim-web-devicons',
  config = function()
    require("bufferline").setup({
      options = {
        -- Automatically switch to the next buffer when closing the current one
        close_command = function(bufnum)
          vim.api.nvim_buf_delete(bufnum, { force = true })
          -- You can add custom logic here for switching to another buffer if needed
        end,
        -- Optionally, you can add additional custom behavior here, like highlighting active buffer, etc.
      }
    })
  end
}
