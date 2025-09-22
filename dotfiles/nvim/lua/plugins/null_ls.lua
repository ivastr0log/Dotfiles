return {
    "nvimtools/none-ls.nvim",
    dependencies = {
        "nvimtools/none-ls-extras.nvim",
    },

    config = function()
        local null_ls = require("null-ls")

        null_ls.setup({
            sources = {
                null_ls.builtins.formatting.stylua,
                require("none-ls.formatting.ruff"),
                require("none-ls.diagnostics.ruff"),
            },
        })

        vim.keymap.set("n", "<leader>f", vim.lsp.buf.format, {})
    end,
}
