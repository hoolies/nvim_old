-- Telescope
-- Set Local variables
local map = vim.keymap.set

-- Keyboard Bindgins
map('n', '<leader>f', ":lua require 'telescope.builtin'.find_files{}<CR>")                        -- find files
map('n', '<leader>g', ":lua require 'telescope.builtin'.live_grep{}<CR>")                         -- find word in files
map('n', '<leader>b', ":lua require 'telescope.builtin'.buffers{show_all_buffers = true}<CR>")    -- find buffers
map('n', '<leader>h', ":lua require 'telescope.builtin'.help_tags{}<CR>")                         -- find help tags
map('n', '<leader>o', ":lua require 'telescope.builtin'.oldfiles{}<CR>")                          -- find old files
map('n', '<leader>;', ":lua require 'telescope.builtin'.commands{}<CR>")                          -- find commands
map('n', '<leader>t', ":lua require 'telescope.builtin'.treesitter{}<CR>")                        -- find functions, variables
