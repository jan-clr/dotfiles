local cmd = vim.cmd
local api = vim.api

api.nvim_create_autocmd(
    "BufEnter",
    {
        pattern = {"*.pdf"},
        command = [[silent! execute "!zathura '%'" | bdelete %]]
    }
)
