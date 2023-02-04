-----------------
-- nvim-notify --
-----------------

require('notify').setup({
  minimum_width = 30,
  render = 'default',
})

vim.notify = require('notify')

