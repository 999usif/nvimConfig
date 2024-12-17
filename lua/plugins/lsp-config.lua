return {
    {
        -- mason, manage and install LSP, Linters, FOrmatters (:Mason for uI)
        'williamboman/mason.nvim',
        config = function()
            require('mason').setup()
        end
    },
    {
        -- lspconfig, ensure_installed command to avoid using the mason UI
        'williamboman/mason-lspconfig.nvim',
        config = function()
            require('mason-lspconfig').setup({
                ensure_installed = {'lua_ls', 'ts_ls'}
            })
        end
    },
    {
        -- lspconfig to link NVIM to the LSP we installed (allow them to communicate)
        'neovim/nvim-lspconfig',
        config = function()
            local lspconfig = require("lspconfig")
            lspconfig.lua_ls.setup({})
            lspconfig.ts_ls.setup({})

            vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
            vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})
            vim.keymap.set({'n','v'}, '<leader>ca', vim.lsp.buf.code_action, {})
        end
    }
}
