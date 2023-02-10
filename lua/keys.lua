-----------------
-- keybindings --
-----------------

vim.g.mapleader = ' ' -- leader: <space>

-- check health
vim.keymap.set('n', '<leader>ch', ':checkhealth<CR>')

-- save/quit/source
vim.keymap.set('n', '<leader>w', ':w<CR>')
vim.keymap.set('n', '<leader>q', ':q<CR>')
vim.keymap.set('n', '<leader><S-q>', ':q!<CR>')
vim.keymap.set('n', '<leader>so', ':so %<CR>')

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
vim.keymap.set('n', '<C-e>', '<C-e>j')
vim.keymap.set('n', '<C-y>', '<C-y>k')

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
vim.keymap.set('n', '<Tab>', 'gt') -- next tab
vim.keymap.set('n', '<S-Tab>', 'gT') -- previous tab

-- buffers
vim.keymap.set('n', '<C-j>', ':bn<CR>')
vim.keymap.set('n', '<C-k>', ':bp<CR>')
vim.keymap.set('n', '<leader>b', ':bd<CR>')
vim.keymap.set('n', '<leader><S-b>', ':bd!<CR>')

-- terminal stuff
vim.keymap.set('n', '<leader><CR>', ':10sp | term<CR>:setl nonu nornu cc=<CR>i')
vim.keymap.set('t', '<Esc>', '<C-\\><C-n>')
vim.keymap.set('t', '<C-w>', '<C-\\><C-n><C-w>')
vim.keymap.set('t', '<C-o>', '<C-\\><C-o>')

-- telescope.nvim
local builtin = require('telescope.builtin')
local extensions = require('telescope').extensions
vim.keymap.set('n', '<leader>ff', builtin.find_files)
vim.keymap.set('n', '<leader>fs', builtin.grep_string)
vim.keymap.set('n', '<leader>fg', builtin.live_grep)
vim.keymap.set('n', '<leader>ft', builtin.treesitter)
vim.keymap.set('n', '<leader>fh', builtin.help_tags)
vim.keymap.set('n', '<leader>fb', builtin.buffers)
vim.keymap.set('n', '<leader>fa', builtin.builtin)
vim.keymap.set('n', '<leader>fr', builtin.resume)
vim.keymap.set('n', '<leader>fn', extensions.notify.notify)

-- nvim-tree
vim.keymap.set('n', '<leader>nt', ':NvimTreeToggle<CR>')

