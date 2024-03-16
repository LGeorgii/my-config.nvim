return {
  'folke/tokyonight.nvim',
  priority = 1000,
  init = function()
    require('tokyonight').setup {
      on_highlights = function(hl, c)
        hl.TelescopeNormal = {
          bg = c.bg_dark,
          fg = c.fg_dark,
        }
        hl.TelescopeBorder = {
          bg = c.bg_dark,
          fg = '#82A0F1',
        }
        hl.TelescopePromptNormal = {
          bg = c.bg_dark,
        }
        hl.TelescopePromptBorder = {
          bg = c.bg_dark,
          fg = '#82A0F1',
        }
        hl.TelescopePromptTitle = {
          bg = c.bg_dark,
          fg = '#82A0F1',
        }
        hl.TelescopePreviewTitle = {
          bg = c.bg_dark,
          fg = '#82A0F1',
        }
        hl.TelescopeResultsTitle = {
          bg = c.bg_dark,
          fg = '#82A0F1',
        }
      end,
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
