return {
	"nvim-neo-tree/neo-tree.nvim",
	branch = "v3.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"MunifTanjim/nui.nvim",
		"nvim-tree/nvim-web-devicons", -- optional, but recommended
	},

	config = function()
		require("neo-tree").setup({
			filesystem = {
				filtered_files = {
					visible = true,
				},
			},
		})

		vim.keymap.set("n", "<leader>e", ":Neotree toggle filesystem reveal left<CR>", {})
		vim.keymap.set("n", "<C-e>", ":Neotree filesystem reveal left<CR>", {})
	end,
}
