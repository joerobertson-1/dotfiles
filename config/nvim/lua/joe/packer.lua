vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  -- Utility plugins
  use 'nvim-lua/plenary.nvim'
  use 'MunifTanjim/nui.nvim'
  use 'nvim-tree/nvim-web-devicons'

  -- AI Plugins
  use 'github/copilot.vim'
  use 'jackMort/ChatGPT.nvim'

  -- Organisation Plugins
  use 'vimwiki/vimwiki'

  -- Telescope is a generic fuzzy finder
  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.1',
  }

  -- Aerial gives a nice overview of the current file
  use 'stevearc/aerial.nvim'

  -- which-key shows the available keybindings
  use 'folke/which-key.nvim'

  -- flash is similar to leap, good for jumping around files
  use 'folke/flash.nvim'

  -- trouble is a nice way to show diagnostics
  use 'folke/trouble.nvim'

  -- zen-mode is a nice way to focus on the current buffer
  use 'folke/zen-mode.nvim'

  -- Noice for some funky UI stuff
  use 'folke/noice.nvim'
  use 'rcarriga/nvim-notify'

  -- LSP setup
  use('neovim/nvim-lspconfig')
  use {
    'VonHeikemen/lsp-zero.nvim',
    branch = 'v2.x',
    requires = {
      {
        'williamboman/mason.nvim',
        run = function()
          pcall(vim.cmd, 'MasonUpdate')
        end,
      },
      { 'williamboman/mason-lspconfig.nvim' }, -- Optional
      { 'onsails/lspkind.nvim' },
      { 'hrsh7th/nvim-cmp' },     -- Required
      { 'hrsh7th/cmp-nvim-lsp' }, -- Required
      { 'hrsh7th/cmp-path' },
      { 'hrsh7th/cmp-buffer' },
      { 'L3MON4D3/LuaSnip' }, -- Required
    }
  }

  -- Shows a list of code actions
  require('packer').use({
    'weilbith/nvim-code-action-menu',
    cmd = 'CodeActionMenu',
  })

  -- Shows diagnostics for a line in a nicer way
  use "https://git.sr.ht/~whynothugo/lsp_lines.nvim"

  -- Nice way for tools like eslint and prettier to hook into LSP
  use 'jose-elias-alvarez/null-ls.nvim'

  -- DAP Related (Debugging)
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

  -- Telescope integration for DAP commands
  use "nvim-telescope/telescope-dap.nvim"

  -- Shows current values of variables in the virtual text while debugging
  use "theHamsta/nvim-dap-virtual-text"

  -- Shows a nice UI for debugging
  use "rcarriga/nvim-dap-ui"

  -- Theme
  use { "catppuccin/nvim", as = "catppuccin" }

  -- Treesitter for syntax highlighting
  use('nvim-treesitter/nvim-treesitter', { run = ':TSUpdate' })
  use({
    "nvim-treesitter/nvim-treesitter-textobjects",
    after = "nvim-treesitter",
  })

  -- Used to close all buffers quickly
  use "Asheq/close-buffers.vim"

  -- Vimux allows tests to be run in a tmux pane
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

  -- Harpoon allows you to quickly jump between files
  use 'theprimeagen/harpoon'

  -- Vim-fugitive for git
  use 'tpope/vim-fugitive'
  use 'airblade/vim-gitgutter'

  -- Vim-commentary for commenting
  use 'tpope/vim-commentary'

  -- Autopairs for auto closing brackets
  use {
    "windwp/nvim-autopairs",
    config = function() require("nvim-autopairs").setup {} end
  }

  -- Lualine as the status bar
  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'nvim-tree/nvim-web-devicons', opt = true }
  }

  -- Bufferline for the buffer bar
  use { 'akinsho/bufferline.nvim', after = "catppuccin", tag = "*", requires = 'nvim-tree/nvim-web-devicons' }

  -- nvim-tree as a file explorer
  use 'nvim-tree/nvim-tree.lua'

  -- nvim-surround for surrounding text
  use({
    "kylechui/nvim-surround",
    tag = "*", -- Use for stability; omit to use `main` branch for the latest features
    config = function()
      require("nvim-surround").setup({
        -- Configuration here, or leave empty to use defaults
      })
    end
  })

  -- vim-tmux-navigator for navigating between vim and tmux panes (see .tmux.conf)
  use 'christoomey/vim-tmux-navigator'
end)
