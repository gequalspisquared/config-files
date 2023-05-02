function ColorMyPencils(color)
	color = color or "material"
	vim.cmd.colorscheme(color)

    -- vim.api.nvim_set_hl('CursorLine', { bg = '#1e1e1e', fg = '#ffffff', underline = true })

	-- vim.api.nvim_set_hl(0, "Normal", { bg = "bg" })
	-- vim.api.nvim_set_hl(0, "NormalNC", { bg = "none" })
	-- vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
	--
 --    vim.cmd.highlight('SignColumn guibg=NONE')
 --    vim.cmd.highlight('NvimTreeNormal guibg=NONE ctermbg=NONE')
end

require('tokyonight').setup({
    -- dim_inactive = true,
})

require('rose-pine').setup({
    variant = 'dawn',
    dim_nc_background = true,

})

require('material').setup({
    plugins = { -- Uncomment the plugins that you use to highlight them
        -- Available plugins:
        -- "dap",
        -- "dashboard",
        -- "gitsigns",
        -- "hop",
        "indent-blankline",
        -- "lspsaga",
        -- "mini",
        -- "neogit",
        -- "neorg",
        "nvim-cmp",
        -- "nvim-navic",
        "nvim-tree",
        "nvim-web-devicons",
        -- "sneak",
        "telescope",
        "trouble",
        -- "which-key",
    },

    contrast = {
        terminal = false, -- Enable contrast for the built-in terminal
        sidebars = true, -- Enable contrast for sidebar-like windows ( for example Nvim-Tree )
        floating_windows = false, -- Enable contrast for floating windows
        cursor_line = false, -- Enable darker background for the cursor line
        non_current_windows = true, -- Enable darker background for non-current windows
        filetypes = {}, -- Specify which filetypes get the contrasted (darker) background
    },

    styles = { -- Give comments style such as bold, italic, underline etc.
        -- bold, italic, underline, undercurl
        comments = { italic = true },
        strings = { bold = true },
        keywords = { bold = true },
        functions = { bold = true },
        variables = {},
        operators = {},
        types = {},
    },

    lualine_style = 'default'
})

ColorMyPencils()
