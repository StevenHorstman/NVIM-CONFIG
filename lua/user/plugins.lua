local fn = vim.fn

-- Automatically install packer
local install_path = fn.stdpath "data" .. "/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
  PACKER_BOOTSTRAP = fn.system {
    "git",
    "clone",
    "--depth",
    "1",
    "https://github.com/wbthomason/packer.nvim",
    install_path,
  }
  print "Installing packer close and reopen Neovim..."
  vim.cmd [[packadd packer.nvim]]
end
-- Autocommand that reloads neovim whenever you save the plugins.lua file
vim.cmd [[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup end
]]

-- Use a protected call so we don't error out on first use
local status_ok, packer = pcall(require, "packer")
if not status_ok then
  return
end

-- Have packer use a popup window
packer.init {
  display = {
    open_fn = function()
      return require("packer.util").float { border = "rounded" }
    end,
  },
}

-- Install your plugins here
return packer.startup(function(use)
	use "nvim-lua/plenary.nvim"
	use "ThePrimeagen/harpoon"
	use "kylechui/nvim-surround"
	use "johan-palacios/onedarker"
	use "Mofiqul/vscode.nvim"
	use "drewtempelmeyer/palenight.vim"
	use "ayu-theme/ayu-vim"
	use "phanviet/vim-monokai-pro"
	use "navarasu/onedark.nvim"
  -- Terminal plugin 
	use "numToStr/FTerm.nvim"
  -- My plugins here
  use "morhetz/gruvbox"
  use "wbthomason/packer.nvim" -- Have packer manage itself
  use "nvim-lua/popup.nvim" -- An implementation of the Popup API from vim in Neovim
  use "nvim-lua/plenary.nvim" -- Useful lua functions used ny lots of plugins
  use 'nvim-lualine/lualine.nvim'
  use 'neovim/nvim-lspconfig'
  use 'catppuccin/nvim'
  use "mrjones2014/nvim-ts-rainbow"
  use "sainnhe/sonokai"
  -- cmp plugins
  --LSP Zero
  use {
  'VonHeikemen/lsp-zero.nvim',
  requires = {
    -- LSP Support
    {'neovim/nvim-lspconfig'},
    {'williamboman/mason.nvim'},
    {'williamboman/mason-lspconfig.nvim'},

    -- Autocompletion
    {'hrsh7th/nvim-cmp'},
    {'hrsh7th/cmp-buffer'},
    {'hrsh7th/cmp-path'},
    {'saadparwaiz1/cmp_luasnip'},
    {'hrsh7th/cmp-nvim-lsp'},
    {'hrsh7th/cmp-nvim-lua'},

	-- Snippets
	{'L3MON4D3/LuaSnip'},
	{'rafamadriz/friendly-snippets'},
	}
	}
-- snippets
	use "L3MON4D3/LuaSnip" --snippet engine
	use "rafamadriz/friendly-snippets" -- a bunch of snippets to use
	-- Automatically set up your configuration after cloning packer.nvim
	-- Put this at the end after all plugins
	-- LSP
	use "windwp/nvim-autopairs"
	use {
		'nvim-treesitter/nvim-treesitter',
		run = function() require('nvim-treesitter.install').update({ with_sync = true }) end,
	}
	use {
		'nvim-tree/nvim-tree.lua',
		requires = {
			'nvim-tree/nvim-web-devicons', -- optional, for file icons
		},
		tag = 'nightly' -- optional, updated every week. (see issue #1193)
	}

	-- Bebugger
	use 'mfussenegger/nvim-dap'
	use 'leoluz/nvim-dap-go'
	use 'rcarriga/nvim-dap-ui'

	use "tpope/vim-fugitive"
	use 'feline-nvim/feline.nvim'
	use "projekt0n/github-nvim-theme"
	use "/k4yt3x/ayu-vim-darker"
	use "WhoIsSethDaniel/toggle-lsp-diagnostics.nvim"     -- map to {} to remove a mapping, for example:
	use 'folke/tokyonight.nvim'
	use "doums/darcula"
	use "Djancyp/better-comments.nvim"
	use 'norcalli/nvim-colorizer.lua'
	use {
	  'nvim-telescope/telescope.nvim', tag = '0.1.1',
	-- or                            , branch = '0.1.x',
	  requires = { {'nvim-lua/plenary.nvim'} }
	}
	  if PACKER_BOOTSTRAP then
    require("packer").sync()
  end
end)
