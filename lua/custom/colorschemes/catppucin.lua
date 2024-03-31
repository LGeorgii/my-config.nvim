return {
  'catppuccin/nvim',
  name = 'catppuccin',
  priority = 1000,
  init = function()
    require('catppuccin').setup {
      flavour = 'macchiato', -- latte, frappe, macchiato, mocha
      custom_highlights = function(colors)
        return {
          NormalFloat = { bg = colors.none },
        }
      end,
    }
  end,
}
