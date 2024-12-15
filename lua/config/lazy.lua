-- Bootstrap lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = "https://github.com/folke/lazy.nvim.git"
  local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
  if vim.v.shell_error ~= 0 then
    vim.api.nvim_echo({
      { "Failed to clone lazy.nvim:\n", "ErrorMsg" },
      { out, "WarningMsg" },
      { "\nPress any key to exit..." },
    }, true, {})
    vim.fn.getchar()
    os.exit(1)
  end
end
vim.opt.rtp:prepend(lazypath)

-- Make sure to setup `mapleader` and `maplocalleader` before
-- loading lazy.nvim so that mappings are correct.
-- This is also a good place to setup other settings (vim.opt)
vim.g.mapleader = "ø"
vim.g.maplocalleader = "\\"

-- Set tab = 4 spaces
vim.cmd("set expandtab")
vim.cmd("set tabstop=4")
vim.cmd("set softtabstop=4")
vim.cmd("set shiftwidth=4")

-- Insert mode mapping: Ctrl+E moves to the end of the line
vim.api.nvim_set_keymap('i', '<C-e>', '<Esc>A', { noremap = true, silent = true })


-- Normal mode: Map `¤` to `$`
vim.api.nvim_set_keymap('n', '¤', '$', { noremap = true, silent = true })

-- Visual mode: Map `¤` to `$`
vim.api.nvim_set_keymap('x', '¤', '$', { noremap = true, silent = true })

-- Operator-pending mode: Map `¤` to `$`
vim.api.nvim_set_keymap('o', '¤', '$', { noremap = true, silent = true })




-- Setup lazy.nvim
require("lazy").setup({
  spec = {
    -- import your plugins
    { import = "plugins" },
  },
  -- Configure any other settings here. See the documentation for more details.
  -- colorscheme that will be used when installing plugins.
  install = { colorscheme = { "habamax" } },
  -- automatically check for plugin updates
  checker = { enabled = true },
})
