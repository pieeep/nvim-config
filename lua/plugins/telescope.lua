---------------
-- telescope --
---------------

require('telescope').setup {
  defaults = {
    layout_strategy = 'flex',
    previewer = true,
  },
  pickers = {
    help_tags = { layout_strategy = 'center' },
    builtin = { layout_strategy = 'center' },
  },
}

