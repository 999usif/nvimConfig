-- Linting and formatting in nvim with a clever implementation wrapping linting tools so they are interpreted as LSPs. Makes it easier to configure
-- use :Mason to install additional Formatters, Linters or DAP (Debug Adapter Protocol) and then add them in the sources lua table below

--For none-ls-extras:: Use require("none-ls.METHOD.TOOL") instead of null_ls.builtins.METHOD.TOOL to use these extras.
return {
    "nvimtools/none-ls.nvim",
    dependencies = {
        "nvimtools/none-ls-extras.nvim",
    },
    config = function()
        local null_ls = require("null-ls")
        null_ls.setup({
            sources = {
                -- builtins.diagnostics for diagnostics tools
                -- builtins.formatting for formatting tools
                -- Lua Formatter
                null_ls.builtins.formatting.stylua,

                -- JS Formatter
                null_ls.builtins.formatting.prettierd,
                -- JS linter
                -- (Depreceated): null_ls.builtins.diagnostics.eslint_d,
                require("none-ls.diagnostics.eslint_d"),
            },
        })
        vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, {})
    end,
}
