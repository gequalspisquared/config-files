-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd.packadd('packer.nvim')

return require('packer').startup(function(use)
    -- Packer can manage itself
    use('wbthomason/packer.nvim')

    -- Icons
    use('nvim-tree/nvim-web-devicons')

    -- Trouble
    use({
        "folke/trouble.nvim",
        requires = "nvim-tree/nvim-web-devicons",
        config = function()
            require("trouble").setup {
                -- your configuration comes here
                -- or leave it empty to use the default settings
                -- refer to the configuration section below
            }
        end
    })

    -- LSP Colors
    use('folke/lsp-colors.nvim')

    -- Indent Blanklines
    use("lukas-reineke/indent-blankline.nvim")

    -- Telescope
    use({
        'nvim-telescope/telescope.nvim', branch = '0.1.x',
        -- or                            , branch = '0.1.x',
        requires = { {'nvim-lua/plenary.nvim'} }
    })

    -- Themes
    use('folke/tokyonight.nvim')
    use({ 'rose-pine/neovim', as = 'rose-pine' })
    use({"akinsho/horizon.nvim", tag = "*"})
    use("rebelot/kanagawa.nvim")
    use("EdenEast/nightfox.nvim")
    use('marko-cerovac/material.nvim')

    -- Treesitter
    use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
    use('nvim-treesitter/playground')
    use('nvim-treesitter/nvim-treesitter-context')

    -- Harpoon
    use('ThePrimeagen/harpoon')

    -- Undotree
    use('mbbill/undotree')

    -- Fugitive
    use('tpope/vim-fugitive')

    -- LSP Zero
    use({
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v2.x',
        requires = {
            -- LSP Support
            {'neovim/nvim-lspconfig'},             -- Required
            {'williamboman/mason.nvim'},           -- Optional
            {'williamboman/mason-lspconfig.nvim'}, -- Optional

            -- Autocompletion
            {'hrsh7th/nvim-cmp'},         -- Required
            {'hrsh7th/cmp-nvim-lsp'},     -- Required
            {'hrsh7th/cmp-buffer'},       -- Optional
            {'hrsh7th/cmp-path'},         -- Optional
            {'saadparwaiz1/cmp_luasnip'}, -- Optional
            {'hrsh7th/cmp-nvim-lua'},     -- Optional

            -- Snippets
            {'L3MON4D3/LuaSnip'},             -- Required
            {'rafamadriz/friendly-snippets'}, -- Required
        }
    })

    -- Toggleterm
    use({"akinsho/toggleterm.nvim", tag = '*', config = function()
        require("toggleterm").setup()
    end})

    -- Lualine
    use({
        'nvim-lualine/lualine.nvim',
        requires = { 'nvim-tree/nvim-web-devicons', opt = true }
    })

    -- Vim/ Tmux Navigator
    use('christoomey/vim-tmux-navigator')

    -- Comment
    use({
        'numToStr/Comment.nvim',
        config = function()
            require('Comment').setup()
        end
    })

    -- Nvim Tree
    use('nvim-tree/nvim-tree.lua')

    -- Autopairs
    use({
        "windwp/nvim-autopairs",
        config = function() require("nvim-autopairs").setup {} end
    })

    -- Bufferline
    use({'akinsho/bufferline.nvim', tag = "v3.*", requires = 'nvim-tree/nvim-web-devicons'})

    -- Autotag
    use('windwp/nvim-ts-autotag')

    -- Neorg
    use({
        "nvim-neorg/neorg",
        config = function()
            require('neorg').setup {
                load = {
                    ["core.defaults"] = {}, -- Loads default behaviour
                    ["core.concealer"] = {}, -- Adds pretty icons to your documents
                    ["core.dirman"] = { -- Manages Neorg workspaces
                    config = {
                        workspaces = {
                            notes = "~/notes",
                        },
                    },
                },
            },
        }
        end,
        run = ":Neorg sync-parsers",
        requires = "nvim-lua/plenary.nvim",
    })
end)
