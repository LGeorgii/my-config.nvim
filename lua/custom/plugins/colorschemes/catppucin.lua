return {
  'catppuccin/nvim',
  name = 'catppuccin',
  priority = 1000,
  init = function()
    require('catppuccin').setup {
      flavour = 'macchiato', -- latte, frappe, macchiato, mocha
      integrations = {
        cmp = true,
        gitsigns = true,
        nvimtree = true,
        treesitter = true,
      },
      custom_highlights = function(colors)
        return {
          NormalFloat = { bg = colors.none },
        }
      end,
    }

    vim.cmd.colorscheme 'catppuccin'

    require('lualine').setup {
      options = {
        theme = 'catppuccin',
      },
    }
  end,
}
