
-- this does not work
return {
  config = function()
    -- Insert mode mapping: Ctrl+E moves to the end of the line
    vim.api.nvim_set_keymap('i', '<C-e>', '<Esc>A', { noremap = true, silent = true })

    -- Normal mode: Map `¤` to `$`
    vim.api.nvim_set_keymap('n', '¤', '$', { noremap = true, silent = true })

    -- Visual mode: Map `¤` to `$`
    vim.api.nvim_set_keymap('x', '¤', '$', { noremap = true, silent = true })

    -- Operator-pending mode: Map `¤` to `$`
    vim.api.nvim_set_keymap('o', '¤', '$', { noremap = true, silent = true })

    -- Mapping to add newline and go back to normal mode
    vim.keymap.set('n', '<leader>o', 'o<Esc>k', { noremap = true, silent = true })

    -- Mapping to add newline and go back to normal mode
    vim.api.nvim_set_keymap('n', '<leader>O', 'O<Esc>j', { noremap = true, silent = true })
  end,
}
