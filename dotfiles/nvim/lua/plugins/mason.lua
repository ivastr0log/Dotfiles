return {
    {
        "mason-org/mason.nvim",
        config = function()
            require("mason").setup()
        end
    },

    {
        "mason-org/mason-lspconfig.nvim",
        opts = {},
        dependencies = {
            { "mason-org/mason.nvim", opts = {} },
            "neovim/nvim-lspconfig",
        },

        config = function()
            require("mason-lspconfig").setup({

                ensure_installed = { "clangd", "lua_ls", "pyright", "harper_ls", "ts_ls" },
                automatic_enable = true,

            })
        end
    },
}
