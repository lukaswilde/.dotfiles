return {
    "nvimtools/none-ls.nvim",
    config = function()
        local null_ls = require("null-ls")

        null_ls.setup({
            sources = {
                null_ls.builtins.formatting.stylua,
                -- null_ls.builtins.diagnostics.eslint_d,
                -- null_ls.builtins.formatting.prettier,
                -- null_ls.builtins.formatting.ruff,
                null_ls.builtins.formatting.black,
                null_ls.builtins.formatting.shfmt,
            },
            timout = 2000,
        })

        vim.api.nvim_create_augroup("FormatAutogroup", { clear = true })

        vim.api.nvim_create_autocmd("BufWritePre", {
            group = "FormatAutogroup",
            pattern = "*",
            command = "lua vim.lsp.buf.format({async = true})",
        })

        vim.keymap.set("n", "<leader>ff", vim.lsp.buf.format, {})
    end,
}
