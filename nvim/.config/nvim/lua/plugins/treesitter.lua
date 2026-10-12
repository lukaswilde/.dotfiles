return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
        require("nvim-treesitter").setup({
            ensure_installed = { "lua", "vim", "vimdoc", "query", "markdown", "markdown_inline" },
            auto_install = true,
            indent = { enable = true },
        })
        -- local config = require("nvim-treesitter.configs")
        -- config.setup({
        --     auto_install = true,
        --     highlight = { enable = true, disable = { "latex" } },
        --     indent = { enable = true },
        -- })
    end,
}
