-----------------
-- keybindings --
-----------------

vim.g.mapleader = ' ' -- leader: <space>

-- check health
vim.keymap.set('n', '<leader>ch', ':checkhealth<CR>', {})

-- save/quit/source
vim.keymap.set('n', '<leader>w', ':w<CR>', {})
vim.keymap.set('n', '<leader>q', ':q<CR>', {})
vim.keymap.set('n', '<leader>so', ':so %<CR>', {})

-- automatically complete quotes/brackets
vim.keymap.set('i', '"', '""<left>', {noremap = true}) -- "..."
vim.keymap.set('i', "'", "''<left>", {noremap = true}) -- '...'
vim.keymap.set('i', '(', '()<left>', {noremap = true}) -- (...)
vim.keymap.set('i', '{', '{}<left>', {noremap = true}) -- {...}
vim.keymap.set('i', '[', '[]<left>', {noremap = true}) -- [...]

-- visual mode
vim.keymap.set('n', '<leader>vb', '<C-v>', {noremap = true})
vim.keymap.set('v', 'J', ":m '>+1<CR>gv=gv", {noremap = true})
vim.keymap.set('v', 'K', ":m '<-2<CR>gv=gv", {noremap = true})

-- replace every instance of word under cursor
vim.keymap.set('n', '<leader>cw', [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- copy to system clipboard
vim.keymap.set('n', '<leader>y', '"+y', {noremap = true})
vim.keymap.set('v', '<leader>y', '"+y', {noremap = true})
vim.keymap.set('n', '<leader>Y', '"+Y', {noremap = true})

-- move cursor while scrolling
vim.keymap.set('n', '<C-e>', '<C-e>j', {noremap = true})
vim.keymap.set('n', '<C-y>', '<C-y>k', {noremap = true})

-- keep cursor centered while jumping half a page
vim.keymap.set('n', '<C-d>', '<C-d>zz', {noremap = true})
vim.keymap.set('n', '<C-u>', '<C-u>zz', {noremap = true})

-- move inside normal mode
vim.keymap.set('i', '<C-j>', '<down>', {noremap = true})
vim.keymap.set('i', '<C-k>', '<up>', {noremap = true})
vim.keymap.set('i', '<C-h>', '<left>', {noremap = true})
vim.keymap.set('i', '<C-l>', '<right>', {noremap = true})

-- move to start/end of line in insert mode
vim.keymap.set('i', '<C-i>', '<Esc>I', {noremap = true})
vim.keymap.set('i', '<C-a>', '<Esc>A', {noremap = true})

-- tabs
vim.keymap.set('n', '<leader>t', ':tabnew<CR>', {noremap = true}) -- new tab
vim.keymap.set('n', '<leader><Tab>', 'gt', {noremap = true}) -- next tab
vim.keymap.set('n', '<leader><S-Tab>', 'gT', {noremap = true}) -- previous tab

-- terminal stuff
vim.keymap.set('n', '<leader><CR>', ':10sp | set nonu nornu | term<CR>:setl cc=<CR>i', {})
vim.keymap.set('t', '<Esc>', '<C-\\><C-n>', {noremap = true})
vim.keymap.set('t', '<C-q>', '<C-\\><C-n>:q<CR>', {})

-- telescope.nvim
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fs', builtin.grep_string, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>ft', builtin.treesitter, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})
vim.keymap.set('n', '<leader>fb', builtin.builtin, {})

-- nvim-tree
vim.keymap.set('n', '<leader>nt', ':NvimTreeToggle<CR>', {})

