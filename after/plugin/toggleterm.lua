if vim.g.vscode == nil then
    vim.keymap.set("n", "<leader>tf", "<cmd>ToggleTerm direction=float<cr>")
    vim.keymap.set("n", "<leader>th", "<cmd>ToggleTerm size=10 direction=horizontal<cr>")
    vim.keymap.set("n", "<leader>tv", "<cmd>ToggleTerm size=80 direction=vertical<cr>")
    vim.keymap.set("n", "<C-t>", "<cmd>ToggleTerm<cr>")
    vim.keymap.set("t", "<C-t>", "<cmd>ToggleTerm<cr>")
    vim.keymap.set("n", "<F7>", "<cmd>ToggleTerm<cr>")
    vim.keymap.set("t", "<F7>", "<cmd>ToggleTerm<cr>")

    local opts = { buffer = 0 }
    vim.keymap.set('t', '<esc>', [[<C-\><C-n>]], opts)
    vim.keymap.set('t', '<C-h>', [[<Cmd>wincmd h<CR>]], opts)
    vim.keymap.set('t', '<C-j>', [[<Cmd>wincmd j<CR>]], opts)
    vim.keymap.set('t', '<C-k>', [[<Cmd>wincmd k<CR>]], opts)
    vim.keymap.set('t', '<C-l>', [[<Cmd>wincmd l<CR>]], opts)
    vim.keymap.set('t', '<C-w>', [[<C-\><C-n><C-w>]], opts)
end
