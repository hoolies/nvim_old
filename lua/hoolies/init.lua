-- Imports
require('hoolies.set')					-- load settings
require('hoolies.map')					-- load keyboard mappings
require('hoolies.packer')				-- load plugins
require('hoolies.lsp')					-- load lsp
require('hoolies.colors')				-- load colorscheme

-- Local Variables
local augroup = vim.api.nvim_create_augroup	            -- Set augroup as vim.api.nvim_create_augroup
local autocmd = vim.api.nvim_create_autocmd             -- Set autocmd as vim.api.nvim_create_autocm
local hoolies_group = augroup('hoolies', {})            -- Set hoolies_group
local yank_group = augroup('yank', {})                  -- Set yank_group


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
