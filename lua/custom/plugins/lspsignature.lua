return {
  'ray-x/lsp_signature.nvim',
  event = 'VeryLazy',
  opts = {},
  config = function()
    require('lsp_signature').setup {
      hint_enable = false,
      handler_opts = {
        border = 'rounded',
      },
      hi_parameter = 'String',
    }
  end,
}
