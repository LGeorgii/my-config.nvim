return {
  'folke/tokyonight.nvim',
  priority = 1000,
  init = function()
    require('tokyonight').setup {
      on_colors = function(colors)
        colors.bg = '#0E0F1B'
        colors.bg_dark = '#0E0F1B'
        colors.bg_sidebar = '#101425'
      end,

      on_highlights = function(hl, c)
        hl.NvimTreeNormal = {
          bg = c.bg_dark,
        }
        hl.NvimTreeNormalNC = {
          bg = c.bg_dark,
        }
        hl.TelescopeNormal = {
          bg = c.bg_dark,
        }
        hl.TelescopeBorder = {
          fg = '#82A0F1',
        }
        hl.TelescopePromptBorder = {
          fg = '#82A0F1',
        }
        hl.LspInfoBorder = {
          fg = '#82A0F1',
        }
      end,

      -- transparent = true,
      styles = {
        comments = { italic = false },
        keywords = { italic = false },
        functions = {},
        variables = {},
        -- sidebars = 'transparent',
        -- floats = 'transparent',
      },
    }

    vim.cmd.colorscheme 'tokyonight-night'

    require('lualine').setup {
      options = {
        theme = 'tokyonight',
      },
    }
  end,
}
