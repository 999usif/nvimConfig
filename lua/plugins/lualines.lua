return {
    'nvim-lualine/lualine.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    config = function()
        require('lualine').setup({
            --options = { theme = 'dracula' },
            options = { theme = 'rose-pine' },

            sections = {
                lualine_x = {'lsp_status', 'encoding', 'filetype'},
                lualine_y = {'progress'},
                lualine_b = {'branch', 'diff', 'diagnostics'},
            }
         })
    end
}
