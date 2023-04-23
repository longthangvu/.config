-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
  use {
      'goolord/alpha-nvim',
      config = function ()
          require'alpha'.setup(require'alpha.themes.dashboard'.config)
      end
  }
  use {
      "folke/which-key.nvim",
      config = function()
          vim.o.timeout = true
          vim.o.timeoutlen = 300
      end
  }
  use {
	  'nvim-telescope/telescope.nvim', tag = '0.1.1',
	  -- or                            , branch = '0.1.x',
	  requires = { {'nvim-lua/plenary.nvim'} }
  }
  use ({
	  'nxvu699134/vn-night.nvim',
	  as = 'vn-night',
	  config = function()
		  vim.cmd('colorscheme vn-night')
	  end
  })
  use('nvim-treesitter/nvim-treesitter', { run = ':TSUpdate'})
  use 'lervag/vimtex'
  use {
	  'nvim-tree/nvim-tree.lua',
	  requires = {
		  'nvim-tree/nvim-web-devicons', -- optional
	  },
	  config = function()
		  require("nvim-tree").setup {}
	  end
  }
  use {'akinsho/bufferline.nvim', tag = "v3.*", requires = 'nvim-tree/nvim-web-devicons'}
  use {
      'nvim-lualine/lualine.nvim',
      requires = { 'nvim-tree/nvim-web-devicons', opt = true }
  }
  use {
	  'VonHeikemen/lsp-zero.nvim',
	  branch = 'v2.x',
	  requires = {
		  -- LSP Support
		  {'neovim/nvim-lspconfig'},             -- Required
		  {                                      -- Optional
		  'williamboman/mason.nvim',
		  run = function()
			  pcall(vim.cmd, 'MasonUpdate')
		  end,
	  },
	  {'williamboman/mason-lspconfig.nvim'}, -- Optional

	  -- Autocompletion
	  {'hrsh7th/nvim-cmp'},     -- Required
	  {'hrsh7th/cmp-nvim-lsp'}, -- Required
	  {'L3MON4D3/LuaSnip'},     -- Required
  }

}
end)
