return {
  'ray-x/lsp_signature.nvim',
  event = 'VeryLazy',
  opts = {},
  config = function()
    require('lsp_signature').setup {
      hint_enable = false,
      handler_opts = {
        border = 'none', -- double, rounded, single, shadow, none, or a table of borders
      },
      hi_parameter = 'String',
    }
  end,
}
