 --  Basic Configuaration

-- Local Variables
local set = vim.opt		                                -- Set set as vim.opt, cause lazy
local augroup = vim.api.nvim_create_augroup	            -- Set augroup as vim.api.nvim_create_augroup
local hoolies_group = augroup('hoolies', {})            -- Set hoolies_group
local autocmd = vim.api.nvim_create_autocmd
local yank_group = augroup('yank', {})


-- Functions
function R(name)
    require('plenary.reload').reload_module(name)
end

autocmd('TextYankPost', {
    group = yank_group,
    pattern = '*',
    callback = function()
        vim.highlight.on_yank({
                higroup = 'IncSearch',
                timeoute = 40,
            })
    end,
})

autocmd('BufWritePre', {
    group = hoolies_group,
    pattern = '*',
    command = [[%s/\s\+$//e]],                          -- Remove trailing whitespace
})



-- Settings
-- Search
set.hlsearch = true                                     -- Highlight search
set.incsearch = true                                    -- Set incremental


-- Buffer
set.hidden = true                                       -- Enable background buffers
set.autoread = true                                     -- Automatically update file


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
set.showtabline = 0


-- Lualine
require('lualine').setup {
  options = {
    icons_enabled = false,
    theme = 'tokyonight',
    component_separators = { left = '', right = ''},
    section_separators = { left = '', right = ''},
    disabled_filetypes = {
      statusline = {},
      winbar = {},
    },
    ignore_focus = {},
    always_divide_middle = true,
    globalstatus = false,
    refresh = {
      statusline = 1000,
      tabline = 1000,
      winbar = 1000,
    }
  },
  sections = {
    lualine_a = {
    'mode',
    icons_enabled = true,
    },
    lualine_b = {'branch', 'diff', 'diagnostics'},
    lualine_c = {'filename'},
    lualine_x = {'encoding', 'fileformat', 'filetype'},
    lualine_y = {'progress'},
    lualine_z = {'location'}
  },
  inactive_sections = {
    lualine_a = {},
    lualine_b = {},
    lualine_c = {'filename'},
    lualine_x = {'location'},
    lualine_y = {},
    lualine_z = {}
  },
  tabline = {},
  winbar = {},
  inactive_winbar = {},
  extensions = {}
}
