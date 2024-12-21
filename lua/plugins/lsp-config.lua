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
            -- The nvim-cmp almost supports LSP's capabilities so You should advertise it to LSP servers..

            -- cmp_nvim_lsp allows using what the LSP is giving use as a text_complete to pop-up in the snippets window. good in case luasnip has no snippet for a certain thing
            local capabilities = require('cmp_nvim_lsp').default_capabilities()

            local lspconfig = require("lspconfig")
            lspconfig.lua_ls.setup({
                capabilities = capabilities
            })
            lspconfig.ts_ls.setup({
                capabilities = capabilities
            })

            vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
            vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})
            vim.keymap.set({'n','v'}, '<leader>ca', vim.lsp.buf.code_action, {})
        end
    }
}
