--Plugin
return require('packer').startup(function(use)
    use 'wbthomason/packer.nvim'              --Packet Manager
    use 'folke/tokyonight.nvim'               --Colorscheme
    use 'olimorris/onedarkpro.nvim'           --Colorscheme
    use 'nvim-treesitter/nvim-treesitter'
    use({"glepnir/lspsaga.nvim",
        branch = "main",
        config = function()
            local saga = require("lspsaga")

            saga.init_lsp_saga({
                 -- your configuration
            })
        end,
    })
    use {'nvim-telescope/telescope.nvim', tag = '0.1.0',
        requires = { {'nvim-lua/plenary.nvim'} }
    }
    use 'lukas-reineke/indent-blankline.nvim'
    use 'justinmk/vim-sneak'
    use 'mbbill/undotree'
    use 'kyazdani42/nvim-web-devicons'
    use {'kyazdani42/nvim-tree.lua',
        requires = {'kyazdani42/nvim-web-devicons', -- optional, for file icon 
          }}
end)
