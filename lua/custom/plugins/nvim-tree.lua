return {
  'nvim-tree/nvim-tree.lua',
  dependencies = {
    'nvim-tree/nvim-web-devicons',
  },
  config = function()
    require('ayu').colorscheme()

    require('nvim-web-devicons').setup {
      override = {
        zsh = {
          icon = '',
          color = '#428850',
          cterm_color = '65',
          name = 'Zsh',
        },
      },
      strict = true,
      override_by_filename = {
        ['.gitignore'] = {
          icon = '',
          color = '#f1502f',
          name = 'Gitignore',
        },
      },
      override_by_extension = {
        ['log'] = {
          icon = '',
          color = '#81e043',
          name = 'Log',
        },
      },
    }

    local nvimtree = require 'nvim-tree'

    vim.g.loaded_netrw = 1
    vim.g.loaded_netrwPlugin = 1

    vim.cmd [[ highlight NvimTreeIndentMarker guifg=#3FC5FF ]]

    nvimtree.setup {
      notify = {
        threshold = vim.log.levels.WARN,
      },
      view = {
        width = 50,
        relativenumber = true,
      },
      renderer = {
        indent_markers = {
          enable = true,
        },
        icons = {
          glyphs = {
            folder = {
              arrow_closed = '',
              arrow_open = '',
            },
          },
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
      git = {
        ignore = false,
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
