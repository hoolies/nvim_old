-- Lualine
require('lualine').setup {
  options = {
    icons_enabled = true,
    theme = 'tokyonight',
    component_separators = { left = '', right = ''},
    section_separators = { left = '', right = ''},
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
      {
        'mode',
        icons_enabled = true,
      },
    },
    lualine_b ={'branch','diff'},
    lualine_c = {
      {
        'datetime',
        style = 'default',
      }
    },
    lualine_x = {
      {
        'buffers',
        show_filename_only = true,
        show_modified_status = true,
        mode = 4j
        max_length = vim.o.columns * 0.3,
      }
    },
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
  extensions = {
  'fzf',
  'nvim-tree',
  }
}
