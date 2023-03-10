--------------
-- kanagawa --
--------------

require('kanagawa').setup({
  compile = false,
  undercurl = true,
  commentStyle = { italic = true },
  functionStyle = {},
  keywordStyle = { italic = true},
  statementStyle = { bold = true },
  typeStyle = {},
  transparent = true,
  dimInactive = false,
  terminalColors = true,
  colors = {
    palette = {},
    theme = { wave = {}, lotus = {}, dragon = {},
      all = { ui = { bg_gutter = 'none' } }
    },
  },
  overrides = function(colors)
    return {
      StatusLine = { bg = '' },
      TabLineFill = { bg = '' },
      ColorColumn = { bg = '' },
      NormalFloat = { bg = '' },
      FloatBorder = { bg = '' },
      TelescopeBorder = { bg = '' },
    }
  end,
  theme = "wave",
  background = {
    dark = "wave",
    light = "lotus"
  },
})

vim.cmd.colorscheme('kanagawa')

