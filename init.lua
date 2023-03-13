--------------
-- init.lua --
--------------

require('plugins')
require('keys')
require('autopair')
require('surround')
require('term')
require('options')

-- neovide
if vim.g.neovide then
  require('neovide')
end

