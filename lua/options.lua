-------------
-- options --
-------------

-- line numbers
vim.opt.number = true
vim.opt.relativenumber = true

-- indenting
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

-- set indents to 2 for various languages
vim.api.nvim_create_autocmd({
  'BufEnter',
  'BufWinEnter',
  'SourcePost',
}, {
  group = vim.api.nvim_create_augroup('AltIndents', { clear = true }),
  pattern = { '*.lua', '*.hs' },
  callback = function()
    vim.opt_local.tabstop = 2
    vim.opt_local.softtabstop = 2
    vim.opt_local.shiftwidth = 2
    vim.opt.expandtab = true
  end,
})

-- incremental search
vim.opt.hlsearch = false
vim.opt.incsearch = true

-- split windows right/below by default
vim.opt.splitbelow = true
vim.opt.splitright = true

-- miscellaneous
vim.opt.termguicolors = true
-- vim.opt.scrolloff = 8
vim.opt.signcolumn = 'yes'
vim.opt.colorcolumn = '81'

