function ColorMe(color)
	color = color or "melange"
	vim.cmd.colorscheme(color)

	vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
	vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
end

return {
	-- "rebelot/kanagawa.nvim",
	"savq/melange-nvim",
	config = function()
		-- require("kanagawa").setup({})

		ColorMe()
	end,
}
