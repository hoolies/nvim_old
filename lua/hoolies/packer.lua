--Plugin
vim.cmd.packadd('packer.nvim')
return require('packer').startup(function(use)
    use 'wbthomason/packer.nvim'                --Packet Manager


    use {
      'folke/tokyonight.nvim',                  --Colorscheme
      as = 'tokyonight',
      config = function()
        vim.cmd('colorscheme tokyonight')
      end
    }

    use 'nvim-treesitter/nvim-treesitter'       --Syntax Highlighting
    use 'github/copilot.vim'                    --Github Copilot
    use 'neovim/nvim-lspconfig'                 --LSP
    use 'nvim-lua/completion-nvim'              --Autocompletion
    use 'sheerun/vim-polyglot'                  --Syntax Highlighting

    use {'nvim-lualine/lualine.nvim',
      requires = {'nvim-tree/nvim-web-devicons', opt = true} }

    use {
        'folke/trouble.nvim',
        config = function()
            require('trouble').setup {}
        end
    }

    use {'nvim-telescope/telescope.nvim', tag = '0.1.0',
        requires = { {'nvim-lua/plenary.nvim'} }
    }

    use {
	  'VonHeikemen/lsp-zero.nvim',
	  branch = 'v1.x',
	  requires = {
		  --LSP Support
		  {'neovim/nvim-lspconfig'},
		  {'williamboman/mason.nvim'},
		  {'williamboman/mason-lspconfig.nvim'},

		  --Autocompletion
		  {'hrsh7th/nvim-cmp'},
		  {'hrsh7th/cmp-buffer'},
		  {'hrsh7th/cmp-path'},
		  {'saadparwaiz1/cmp_luasnip'},
		  {'hrsh7th/cmp-nvim-lsp'},
		  {'hrsh7th/cmp-nvim-lua'},

		  --Snippets
		  {'L3MON4D3/LuaSnip'},
		  {'rafamadriz/friendly-snippets'},
	  }
    }

    use 'folke/zen-mode.nvim'
    use 'lukas-reineke/indent-blankline.nvim'
    use 'justinmk/vim-sneak'
    use 'theprimeagen/harpoon'
    use 'mbbill/undotree'
    use 'laytan/cloak.nvim'
    use 'eandrju/cellular-automaton.nvim'

    use {
      'nvim-tree/nvim-web-devicons',
      config = function()
        require'nvim-web-devicons'.setup {
          default = true;
        }
      end
    }

    use {
      'nvim-tree/nvim-tree.lua',
        requires = {'nvim-tree/nvim-web-devicons'}
    }
end)
