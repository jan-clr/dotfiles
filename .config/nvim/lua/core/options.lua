vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

vim.opt.backspace = '2'
vim.opt.showcmd = true
vim.opt.laststatus = 2
vim.opt.autowriteall = true
vim.opt.cursorline = true
vim.opt.autoread = true

-- use spaces for tabs and whatnot
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.shiftround = true
vim.opt.expandtab = true

vim.cmd [[ set noswapfile ]]

--Line numbers
vim.wo.number = true
vim.wo.relativenumber = true

vim.wo.breakindent = true
vim.wo.breakindentopt = 'sbr,shift:3'

vim.opt.showbreak = '⤷'

vim.opt.termguicolors = true

vim.opt.fillchars = {
    vert = ' ',
    eob = ' '
}

vim.opt.scrolloff = 10
