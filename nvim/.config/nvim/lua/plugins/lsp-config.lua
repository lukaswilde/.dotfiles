return {
    {
        "williamboman/mason.nvim",
        config = function()
            require("mason").setup()
        end,
    },
    {
        "williamboman/mason-lspconfig.nvim",
        config = function()
            require("mason-lspconfig").setup({
                ensure_installed = { "lua_ls", "ruff", "ts_ls", "rust_analyzer", "html", "pyright", "pylsp", "bashls" },
            })
        end,
    },
    {
        "neovim/nvim-lspconfig",
        config = function()
            local capabilities = require("cmp_nvim_lsp").default_capabilities()

            vim.lsp.enable("lua_ls")
            vim.lsp.enable("ruff")
            vim.lsp.enable("html")
            vim.lsp.enable("ts_ls")
            vim.lsp.enable("rust_analyzer")
            vim.lsp.enable("bashls")

            vim.lsp.config("*", {
                capabilities = capabilities,
            })

            vim.keymap.set("n", "K", vim.lsp.buf.hover, { desc = "Show hover information" })
            vim.keymap.set("n", "gd", vim.lsp.buf.definition, { desc = "Go to definition" })
            vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, { desc = "Code actions" })
            vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, { desc = "Rename object" })
        end,
    },
}
