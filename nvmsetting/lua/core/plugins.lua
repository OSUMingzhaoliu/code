-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Must, Packer can manage itself
  use 'wbthomason/packer.nvim'

  -- starup time optimise
  use 'dstein64/vim-startuptime'
  use 'lewis6991/impatient.nvim'
  use 'nathom/filetype.nvim'

  -- Theme
  use {'monsonjeremy/onedark.nvim'}

  -- Lazy loading:
  -- Load on specific commands
  use {'tpope/vim-dispatch', opt = true, cmd = {'Dispatch', 'Make', 'Focus', 'Start'}}

  -- file manage plugin
  -- tree
  use {
      'nvim-tree/nvim-tree.lua', requires = {'nvim-tree/nvim-web-devicons',}, tag = 'nightly'
  }
  -- telescope
  use {
      'nvim-telescope/telescope.nvim', requires = 'nvim-lua/plenary.nvim'
  }

  -- buffer
  use {
      'akinsho/bufferline.nvim', requires = 'kyazdani42/nvim-web-devicons'
  }

  -- Language server
  use { "williamboman/mason.nvim",
        "williamboman/mason-lspconfig.nvim",
        "neovim/nvim-lspconfig"
  }
  -- startup screen
  --use {'leslie255/aleph-nvim'}
    use {'glepnir/lspsaga.nvim'}
    use {'hrsh7th/nvim-cmp'}
	use {'hrsh7th/cmp-nvim-lsp'}
	use {'hrsh7th/cmp-buffer'}
	use {'hrsh7th/cmp-path'}
	use {'hrsh7th/cmp-cmdline'}
    use {"L3MON4D3/LuaSnip"}
    use {"saadparwaiz1/cmp_luasnip"}
	use {'simrat39/rust-tools.nvim'}
	use {'simrat39/symbols-outline.nvim'}

  -- Load on a combination of conditions: specific filetypes or commands
  -- Also run code after load (see the "config" key)
  use {
    'w0rp/ale',
    ft = {'sh', 'zsh', 'bash', 'c', 'cpp', 'cmake', 'html', 'markdown', 'racket', 'vim', 'tex'},
    cmd = 'ALEEnable',
    config = 'vim.cmd[[ALEEnable]]'
  }

  
  -- Post-install/update hook with neovim command
  use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }



  -- indent guide
  --use "lukas-reineke/indent-blankline.nvim"  
  
  -- Use dependency and run lua function after load
  use {
    'lewis6991/gitsigns.nvim', requires = { 'nvim-lua/plenary.nvim' },
    config = function() require('gitsigns').setup() end
  }
  
  -- ascii image
  --use 'samodostal/image.nvim'

  -- You can alias plugin names
  use {'dracula/vim', as = 'dracula'}
end)
