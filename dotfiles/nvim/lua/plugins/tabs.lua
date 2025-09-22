return {
	"romgrk/barbar.nvim",
	dependensies = {
		"lewis6991/gitsigns.nvim",
		"nvim-tree/nvim-web-devicons",
	},

	config = function()
		require("barbar").setup({
			tabpages=false
		})

		vim.keymap.set("n", "<C-n>", ":BufferNext<CR>")
		vim.keymap.set("n", "<C-p>", ":BufferPrevious<CR>")

		vim.keymap.set("n", "<C-q>", ":BufferClose<CR>")
	end,
}
