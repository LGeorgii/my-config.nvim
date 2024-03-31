return {
  'rose-pine/neovim',
  name = 'rose-pine',
  priority = 1000,
  init = function()
    require('rose-pine').setup {
      variant = 'main', -- auto, main, moon, or dawn
      styles = {
        bold = false,
        italic = true,
        transparency = false,
      },
    }
  end,
}
