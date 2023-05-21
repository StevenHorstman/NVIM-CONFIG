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

-- Install your plugins here
require("lazy").setup({
	"nvim-lua/plenary.nvim",
	"ThePrimeagen/harpoon",
	"mattn/emmet-vim",
	"kylechui/nvim-surround",
	"johan-palacios/onedarker",
	"Mofiqul/vscode.nvim",
	"drewtempelmeyer/palenight.vim",
	"phanviet/vim-monokai-pro",
	"navarasu/onedark.nvim",
  -- Terminal plugin 
	"numToStr/FTerm.nvim",
	"jose-elias-alvarez/null-ls.nvim",
  -- My plugins here
  "morhetz/gruvbox",
  "wbthomason/packer.nvim", -- Have packer manage itself
  "nvim-lua/popup.nvim", -- An implementation of the Popup API from vim in Neovim
  "nvim-lua/plenary.nvim", -- Useful lua functions used ny lots of plugins
  'nvim-lualine/lualine.nvim',
  'neovim/nvim-lspconfig',
  'catppuccin/nvim',
  "mrjones2014/nvim-ts-rainbow",
  "sainnhe/sonokai",
  -- cmp plugins
  --LSP Zero

	
	{
  'VonHeikemen/lsp-zero.nvim',
  branch = 'v2.x',
  dependencies = {
    -- LSP Support
    {'neovim/nvim-lspconfig'},             -- Required
    {                                      -- Optional
      'williamboman/mason.nvim',
      build = function()
        pcall(vim.cmd, 'MasonUpdate')
      end,
    },
    {'williamboman/mason-lspconfig.nvim'}, -- Optional

    -- Autocompletion
    {'hrsh7th/nvim-cmp'},     -- Required
    {'hrsh7th/cmp-nvim-lsp'}, -- Required
    {'L3MON4D3/LuaSnip'},     -- Required
  }
},
	"L3MON4D3/LuaSnip", --snippet engine
	"rafamadriz/friendly-snippets", -- a bunch of snippets to use
	-- Automatically set up your configuration after cloning packer.nvim
	-- Put this at the end after all plugins
	-- LSP
	"windwp/nvim-autopairs",
	{
		'nvim-treesitter/nvim-treesitter',
		build = function() require('nvim-treesitter.install').update({ with_sync = true }) end,
	},
	{
		'nvim-tree/nvim-tree.lua',
		dependencies = {
			'nvim-tree/nvim-web-devicons', -- optional, for file icons
		},
		tag = 'nightly' -- optional, updated every week. (see issue #1193)
	},

	-- Bebugger
	'mfussenegger/nvim-dap',
	'leoluz/nvim-dap-go',
	'rcarriga/nvim-dap-ui',

	"tpope/vim-fugitive",
	'feline-nvim/feline.nvim',
	"projekt0n/github-nvim-theme",
	"WhoIsSethDaniel/toggle-lsp-diagnostics.nvim",     -- map to {} to remove a mapping, for example:
	'folke/tokyonight.nvim',
	"doums/darcula",
	'norcalli/nvim-colorizer.lua',
	 {
	  'nvim-telescope/telescope.nvim', tag = '0.1.1',
	-- or                            , branch = '0.1.x',
	  dependencies = { {'nvim-lua/plenary.nvim'} }
	}
})


