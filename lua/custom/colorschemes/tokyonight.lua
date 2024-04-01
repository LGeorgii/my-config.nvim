return {
  'folke/tokyonight.nvim',
  priority = 1000,
  init = function()
    require('tokyonight').setup {
      transparent = true,
      styles = {
        floats = 'transparent',
      },
      on_highlights = function(hl)
        hl.TelescopeBorder = {
          fg = '#565f89',
        }
        hl.TelescopePromptBorder = {
          fg = '#565f89',
        }
        hl.LspInfoBorder = {
          fg = '#565f89',
        }
        hl.FloatBorder = {
          fg = '#565f89',
        }
      end,
    }
  end,
}
