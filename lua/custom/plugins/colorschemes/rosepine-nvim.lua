return {
  'rose-pine/neovim',
  name = 'rose-pine',
  priority = 1000,
  init = function()
    require('rose-pine').setup {
      variant = 'auto', -- auto, main, moon, or dawn
      dark_variant = 'main', -- main, moon, or dawn

      enable = {
        terminal = true,
        legacy_highlights = true,
        migrations = true,
      },

      styles = {
        bold = false,
        italic = false,
        transparency = false,
      },

      groups = {
        border = 'muted',
        link = 'iris',
        panel = 'surface',

        error = 'love',
        hint = 'iris',
        info = 'foam',
        note = 'pine',
        todo = 'rose',
        warn = 'gold',

        git_add = 'foam',
        git_change = 'rose',
        git_delete = 'love',
        git_dirty = 'rose',
        git_ignore = 'muted',
        git_merge = 'iris',
        git_rename = 'pine',
        git_stage = 'iris',
        git_text = 'rose',
        git_untracked = 'subtle',

        h1 = 'iris',
        h2 = 'foam',
        h3 = 'rose',
        h4 = 'gold',
        h5 = 'pine',
        h6 = 'foam',
      },
    }

    -- vim.cmd 'colorscheme rose-pine'

    -- require('lualine').setup {
    --   options = {
    --     theme = 'rose-pine',
    --   },
    -- }
  end,
}
