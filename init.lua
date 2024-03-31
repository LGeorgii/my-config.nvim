require 'custom.core'
require 'custom.lazy'

function SetColorScheme(colorScheme)
  vim.api.nvim_set_hl(0, 'NormalFloat', { bg = 'none' })
  vim.cmd.colorscheme(colorScheme)

  require('lualine').setup {
    options = {
      theme = colorScheme,
    },
  }
end

SetColorScheme 'catppuccin'
