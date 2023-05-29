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

-- Move around with Shift + {h,j,k,l}
map('', 'K', '<nop>')     -- empty the K entry from the plugins
map('n', 'H', '^')        -- move to the first non-blank character of the line
map('n', 'J', '}')        -- paragraph down
map('n', 'K', '{')        -- paragraph up
map('n', 'L', '$')        -- move to the end of the line

-- Move around splits using Ctrl + {h,j,k,l}
map('n', '<C-h>', '<C-w>h')
map('n', '<C-j>', '<C-w>j')
map('n', '<C-k>', '<C-w>k')
map('n', '<C-l>', '<C-w>l')

-- Map Esc
map('i', 'fj', '<Esc>')
map('i', 'jf', '<Esc>')
map('i', 'jk', '<Esc>')
map('i', 'jj', '<Esc>')

-- Moving between buffers
map('n', '<bs>', ':bp<CR>', {silent = true, noremap = true})    -- go to previous buffer')
map('n', '<S-bs>', ':bn<CR>', {silent = true, noremap = true})  -- go to next buffer')

-- Clear search highlighting with <leader> and c
map('n', '<leader><Esc>', ':nohl<CR>')

-- Toggle auto-indenting for code paste
map('n', '<F2>', ':set invpaste paste?<CR>')
vim.opt.pastetoggle = '<F2>'

-- Change split orientation
map('n', '<leader>tk', '<C-w>t<C-w>K')  -- change vertical to horizontal
map('n', '<leader>th', '<C-w>t<C-w>H')  -- change horizontal to vertical

-- Reload configuration without restart nvim
map('n', '<leader>r', ':so %<CR>')

-- Fast saving with <leader> and s
map('n', '<leader>s', ':w<CR>')

-- Close current window or tab with <leader> and w
map('n', '<leader>w', ':close<CR>')

-- Close all windows save and exit
map('n', '<leader>x', ':xa!<CR>')

-- Command mode
map('n', ';' , ':')

-- Terminal mappings
map('n', '<C-t>', ':terminal<CR>')      -- open
map('t', '<Esc>', '<C-d>')              -- exit


