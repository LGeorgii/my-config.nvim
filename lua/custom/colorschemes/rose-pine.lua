return {
  'rose-pine/neovim',
  name = 'rose-pine',
  config = function()
    require('rose-pine').setup {
      variant = 'main', -- auto, main, moon, or dawn
      styles = {
        italic = false,
        transparency = true,
      },
    }
  end,
}
