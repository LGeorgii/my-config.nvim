return {
  -- some comment
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
          fg = '#565f89',
        }
        hl.TelescopePromptBorder = {
          bg = c.bg_dark,
          fg = '#565f89',
        }
        hl.LspInfoBorder = {
          bg = c.bg_dark,
          fg = '#565f89',
        }
      end,
    }
  end,
}
