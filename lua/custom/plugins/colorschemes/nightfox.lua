return {
  'EdenEast/nightfox.nvim',
  priority = 1000,
  init = function()
    vim.cmd.colorscheme 'nightfox'

    require('lualine').setup {
      options = {
        theme = 'nightfox',
      },
    }
  end,
}
