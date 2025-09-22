return {
--	{
--		"catppuccin/nvim",
--		name = "catppuccin",
--        priority = 1000,
--		config = function()
--            require("catppuccin").load("mocha")
--			vim.cmd.colorscheme "catppuccin"
--
--		end,
--	},
	{

	"rebelot/kanagawa.nvim",

	config = function()
			require("kanagawa").load("wave")
					vim.cmd.colorscheme "kanagawa-wave"
	end,
	},
}
