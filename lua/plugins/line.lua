return {
  {
    'tamton-aquib/staline.nvim',
    config = function()
      require('staline').setup {
        defaults = {
          expand_null_ls              = true,
          left_separator              = "",
          right_separator             = "",
          full_path                   = false,
          line_column                 = "[%l/%L] :%c 並%p%% ",
          fg                          = "#000000",
          bg                          = "none",
          inactive_color              = "#303030",
          inactive_bgcolor            = "none",
          true_colors                 = false,
          mod_symbol                  = "  ",
          lsp_client_symbol           = " ",
          lsp_client_character_length = 12,
          branch_symbol               = " ",
          cool_symbol                 = " ",
        },
        mode_colors = {
          n = "#2AC3DD",
          i = "#73DAC7",
          c = "#BA9AF7",
          v = "#F99C64",
        },
        mode_icons = {
          n = " ",
          i = " ",
          c = " ",
          v = " ",
        },
        sections = {
          left  = { '- ', '-mode', 'left_sep_double', ' ', 'branch' },
          mid   = { 'file_name' },
          right = { 'cool_symbol', 'right_sep_double', '-line_column' },
        },
        inactive_sections = {
          left  = { 'branch' },
          mid   = { 'file_name' },
          right = { 'line_column' }
        },
        special_table = {
          NvimTree = { 'NvimTree', ' ' },
          packer = { 'Lazy', ' ' },
        },
        lsp_symbols = {
          Error = " ",
          Info = " ",
          Warn = " ",
          Hint = "",
        },
      }
    end
  }
}
