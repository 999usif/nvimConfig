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


