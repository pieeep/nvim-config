---------------------
-- packer settings --
---------------------

-- automatically install packer
local fn = vim.fn
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
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
  vim.cmd.packadd 'packer.nvim'
  packer_bootstrap = true
end

return require('packer').startup({function(use)
  use { 'wbthomason/packer.nvim' }

  -- color schemes
  use { "catppuccin/nvim", as = "catppuccin" }
  use { "rebelot/kanagawa.nvim" }

  -- fancy colorcolumn/indentation
  use { "lukas-reineke/virt-column.nvim" }
  use { "lukas-reineke/indent-blankline.nvim" }

  -- statusbar
  use {
  'nvim-lualine/lualine.nvim',
  requires = { 'kyazdani42/nvim-web-devicons' }
  }

  -- file tree
  use {
  'nvim-tree/nvim-tree.lua',
  requires = { 'nvim-tree/nvim-web-devicons' },
  }

  -- fuzzy finder
  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.0',
    requires = { {'nvim-lua/plenary.nvim'} }
  }

  -- parser for better syntax highlighting
  use( 'nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})

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
