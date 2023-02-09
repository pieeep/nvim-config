---------------------
-- packer settings --
---------------------

-- automatically install packer
local fn = vim.fn
local install_path = fn.stdpath('data') .. '/site/pack/packer/start/packer.nvim'
local packer_bootsrap = false
if fn.empty(fn.glob(install_path)) > 0 then
  fn.system({
    'git',
    'clone',
    '--depth',
    '1',
    'https://github.com/wbthomason/packer.nvim',
    install_path
  })
  vim.cmd.packadd('packer.nvim')
  packer_bootstrap = true
end

return require('packer').startup({function(use)
  use { 'wbthomason/packer.nvim' }
  use { 'nvim-lua/plenary.nvim' }
  use { 'nvim-tree/nvim-web-devicons'}

  use { 'rebelot/kanagawa.nvim' } -- color scheme

  use { 'nvim-telescope/telescope.nvim', tag = '0.1.1' } -- fuzzy finder
  use { 'nvim-lualine/lualine.nvim' } -- statusbar
  use { 'nvim-tree/nvim-tree.lua' } -- file tree
  use { 'rcarriga/nvim-notify' } -- notification manager
  use { 'lukas-reineke/virt-column.nvim' }
  use { 'lukas-reineke/indent-blankline.nvim' }

  -- parser for better syntax highlighting
  use {
    'nvim-treesitter/nvim-treesitter',
    run = function()
      local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
      ts_update()
    end,
  }

  -- sync packer if newly installed
  if packer_bootstrap then
    require('packer').sync()
  end
end,
config = {
  display = {
    open_fn = function()
      return require('packer.util').float({ border = 'rounded' })
    end
  }
}})
