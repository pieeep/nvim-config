----------------------
-- indent-blankline --
----------------------

vim.opt.list = true
vim.opt.listchars:append 'space:⋅'

require('indent_blankline').setup({
  show_current_context = true,
  use_treesitter = true,
  filetype_exclude = {
    'haskell',
    'scheme',
    'lspinfo',
    'packer',
    'checkhealth',
    'help',
    'man',
    '',
  },
})

