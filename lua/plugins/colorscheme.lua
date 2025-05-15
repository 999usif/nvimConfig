return {
  -- I have no idea what is going on!
  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    -- Erorr told me to use config insead of opt :3
    config = function()
      -- vim command to set the colorscheme
      -- vim.cmd([[colorscheme catppuccin]])
    end,
  },
  {
    "rose-pine/neovim",
    name = "rose-pine",
    --vim.cmd("colorscheme rose-pine-main")

    config = function()
      require("rose-pine").setup({
        variant = "dawn",

        -- https://rosepinetheme.com/palette/ingredients/
        palette = {
          dawn = {
            text = '#0b0b10',
            base = '#e9e5ee',
          }
        }
      })

      vim.cmd("colorscheme rose-pine")
    end,

  },
}
