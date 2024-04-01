require 'custom.core'
require 'custom.lazy'

vim.cmd.colorscheme 'tokyonight-night'

require('lualine').setup {
  options = {
    theme = 'tokyonight',
  },
}
