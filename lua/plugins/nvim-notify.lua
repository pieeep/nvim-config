-----------------
-- nvim-notify --
-----------------

require('notify').setup({
  background_colour = '#000000',
  minimum_width = 30,
  render = 'default',
})

vim.notify = require('notify')
require('telescope').load_extension('notify')

