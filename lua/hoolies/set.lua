 --  Basic Configuaration

-- disable netrw at the very start of your init.lua
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

local set = vim.opt		                                -- Set set as vim.opt, cause lazy

--------------------------------------------------------------------------------
-- Settings
--------------------------------------------------------------------------------

-- Search
set.hlsearch = true                                     -- Highlight search
set.incsearch = true                                    -- Set incremental


-- Buffer
set.hidden = true                                       -- Enable background buffers
set.autoread = true                                     -- Automatically update file


-- Number column
set.number = true	        	                        -- Set the number
set.relativenumber = true	                            -- Set relative numbers
set.numberwidth = 5                                     -- Width of the number on the left
vim.wo.colorcolumn = '0'


-- Tabs
set.tabstop = 4     			                        -- Tab space
set.shiftwidth = 4                                      -- Round Indent
set.softtabstop = 4
set.expandtab = true                                    -- Use Spaces instead of tabs


-- Line wraps
set.wrapscan = true
vim.wo.wrap = true                                      -- Wrap the line
vim.wo.linebreak = true
vim.wo.list = false

-- Behavior
set.autoindent = true                                   -- Auto indent lines
set.scrolloff = 5
set.showmatch = true


-- Columns
set.cursorcolumn = true
set.cursorline = true


-- undo history settings
set.undofile = true
set.undolevels = 1000
set.undoreload = 1000
set.undodir = '/home/hoolies/.config/nvim/undodir'


-- Various
set.spell = true
set.visualbell = true
set.fileencoding = 'utf-8'
set.termguicolors = true
set.showmode = true
set.showtabline = 0

