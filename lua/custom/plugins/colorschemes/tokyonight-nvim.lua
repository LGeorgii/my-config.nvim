return {
  'folke/tokyonight.nvim',
  priority = 1000,
  init = function()
    require('lspconfig.ui.windows').default_options.border = 'rounded'

    require('tokyonight').setup {
      on_colors = function(colors)
        colors.bg = '#0c0f20'
        colors.bg_dark = '#0c0f20'
      end,

      on_highlights = function(hl)
        hl.NvimTreeNormal = {
          bg = '#0c0f20',
        }
        hl.NvimTreeNormalNC = {
          bg = '#0c0f20',
        }
        hl.TelescopeNormal = {
          bg = '#0c0f20',
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
