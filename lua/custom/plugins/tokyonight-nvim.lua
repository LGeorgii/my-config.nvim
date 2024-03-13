return {
  'folke/tokyonight.nvim',
  priority = 1000,
  init = function()
    require('tokyonight').setup {
      styles = {
        comments = { italic = false },
        keywords = { italic = false },
        functions = {},
        variables = {},
      },
    }

    vim.cmd.colorscheme 'tokyonight-night'
    vim.cmd.hi 'Comment gui=none'
  end,
}
