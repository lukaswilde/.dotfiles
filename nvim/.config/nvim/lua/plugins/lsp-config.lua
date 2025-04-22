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

            local lspconfig = require("lspconfig")
            -- lspconfig.lua_ls.setup({ capabilities = capabilities })
            -- lspconfig.ruff.setup({ capabilities = capabilities })
            -- lspconfig.html.setup({ capabilities = capabilities })
            -- lspconfig.ts_ls.setup({ capabilities = capabilities })
            -- lspconfig.rust_analyzer.setup({ capabilities = capabilities })
            -- lspconfig.bashls.setup({ capabilities = capabilities })
            vim.lsp.enable("lua_ls")
            vim.lsp.enable("ruff")
            vim.lsp.enable("html")
            vim.lsp.enable("ts_ls")
            vim.lsp.enable("rust_analyzer")
            vim.lsp.enable("bashls")

            vim.lsp.config("*", {
                capabilities = capabilities
            })

            vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
            vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
            vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, {})
            vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, {})
        end,
    },
}
