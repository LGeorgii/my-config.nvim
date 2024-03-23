local lazypath = vim.fn.stdpath 'data' .. '/lazy/lazy.nvim'

if not vim.loop.fs_stat(lazypath) then
  vim.fn.system {
    'git',
    'clone',
    '--filter=blob:none',
    'https://github.com/folke/lazy.nvim.git',
    '--branch=stable',
    lazypath,
  }
end

vim.opt.rtp:prepend(lazypath)

require('lazy').setup({
  { import = 'custom.plugins' },
  { import = 'custom.plugins.colorschemes' },
}, {
  checker = {
    enabled = true,
    notify = false,
  },
  change_detection = {
    notify = false,
  },
})

local keymap = vim.keymap
keymap.set('n', '<leader>ll', '<cmd>Lazy<CR>', { desc = 'Opens Lazy' })
