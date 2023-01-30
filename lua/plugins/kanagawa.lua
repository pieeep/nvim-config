--------------
-- kanagawa --
--------------

-- Default options:
require('kanagawa').setup({
  undercurl = true,
  commentStyle = { italic = true },
  functionStyle = {},
  keywordStyle = { italic = true},
  statementStyle = { bold = true },
  typeStyle = {},
  variablebuiltinStyle = { italic = true},
  specialReturn = true,
  specialException = true,
  transparent = true,
  dimInactive = false,
  globalStatus = false,
  terminalColors = true,
  colors = {},
  overrides = {
    StatusLine = { bg = '' },
    TabLineFill = { bg = '' },
    ColorColumn = { bg = '' },
    NormalFloat = { bg = '' },
    FloatBorder = { bg = '' },
    TelescopeBorder = { bg = '' },
  },
  theme = 'default'
})

-- setup must be called before loading
vim.cmd.colorscheme('kanagawa')

