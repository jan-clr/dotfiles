require("auto-session").setup {
    log_level = "error",
    auto_session_suppress_dirs = { "~/", "~/Projects", "~/Downloads", "/"},
}

require('session-lens').setup{--[[your custom config--]]}

vim.keymap.set('n', '<Space>fs', function() require('session-lens').search_session() end, { desc = 'Find Session' })
