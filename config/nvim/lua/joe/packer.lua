vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  use 'nvim-tree/nvim-web-devicons'

  use 'github/copilot.vim'
  use('MunifTanjim/prettier.nvim')

  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.1',
    requires = { { 'nvim-lua/plenary.nvim' } }
  }

  use {
    'goolord/alpha-nvim',
    requires = { 'nvim-tree/nvim-web-devicons' },
  }

  use {
    "folke/which-key.nvim",
    config = function()
      vim.o.timeout = true
      vim.o.timeoutlen = 300
      require("which-key").setup {
        -- your configuration comes here
        -- or leave it empty to use the default settings
        -- refer to the configuration section below
      }
    end
  }

  use('neovim/nvim-lspconfig')
  use('jose-elias-alvarez/null-ls.nvim')
  use('MunifTanjim/prettier.nvim')

  use "nvim-telescope/telescope-dap.nvim"
  use "theHamsta/nvim-dap-virtual-text"
  use "rcarriga/nvim-dap-ui"

  use { "catppuccin/nvim", as = "catppuccin" }

  use('nvim-treesitter/nvim-treesitter', { run = ':TSUpdate' })
  use({
    "nvim-treesitter/nvim-treesitter-textobjects",
    after = "nvim-treesitter",
    requires = "nvim-treesitter/nvim-treesitter",
  })

  use "gcmt/wildfire.vim"
  use "gelguy/wilder.nvim"

  use {
    "mfussenegger/nvim-dap",
    opt = true,
    module = { "dap" },
    requires = {
      "theHamsta/nvim-dap-virtual-text",
      "rcarriga/nvim-dap-ui",
      "nvim-telescope/telescope-dap.nvim",
      { "mxsdev/nvim-dap-vscode-js", module = { "dap-vscode-js" } },
      {
        "microsoft/vscode-js-debug",
        opt = true,
        run = "npm install --legacy-peer-deps && npx gulp vsDebugServerBundle && mv dist out"
      },
    },
    disable = false,
  }

  use "Asheq/close-buffers.vim"

  use { 'nvim-telescope/telescope-ui-select.nvim' }

  use 'preservim/vimux'
  use 'vim-test/vim-test'

  use {
    "nvim-neotest/neotest",
    requires = {
      "nvim-lua/plenary.nvim",
      "nvim-treesitter/nvim-treesitter",
      "antoinemadec/FixCursorHold.nvim",
      'haydenmeade/neotest-jest',
    }
  }

  use 'nvim-neotest/neotest-vim-test'

  use 'theprimeagen/harpoon'

  use 'tpope/vim-fugitive'
  use 'tpope/vim-commentary'

  use {
    "windwp/nvim-autopairs",
    config = function() require("nvim-autopairs").setup {} end
  }

  use "ThePrimeagen/vim-be-good"

  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'nvim-tree/nvim-web-devicons', opt = true }
  }

  use { 'akinsho/bufferline.nvim', after = "catppuccin", tag = "*", requires = 'nvim-tree/nvim-web-devicons' }

  use 'airblade/vim-gitgutter'

  use {
    'VonHeikemen/lsp-zero.nvim',
    branch = 'v2.x',
    requires = {
      -- LSP Support
      { 'neovim/nvim-lspconfig' }, -- Required
      {                            -- Optional
        'williamboman/mason.nvim',
        run = function()
          pcall(vim.cmd, 'MasonUpdate')
        end,
      },
      { 'williamboman/mason-lspconfig.nvim' }, -- Optional

      -- Autocompletion
      { 'hrsh7th/nvim-cmp' },     -- Required
      { 'hrsh7th/cmp-nvim-lsp' }, -- Required
      { 'hrsh7th/cmp-path' },
      { 'hrsh7th/cmp-buffer' },
      { 'L3MON4D3/LuaSnip' }, -- Required
    }
  }

  use {
    'nvim-tree/nvim-tree.lua',
    requires = {
      'nvim-tree/nvim-web-devicons', -- optional
    },
  }

  use({
    "kylechui/nvim-surround",
    tag = "*", -- Use for stability; omit to use `main` branch for the latest features
    config = function()
      require("nvim-surround").setup({
        -- Configuration here, or leave empty to use defaults
      })
    end
  })

  use "justinmk/vim-sneak"

  use 'christoomey/vim-tmux-navigator'
end)
