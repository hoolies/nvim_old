-- nvim-tree.lua settings
require("nvim-tree").setup({
  sort_by = "case_sensitive",
  view = {
    width = 25,
  },
  renderer = {
    group_empty = true,
  },
  filters = {
    dotfiles = false,
  },
})


-- NvimTree keymaps
vim.keymap.set('n', '<leader>n', ':NvimTreeToggle<CR>')         -- Toggle NvimTree
