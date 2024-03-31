return {
  'nvim-lualine/lualine.nvim',
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  init = function()
    require('lualine').setup {
      options = {
        section_separators = '',
        component_separators = '',
      },
      sections = {
        lualine_x = { 'encoding', 'filetype' },
      },
    }
  end,
}
