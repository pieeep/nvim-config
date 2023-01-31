--------------
-- init.lua --
--------------

require('plugins')
require('keys')
require('options')

-- neovide
if vim.g.neovide then
  require('neovide')
end

