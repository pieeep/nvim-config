---------------
-- nvim-tree --
---------------

-- disable netrw (strongly advised)
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

require('nvim-tree').setup({
  sync_root_with_cwd = true,
  view = {
    width = 25,
    preserve_window_proportions = true,
  },
  renderer = {
    add_trailing = true,
    highlight_git = true,
    highlight_opened_files = "name",
    root_folder_label = function(path)
      return '../' .. vim.fn.fnamemodify(path, ':t') .. '/'
    end,
    indent_markers = {
      enable = true,
      icons = { item = '├'},
    },
  },
})

