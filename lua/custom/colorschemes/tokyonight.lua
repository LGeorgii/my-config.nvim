return {
  'folke/tokyonight.nvim',
  priority = 1000,
  init = function()
    require('tokyonight').setup {
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
          bg = c.bg_dark,
          fg = '#c0caf4',
        }
        hl.TelescopePromptBorder = {
          bg = c.bg_dark,
          fg = '#c0caf4',
        }
        hl.LspInfoBorder = {
          bg = c.bg_dark,
          fg = '#c0caf4',
        }
      end,

      styles = {
        comments = { italic = true },
        keywords = { italic = true },
        functions = {},
        variables = {},
      },
    }
  end,
}
