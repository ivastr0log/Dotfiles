return {
    "nvim-treesitter/nvim-treesitter",

    config = function()
        local config = require("nvim-treesitter.configs")
        config.setup({
            ensure_installed = {"c", "cpp", "python", "lua", "javascript", "vim", "html"},
            auto_install = true,
            highlight = { enable = true },
            indent = { enable = true },
        })
    end
}
