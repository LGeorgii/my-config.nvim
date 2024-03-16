return {
  'nvim-tree/nvim-tree.lua',
  dependencies = {
    'nvim-tree/nvim-web-devicons',
  },
  config = function()
    require('nvim-web-devicons').setup {
      override_by_filename = {
        ['.gitignore'] = {
          icon = '',
          color = '#f1502f',
          name = 'Gitignore',
        },
      },
    }

    local nvimtree = require 'nvim-tree'

    vim.g.loaded_netrw = 1
    vim.g.loaded_netrwPlugin = 1

    vim.cmd [[ highlight NvimTreeIndentMarker guifg=#6f838c ]]

    nvimtree.setup {
      notify = {
        threshold = vim.log.levels.WARN,
      },
      view = {
        width = 40,
        relativenumber = true,
      },
      renderer = {
        indent_markers = {
          enable = true,
        },
      },
      -- Disable window_picker for explorer to work well with window splits.
      actions = {
        open_file = {
          quit_on_open = true,
          window_picker = {
            enable = false,
          },
        },
      },
      filters = {
        custom = { '.DS_Store' },
      },
      update_focused_file = {
        enable = true,
        update_root = false,
      },
    }

    local keymap = vim.keymap

    keymap.set('n', '<leader>t', '<cmd>NvimTreeToggle<CR>', { desc = 'Toggle file explorer' })
  end,
}
