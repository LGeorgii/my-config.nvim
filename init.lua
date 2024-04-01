require 'custom.core'
require 'custom.lazy'

function SetColorScheme(colorScheme)
  vim.cmd.colorscheme(colorScheme)

  require('lualine').setup {
    options = {
      theme = colorScheme,
    },
  }
end

SetColorScheme 'tokyonight-night'
