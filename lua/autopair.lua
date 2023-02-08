--------------
-- autopair --
--------------

-- automatically complete quotes/brackets
local function complete(char, single)
  local result = single and char:rep(2) .. '<left>' or char
  local col = vim.fn.col('.')
  local current_char = vim.fn.getline('.'):sub(col, col)
  return current_char == char and '<right>' or result
end

vim.keymap.set('i', '"', function() return complete('"', true) end, { expr = true })
vim.keymap.set('i', "'", function() return complete("'", true) end, { expr = true })

vim.keymap.set('i', '(', '()<left>')
vim.keymap.set('i', ')', function() return complete(')') end, { expr = true })

vim.keymap.set('i', '{', '{}<left>')
vim.keymap.set('i', '}', function() return complete('}') end, { expr = true })

vim.keymap.set('i', '[', '[]<left>')
vim.keymap.set('i', ']', function() return complete(']') end, { expr = true })

