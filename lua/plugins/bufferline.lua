----------------
-- bufferline --
----------------

require('bufferline').setup({
  options = {
    mode = 'tabs',
    separator_style = { '', '' },
    offsets = {
      {
        filetype = 'NvimTree',
        text = 'files',
        highlight = 'directory',
        separator = true,
      },
    },
  },
})

