 -- adding docstrings
return {
    {
        "danymat/neogen",
        opts = {
            enabled = true,
            languages = {
                python = {
                    template = {
                        annotation_convention = "numpydoc" -- for a full list of annotation_conventions, see supported-languages below,
                        }
                },
            }
        },
        config = function()
            vim.api.nvim_set_keymap("n", "<Leader>gc", ":lua require('neogen').generate()<CR>", { noremap = true, silent = true })
        end,
        enable = vim.g.vscode == nil
    }
}
