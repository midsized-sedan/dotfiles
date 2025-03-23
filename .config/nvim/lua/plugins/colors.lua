function ColorMe(color)
	color = color or "kanagawa"
	vim.cmd.colorscheme(color)

	vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
	vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
end

return {
	"rebelot/kanagawa.nvim",
	-- "savq/melange-nvim",
	-- "scottmckendry/cyberdream.nvim",
	config = function()
		-- require("kanagawa").setup({})

		ColorMe()
	end,
}
