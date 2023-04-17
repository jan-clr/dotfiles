local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

local plugins = {
  -- Core functionality
  'nvim-tree/nvim-tree.lua',
  'nvim-tree/nvim-web-devicons',
  'nvim-lualine/lualine.nvim',
  'nvim-treesitter/nvim-treesitter',
  {
    "folke/which-key.nvim",
    config = function()
      vim.o.timeout = true
      vim.o.timeoutlen = 300
      require("which-key").setup({
        -- your configuration comes here
        -- or leave it empty to use the default settings
        -- refer to the configuration section below
      })
    end,
  },
  -- Themes
  'ellisonleao/gruvbox.nvim',
  {
    'dracula/vim',
    lazy = false,
  },
  --'bluz71/vim-nightfly-colors',
  'navarasu/onedark.nvim',
  --
  'vim-test/vim-test',
  -- Git
  'lewis6991/gitsigns.nvim',
  'tpope/vim-fugitive',
  -- completion
  {
	"windwp/nvim-autopairs",
    config = function() require("nvim-autopairs").setup {} end
  },
  'hrsh7th/nvim-cmp',
  'hrsh7th/cmp-nvim-lsp',
  'L3MON4D3/LuaSnip',
  'saadparwaiz1/cmp_luasnip',
  "rafamadriz/friendly-snippets",
  "github/copilot.vim",
  "williamboman/mason.nvim",
  "neovim/nvim-lspconfig",
  "williamboman/mason-lspconfig.nvim",
  "glepnir/lspsaga.nvim",
  {
	  'nvim-telescope/telescope.nvim',
	  tag = '0.1.0',
	  dependencies = { {'nvim-lua/plenary.nvim'} }
  },
  {'akinsho/toggleterm.nvim', version = "*", config = true}
  -- LaTeX

}

local opts = {}

require("lazy").setup(plugins, opts)

vim.opt.rtp:prepend(lazypath)
