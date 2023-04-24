local cmd = vim.cmd
local api = vim.api

api.nvim_create_autocmd(
    "BufEnter",
    {
        pattern = {"*.pdf"},
        command = [[silent! execute "!zathura '%'" | bdelete %]]
    }
)

-- Remove alacritty padding on startup

-- This is your alacritty.yml
-- 01 | # Window Customization 
-- 02 | window: 
-- 03 |   dimensions: 
-- 04 |     columns: 100 
-- 05 |     lines: 25 
-- 06 |   padding: 
-- 07 |     x: 20 
-- 08 |     y: 20 
-- 09 |   # decorations: none 
-- 10 |   dynamic_title: true 
-- 12 |   startup_mode: Windowed # Maximized Fullscreen 
-- 13 | background_opacity: 0.92

function Sad(line_nr, from, to, fname)
  vim.cmd(string.format("silent !sed -i '%ss/%s/%s/' %s", line_nr, from, to, fname))
end

function IncreasePadding()
  Sad('50', 0, 20, '~/.config/alacritty/alacritty.yml')
  Sad('51', 0, 10, '~/.config/alacritty/alacritty.yml')
end

function DecreasePadding()
  Sad('50', 20, 0, '~/.config/alacritty/alacritty.yml')
  Sad('51', 10, 0, '~/.config/alacritty/alacritty.yml')
end

--vim.cmd[[
--  augroup ChangeAlacrittyPadding
--   au! 
--   au VimEnter * lua DecreasePadding()
--   au VimLeavePre * lua IncreasePadding()
--  augroup END 
--]]
