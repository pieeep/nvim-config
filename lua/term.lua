----------
-- term --
----------

vim.keymap.set('n', '<leader><CR>', ':10sp | term<CR>i')
vim.keymap.set('t', '<Esc>', '<C-\\><C-n>')
vim.keymap.set('t', '<C-w>', '<C-\\><C-n><C-w>')
vim.keymap.set('t', '<C-o>', '<C-\\><C-o>')

local term_group = vim.api.nvim_create_augroup('Term', { clear = true })

vim.api.nvim_create_autocmd({ 'TermOpen', }, {
  group = term_group,
  command = 'setl nonu nornu cc=',
})

