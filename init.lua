--------------
-- init.lua --
--------------

require('plugins')
require('autopair')
require('surround')
require('keys')
require('options')

-- neovide
if vim.g.neovide then
  require('neovide')
end

