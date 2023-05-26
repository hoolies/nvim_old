-----------------------------------------------------------
-- Define keymaps of Neovim and installed plugins.
-----------------------------------------------------------

local function map(mode, lhs, rhs, opts)
  local options = { noremap=true, silent=true }
  if opts then
    options = vim.tbl_extend('force', options, opts)
  end
  vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

-- Change leader to spacebar
map('', '<SPACE>', '<nop>')
vim.g.mapleader = ' '

-----------------------------------------------------------
-- Neovim shortcuts
-----------------------------------------------------------

-- Disable arrow keys
map('', '<up>', '<nop>')
map('', '<down>', '<nop>')
map('', '<left>', '<nop>')
map('', '<right>', '<nop>')

-- Map Esc to kk
map('i', 'fj', '<Esc>')
map('i', 'jf', '<Esc>')
map('i', 'jk', '<Esc>')
map('i', 'jj', '<Esc>')

-- Clear search highlighting with <leader> and c
map('n', '<leader>c', ':nohl<CR>')

-- Toggle auto-indenting for code paste
map('n', '<F2>', ':set invpaste paste?<CR>')
vim.opt.pastetoggle = '<F2>'

-- Change split orientation
map('n', '<leader>tk', '<C-w>t<C-w>K')  -- change vertical to horizontal
map('n', '<leader>th', '<C-w>t<C-w>H')  -- change horizontal to vertical

-- Move around splits using Ctrl + {h,j,k,l}
map('n', '<C-h>', '<C-w>h')
map('n', '<C-j>', '<C-w>j')
map('n', '<C-k>', '<C-w>k')
map('n', '<C-l>', '<C-w>l')

-- Reload configuration without restart nvim
map('n', '<leader>r', ':so %<CR>')

-- Fast saving with <leader> and s
map('n', '<leader>s', ':w<CR>')

-- Close all windows and exit from Neovim with <leader> and q
map('n', '<leader>q', ':qa!<CR>')

-- Close all windows save and exit
map('n', '<leader>x', ':xa!<CR>')

-- Command mode
map('n', ';' , ':')

-----------------------------------------------------------
-- Applications and Plugins shortcuts
-----------------------------------------------------------

-- Terminal mappings
map('n', '<C-t>', ':terminal<CR>')      -- open
map('t', '<Esc>', '<C-d>')              -- exit

-- NvimTree
map('n', '<C-n>', ':Ntree<CR>')         -- open

-- Telescope
map('n', '<leader>f', ":lua require 'telescope.builtin'.find_files{}<CR>")                        -- find files
map('n', '<leader>g', ":lua require 'telescope.builtin'.live_grep{}<CR>")                         -- find word in files
map('n', '<leader>b', ":lua require 'telescope.builtin'.buffers{show_all_buffers = true}<CR>")    -- find buffers
map('n', '<leader>h', ":lua require 'telescope.builtin'.help_tags{}<CR>")                         -- find help tags
map('n', '<leader>o', ":lua require 'telescope.builtin'.oldfiles{}<CR>")                          -- find old files
map('n', '<leader>;', ":lua require 'telescope.builtin'.commands{}<CR>")                          -- find commands
map('n', '<leader>t', ":lua require 'telescope.builtin'.treesitter{}<CR>")                         -- find functions, variables
