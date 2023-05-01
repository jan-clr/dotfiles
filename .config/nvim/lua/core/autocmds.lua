local cmd = vim.cmd
local api = vim.api

api.nvim_create_autocmd(
    "BufEnter",
    {
        pattern = {"*.pdf"},
        command = [[silent! execute "!echo \"(zathura '%') &\" | bash" | bdelete %]]
    }
)

vim.cmd[[
  augroup ChangeKittyPadding
   au! 
   au VimEnter * silent !kitty @ set-spacing padding=0
   au VimEnter * silent !kitty @ set-background-opacity 1.0
   au VimLeavePre * silent !kitty @ set-spacing padding=default
   au VimLeavePre * silent !kitty @ set-background-opacity 0.9
  augroup END 
]]
