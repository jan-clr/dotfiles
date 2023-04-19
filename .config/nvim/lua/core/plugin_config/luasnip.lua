require("luasnip.loaders.from_vscode").lazy_load()

-- Set expansion keymaps
--vim.cmd[[
--" Use Tab to expand and jump through snippets
--imap <silent><expr> <Tab> luasnip#expand_or_jumpable() ? '<Plug>luasnip-expand-or-jump' : '<Tab>' 
--smap <silent><expr> <Tab> luasnip#jumpable(1) ? '<Plug>luasnip-jump-next' : '<Tab>'

--" Use Shift-Tab to jump backwards through snippets
--imap <silent><expr> <S-Tab> luasnip#jumpable(-1) ? '<Plug>luasnip-jump-prev' : '<S-Tab>'
--smap <silent><expr> <S-Tab> luasnip#jumpable(-1) ? '<Plug>luasnip-jump-prev' : '<S-Tab>'
--]]

require('luasnip').config.set_config({
    enable_autosnippets = true,
    store_selection_keys = "<Tab>",
})

-- set snippet directories
require('luasnip.loaders.from_lua').lazy_load({paths = {'~/.config/nvim/lua/snippets/'}})
vim.keymap.set('n', '<Leader>L', '<Cmd>lua require("luasnip.loaders.from_lua").load({paths = "~/.config/nvim/lua/snippets"})<CR>')
