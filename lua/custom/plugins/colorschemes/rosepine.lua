return {
  'rose-pine/neovim',
  name = 'rose-pine',
  priority = 1000,
  init = function()
    require('rose-pine').setup {
      variant = 'moon', -- auto, main, moon, or dawn

      styles = {
        bold = false,
        italic = false,
        transparency = false,
      },
    }

    -- vim.cmd.colorscheme 'rose-pine'

    -- require('lualine').setup {
    --   options = {
    --     theme = 'rose-pine',
    --   },
    -- }
  end,
}
