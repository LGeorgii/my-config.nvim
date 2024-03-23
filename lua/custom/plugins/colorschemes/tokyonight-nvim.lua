return {
  'folke/tokyonight.nvim',
  priority = 1000,
  init = function()
    require('lspconfig.ui.windows').default_options.border = 'rounded'

    require('tokyonight').setup {
      on_colors = function(colors)
        colors.bg = '#11131e'
        colors.bg_dark = '#11131e'
        colors.bg_sidebar = '#101425'
      end,

      on_highlights = function(hl)
        hl.NvimTreeNormal = {
          bg = '#11131e',
        }
        hl.NvimTreeNormalNC = {
          bg = '#11131e',
        }
        hl.TelescopeNormal = {
          bg = '#11131e',
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

    -- vim.cmd.colorscheme 'tokyonight-moon'
    vim.cmd.colorscheme 'tokyonight'
    vim.cmd.hi 'Comment gui=none'
  end,
}
