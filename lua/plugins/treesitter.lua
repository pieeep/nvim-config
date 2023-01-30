----------------
-- treesitter --
----------------

-- ensure parsers are installed via treesitter
-- see: https://github.com/nvim-treesitter/nvim-treesitter/issues/3092
local fn = vim.fn
local ts_path = fn.stdpath('data')..'/site/pack/packer/start/nvim-treesitter'
vim.opt.runtimepath:prepend(ts_path)

require 'nvim-treesitter.install'.prefer_git = false

require'nvim-treesitter.configs'.setup {
  ensure_installed = { 'help', 'haskell', 'python', 'lua' },
  sync_install = false,
  auto_install = true,
  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false,
  },
  incremental_selection = {
    enable = true,
    keymaps = {
      init_selection = '<CR>',
      node_incremental = '<CR>',
      scope_incremental = '<Tab>',
      node_decremental = '<BS>',
    },
  },
}
