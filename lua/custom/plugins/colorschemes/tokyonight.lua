return {
  'folke/tokyonight.nvim',
  priority = 1000,
  init = function()
    require('tokyonight').setup {
      on_highlights = function(hl)
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

    -- vim.cmd.colorscheme 'tokyonight-night'
    --
    -- require('lualine').setup {
    --   options = {
    --     theme = 'tokyonight',
    --   },
    -- }
  end,
}
