return {
	{
		"neovim/nvim-lspconfig",
	},
	{
		"hrsh7th/nvim-cmp",
		config = function()
			local cmp = require("cmp")

			require("luasnip.loaders.from_vscode").lazy_load()

			cmp.setup({
				snippet = {
					-- REQUIRED - you must specify a snippet engine
					expand = function(args)
						require("luasnip").lsp_expand(args.body) -- For `luasnip` users.
					end,
				},
				window = {
					completion = cmp.config.window.bordered(),
					documentation = cmp.config.window.bordered(),
				},
				mapping = cmp.mapping.preset.insert({
					["<C-u>"] = cmp.mapping.scroll_docs(-4),
					["<C-d>"] = cmp.mapping.scroll_docs(4),
					["<C-Space>"] = cmp.mapping.complete(),
					["<C-a>"] = cmp.mapping.abort(),
					["<CR>"] = cmp.mapping.confirm({ select = true }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
				}),
				sources = cmp.config.sources({
					{ name = "nvim_lsp" },
					{ name = "luasnip" }, -- For luasnip users.
				}, {
					{ name = "buffer" },
				}),
			})
		end,
	},

	{
		"hrsh7th/cmp-nvim-lsp",
		config = function()
			local capabilities = require("cmp_nvim_lsp").default_capabilities()

			--           local lspconfig = require("lspconfig")
			-- vim.lsp.config.lua_ls.setup({ capabilities = capabilities })
			vim.lsp.config("lua_ls", {
				settings = {
					["lua_ls"] = { capabilities = capabilities },
				},
			})

            vim.lsp.config("pyright", {
				settings = {
					["pyright"] = { capabilities = capabilities },
				},
			})

            vim.lsp.config("lua_ls", {
				settings = {
					["tl_ls"] = { capabilities = capabilities },
				},
			})

            vim.lsp.config("clangd", {
				settings = {
					["clangd"] = { capabilities = capabilities },
				},
			})



			--lspconfig.lua_ls.setup({ capabilities = capabilities })
			--lspconfig.pyright.setup({ capabilities = capabilities })
			--lspconfig.ts_ls.setup({ capabilities = capabilities })
			--lspconfig.clangd.setup({ capabilities = capabilities })

			vim.keymap.set("n", "<leader>h", vim.lsp.buf.hover, {})
			vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, {})
		end,
	},

	{
		"L3MON4D3/LuaSnip",
		dependencies = {
			"saadparwaiz1/cmp_luasnip",
			"rafamadriz/friendly-snippets",
		},
	},
}
