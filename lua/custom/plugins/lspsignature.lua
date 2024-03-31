return {
  "ray-x/lsp_signature.nvim",
  event = "VeryLazy",
  opts = {},
  config = function()
    local opts = {
      hint_enable = false,
    }

    require 'lsp_signature'.setup(opts)
  end
}
