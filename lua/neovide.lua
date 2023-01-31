-------------
-- neovide --
-------------

vim.opt.guifont = { 'SauceCodePro NF', 'h14' }

local alpha = function()
  return string.format("%x", math.floor(255 * vim.g.neovide_transparency_point or 0.8))
end

vim.g.neovide_transparency = 0.0
vim.g.transparency = 0.85
vim.g.neovide_background_color = "#0f1117" .. alpha()

