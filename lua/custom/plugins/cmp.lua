return {
  'hrsh7th/nvim-cmp',
  event = 'InsertEnter',
  dependencies = {
    'hrsh7th/cmp-nvim-lsp',         -- nvim-cmp source for neovim's built-in language server client.
    'hrsh7th/cmp-path',             -- nvim-cmp source for filesystem paths.
    'saadparwaiz1/cmp_luasnip',     -- LuaSnip completion source for nvim-cmp.
    'rafamadriz/friendly-snippets', -- Snippets collection for a set of different programming languages.
    'L3MON4D3/LuaSnip',
    {
      "jdrupal-dev/css-vars.nvim",
      branch = "cmp-source",
    },
  },
  config = function()
    require('luasnip.loaders.from_vscode').lazy_load()

    local cmp = require 'cmp'
    local luasnip = require 'luasnip'

    luasnip.config.setup {}

    cmp.setup {
      window = {
        completion = {
          border = 'rounded',
          winhighlight = 'Normal:TelescopeNormal,FloatBorder:TelescopePromptBorder,CursorLine:PmenuSel,Search:None',
        },
        documentation = {
          border = 'rounded',
          winhighlight = 'Normal:TelescopeNormal,FloatBorder:TelescopePromptBorder,CursorLine:PmenuSel,Search:None',
        },
      },
      snippet = {
        expand = function(args)
          luasnip.lsp_expand(args.body)
        end,
      },
      completion = { completeopt = 'menu,menuone,noinsert' },
      mapping = cmp.mapping.preset.insert {
        ['<C-n>'] = cmp.mapping.select_next_item(),
        ['<C-p>'] = cmp.mapping.select_prev_item(),
        ['<C-b>'] = cmp.mapping.scroll_docs(-4),
        ['<C-f>'] = cmp.mapping.scroll_docs(4),
        ['<CR>'] = cmp.mapping.confirm { select = true },
        ['<C-l>'] = cmp.mapping(function()
          if luasnip.expand_or_locally_jumpable() then
            luasnip.expand_or_jump()
          end
        end, { 'i', 's' }),
        ['<C-h>'] = cmp.mapping(function()
          if luasnip.locally_jumpable(-1) then
            luasnip.jump(-1)
          end
        end, { 'i', 's' }),
      },
      sources = {
        { name = 'nvim_lsp' },
        { name = 'luasnip' },
        { name = 'path' },
        { name = "css_vars" },
      },
    }
  end,
}
