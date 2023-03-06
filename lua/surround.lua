--------------
-- surround --
--------------

local surround = function(c1, c2)
  local c2 = c2 or c1
  return '<Esc>`>a' .. c2 .. '<Esc>`<i' .. c1 .. '<Esc>'
end

-- "..."
vim.keymap.set('v', 's"', surround('"'))
vim.keymap.set('n', 'cs"', 'viw' .. surround('"'))

-- '...'
vim.keymap.set('v', "s'", surround("'"))
vim.keymap.set('n', "cs'", 'viw' .. surround("'"))

-- `...`
vim.keymap.set('v', "s`", surround("`"))
vim.keymap.set('n', "cs`", 'viw' .. surround("`"))

-- (...)
vim.keymap.set('v', 's(', surround('( ', ' )'))
vim.keymap.set('v', 's)', surround('(', ')'))
vim.keymap.set('n', 'cs(', 'viw' .. surround('( ', ' )'))
vim.keymap.set('n', 'cs)', 'viw' .. surround('(', ')'))

-- {...}
vim.keymap.set('v', 's{', surround('{ ', ' }'))
vim.keymap.set('v', 's}', surround('{', '}'))
vim.keymap.set('n', 'cs{', 'viw' .. surround('{ ', ' }'))
vim.keymap.set('n', 'cs}', 'viw' .. surround('{', '}'))

-- [...]
vim.keymap.set('v', 's[', surround('[ ', ' ]'))
vim.keymap.set('v', 's]', surround('[', ']'))
vim.keymap.set('n', 'cs[', 'viw' .. surround('[ ', ' ]'))
vim.keymap.set('n', 'cs]', 'viw' .. surround('[', ']'))

