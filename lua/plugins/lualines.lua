return {
    'nvim-lualine/lualine.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    config = function()
        require('lualine').setup({
            options = { theme = 'dracula' },

            sections = {
                lualine_x = {'encoding', 'filetype'},
                lualine_b = {'branch', 'diff', 'diagnostics'}, 
            }
         })
    end
}
