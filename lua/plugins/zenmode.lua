 -- adding docstrings
return {
    {
        "folke/zen-mode.nvim",
        config = function()
            vim.keymap.set("n", "<leader>z", "<cmd>ZenMode<CR>")
        end,
        enable = vim.g.vscode == nil
    }
}
