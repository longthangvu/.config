function DoTheColors(color)
	color = color or "vn-night"
	vim.cmd.colorscheme(color)

	vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
	vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
	vim.api.nvim_set_hl(0, "EndOfBuffer", { bg = "none" })
	vim.api.nvim_set_hl(0, "LineNrAbove", { bg = "none", fg = "Gray" })
	vim.api.nvim_set_hl(0, "LineNr", { bg = "none", fg = "LightGray" })
	vim.api.nvim_set_hl(0, "LineNrBelow", { bg = "none", fg = "Gray" })
end

DoTheColors()
