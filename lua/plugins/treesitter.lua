return {
  "nvim-treesitter/nvim-treesitter",
  build = ':TSUpdate',
  config = function()
    local config = require('nvim-treesitter.configs')
    config.setup({
      -- auto_install detected language instead of ensure_installed (Not recommended but whatever :3)
      auto_install = false,
      highlight = { enable = true, disable = {"tex"} },
      indent = { enable = true },
      ignore_install = { "markdown", "tex" },
    })
  end,
}
