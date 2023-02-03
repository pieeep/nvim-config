-----------------
-- keybindings --
-----------------

vim.g.mapleader = ' ' -- leader: <space>

-- check health
vim.keymap.set('n', '<leader>ch', ':checkhealth<CR>')

-- save/quit/source
vim.keymap.set('n', '<leader>w', ':w<CR>')
vim.keymap.set('n', '<leader>q', ':q<CR>')
vim.keymap.set('n', '<leader>so', ':so %<CR>')

-- automatically complete quotes/brackets
local function complete(char, single)
  local result = single and char:rep(2)..'<left>' or char
  local col = vim.fn.col('.')
  local current_char = vim.fn.getline('.'):sub(col, col)
  return current_char == char and '<right>' or result
end
-- "..."
vim.keymap.set('i', '"', function() return complete('"', true) end, {expr = true})
-- '...'
vim.keymap.set('i', "'", function() return complete("'", true) end, {expr = true})
-- (...)
vim.keymap.set('i', '(', '()<left>', {noremap = true})
vim.keymap.set('i', ')', function() return complete(')') end, {expr = true})
-- {...}
vim.keymap.set('i', '{', '{}<left>', {noremap = true})
vim.keymap.set('i', '}', function() return complete('}') end, {expr = true})
-- [...]
vim.keymap.set('i', '[', '[]<left>', {noremap = true})
vim.keymap.set('i', ']', function() return complete(']') end, {expr = true})

-- visual mode
vim.keymap.set('n', '<leader>vb', '<C-v>')
vim.keymap.set('v', 'J', ":m '>+1<CR>gv=gv")
vim.keymap.set('v', 'K', ":m '<-2<CR>gv=gv")

-- replace every instance of word under cursor
vim.keymap.set('n', '<leader>cw', [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- copy/paste to/from system clipboard
vim.keymap.set('n', '<leader>y', '"+y')
vim.keymap.set('v', '<leader>y', '"+y')
vim.keymap.set('n', '<leader>Y', '"+Y')
vim.keymap.set('n', '<leader>p', '"+p')
vim.keymap.set('v', '<leader>p', '"+p')

-- move cursor while scrolling
vim.keymap.set('n', '<C-e>', '<C-e>j', {noremap = true})
vim.keymap.set('n', '<C-y>', '<C-y>k', {noremap = true})

-- move inside normal mode
vim.keymap.set('i', '<C-j>', '<down>')
vim.keymap.set('i', '<C-k>', '<up>')
vim.keymap.set('i', '<C-h>', '<left>')
vim.keymap.set('i', '<C-l>', '<right>')

-- move to start/end of line in insert mode
vim.keymap.set('i', '<C-i>', '<Esc>I')
vim.keymap.set('i', '<C-a>', '<Esc>A')

-- tabs
vim.keymap.set('n', '<leader>t', ':tabnew<CR>') -- new tab
vim.keymap.set('n', '<leader><Tab>', 'gt') -- next tab
vim.keymap.set('n', '<leader><S-Tab>', 'gT') -- previous tab

-- terminal stuff
vim.keymap.set('n', '<leader><CR>', ':10sp | term<CR>:setl nonu nornu cc=<CR>i')
vim.keymap.set('t', '<Esc>', '<C-\\><C-n>')
vim.keymap.set('t', '<C-q>', '<C-\\><C-n>:bd!<CR>')
vim.keymap.set('t', '<C-w>', '<C-\\><C-n><C-w>')

-- telescope.nvim
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files)
vim.keymap.set('n', '<leader>fs', builtin.grep_string)
vim.keymap.set('n', '<leader>fg', builtin.live_grep)
vim.keymap.set('n', '<leader>ft', builtin.treesitter)
vim.keymap.set('n', '<leader>fh', builtin.help_tags)
vim.keymap.set('n', '<leader>fb', builtin.builtin)

-- nvim-tree
vim.keymap.set('n', '<leader>nt', ':NvimTreeToggle<CR>')

