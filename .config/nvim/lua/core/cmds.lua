local cmd = vim.api.nvim_create_user_command

cmd('IntelephenseEnterLicense', 'e $HOME/intelephense/license.txt', {})
cmd('TexSnippets', 'e $HOME/repos/dotfiles/.config/nvim/lua/snippets/tex.lua', {desc = 'Open Tex-specific Snippet Configuration'})
