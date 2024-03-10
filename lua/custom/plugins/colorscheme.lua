return {
  'Shatur/neovim-ayu',
  mirage = false, -- Set to `true` to use `mirage` variant instead of `dark` for dark background.
  overrides = {}, -- A dictionary of group names, each associated with a dictionary of parameters (`bg`, `fg`, `sp` and `style`) and colors in hex.
  config = function()
    require('ayu').colorscheme()
  end
}
