function ColorMyPencils(color)
	color = color or "tokyonight"
	vim.cmd.colorscheme(color)

	-- vim.api.nvim_set_hl(0, "Normal", { bg = "bg" })
	-- vim.api.nvim_set_hl(0, "NormalNC", { bg = "none" })
	-- vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
	--
 --    vim.cmd.highlight('SignColumn guibg=NONE')
 --    vim.cmd.highlight('NvimTreeNormal guibg=NONE ctermbg=NONE')
end

require('tokyonight').setup({
    dim_inactive = true,
})

require('rose-pine').setup({
    variant = 'dawn',
    dim_nc_background = true,

})

ColorMyPencils()
