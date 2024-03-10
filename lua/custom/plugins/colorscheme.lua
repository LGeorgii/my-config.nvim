return {
  'Shatur/neovim-ayu',
  mirage = false,
  overrides = {},

  config = function()
    require('ayu').colorscheme()
  end
}
