-- This file can be loaded by calling `lua require('plugins')` from your init.vim
-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.1',
    -- or                            , branch = '0.1.x',
    requires = { { 'nvim-lua/plenary.nvim' } }
  }
  use('nvim-treesitter/nvim-treesitter', { run = ':TSUpdate' })
  use('theprimeagen/harpoon')
  use('francoiscabrol/ranger.vim')
  --use('nvim-tree/nvim-web-devicons')
  use('mbbill/undotree')
  use('mhinz/vim-startify')
  use('vim-airline/vim-airline')
  use('vim-airline/vim-airline-themes')
  use('lukas-reineke/indent-blankline.nvim')
  use('preservim/nerdtree')
  use('nvim-tree/nvim-tree.lua')
  use('preservim/nerdcommenter')
  use('ap/vim-css-color')
  use('bhurlow/vim-parinfer')
  use('othree/html5.vim')
  use('mhinz/vim-signify')
  use('evanleck/vim-svelte', { branch = 'main' })
  use('p00f/nvim-ts-rainbow')
  use 'MarcWeber/vim-addon-mw-utils'
  use 'tomtom/tlib_vim'
  use 'garbas/vim-snipmate'
  use {
    'VonHeikemen/lsp-zero.nvim',
    branch = 'v2.x',
    requires = {
      -- LSP Support
      { 'neovim/nvim-lspconfig' }, -- Required
      {
        -- Optional
        'williamboman/mason.nvim',
        run = function()
          pcall(vim.cmd, 'MasonUpdate')
        end,
      },
      { 'williamboman/mason-lspconfig.nvim' }, -- Optional

      -- Autocompletion
      { 'hrsh7th/nvim-cmp' },             -- Required
      { 'hrsh7th/cmp-nvim-lsp' },         -- Required
      { 'hrsh7th/cmp-nvim-lua' },         -- Optional
      { 'hrsh7th/cmp-buffer' },           -- Optional
      { 'hrsh7th/cmp-path' },             -- Optional
      { 'L3MON4D3/LuaSnip' },             -- Required
    }
  }

  use 'xiyaowong/transparent.nvim'
  use 'juanedi/predawn.vim'
  use 'chriskempson/base16-vim'
  use({ 'dracula/vim', as = 'dracula' })
  use 'sainnhe/everforest'
  use 'sainnhe/edge'
  use 'sainnhe/sonokai'
  use 'jnurmine/Zenburn'
  use({ 'lighthaus-theme/vim-lighthaus', as = 'lighthaus' })
  use({ 'fcpg/vim-fahrenheit', as = 'fahrenheit' })
  use({ 'fcpg/vim-farout', as = 'farout' })
  use({ 'flrnd/plastic.vim', as = 'plastic' })
  use 'ViViDboarder/wombat.nvim'
  use 'marko-cerovac/material.nvim'
  use { 'kaiuri/nvim-juliana',
    config = function()
      require 'nvim-juliana'.setup { --[=[ configuration --]=] }
    end
  }
  --- then
  vim.cmd 'colorscheme juliana'
end)
