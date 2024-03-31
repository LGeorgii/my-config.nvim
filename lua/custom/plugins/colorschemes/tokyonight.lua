return {
  'folke/tokyonight.nvim',
  priority = 1000,
  init = function()
    require('tokyonight').setup {
      styles = {
        comments = { italic = true },
        keywords = { italic = true },
        functions = {},
        variables = {},
        floats = 'transparent',
      },
    }
  end,
}
