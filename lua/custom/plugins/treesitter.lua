return {
  'nvim-treesitter/nvim-treesitter',
  build = ':TSUpdate',
  config = function()
    require('nvim-treesitter.configs').setup {
      ensure_installed = { 'jsdoc', 'javascript', 'typescript', 'html', 'css', 'lua', 'c', 'bash', 'markdown', 'vim', 'vimdoc' },
      auto_install = true,
      highlight = { enable = true },
      indent = { enable = true },
    }
  end,
}
