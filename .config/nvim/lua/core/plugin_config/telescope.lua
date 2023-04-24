require('telescope').setup()
local builtin = require('telescope.builtin')

vim.keymap.set('n', '<c-p>', function() builtin.find_files({hidden=true}) end, {})
vim.keymap.set('n', '<Space><Space>', builtin.oldfiles, {})
vim.keymap.set('n', '<Space>fg', function() builtin.live_grep({hidden=true}) end, {})
vim.keymap.set('n', '<Space>fh', builtin.help_tags, {})
