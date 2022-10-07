--  Basic Configuaration

local set = vim.opt		                                -- Set local variable

-- Search
set.hlsearch = true                                     -- Highlight search
set.incsearch = true                                    -- Set incremental


-- Buffer
set.hidden = true                                       -- Enable background buffers
--set.autoread= true                                    -- Automatically update file


-- Number column
set.number = true	        	                        -- Set the number
set.relativenumber = true	                            -- Set relative numbers
set.numberwidth = 4                                     -- Width of the number on the left
vim.wo.colorcolumn = '0'


-- Tabs
set.tabstop = 4     			                        -- Tab space
set.shiftwidth = 4                                      -- Round Indent
set.softtabstop = 4 
set.expandtab = true                                    -- Use Spaces instead of tabs


-- Line wraps
set.wrapscan = true
vim.wo.wrap =true                                       -- Wrap the line
vim.wo.linebreak = true
vim.wo.list = false


-- Behavior
set.autoindent = true                                   -- Auto indent lines
set.scrolloff = 5
set.showmatch = true


-- Columns
set.cursorcolumn = true
set.cursorline = true


-- undo
set.undofile = true
set.undolevels = 1000
set.undoreload = 1000
set.undodir = 'undodir'


-- Various
set.spell = true
set.visualbell = true
set.fileencoding = 'utf-8'
set.termguicolors = true
set.showmode = true
set.showtabline = 4 


