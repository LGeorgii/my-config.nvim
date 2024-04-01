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

vim.keymap.set('n', '<leader>ll', '<cmd>Lazy<CR>', { desc = 'Opens Lazy' })

require('lazy').setup({
  { import = 'custom.plugins' },
  { import = 'custom.colorschemes' },
}, {
  checker = {
    enabled = true,
    notify = false,
  },
  change_detection = {
    notify = false,
  },
})
