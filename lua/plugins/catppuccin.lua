return {
    -- I have no idea what is going on!
    { 
        "catppuccin/nvim",
        name = "catppuccin",
        priority = 1000,
        -- Erorr told me to use config insead of opt :3
        config = function()
            -- vim command to set the colorscheme
            vim.cmd([[colorscheme catppuccin]])
        end,
    }

}
