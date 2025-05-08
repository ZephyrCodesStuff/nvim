-- Bootstrap lazy.nvim if not installed
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git", "clone", "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", lazypath
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
  { "nvim-lualine/lualine.nvim" },
  {
    "nvim-telescope/telescope-file-browser.nvim",
    dependencies = { "nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim" }
  },
  { "nvim-tree/nvim-web-devicons" },
  { "onsails/lspkind.nvim" },
  { "nvim-telescope/telescope.nvim", dependencies = { "nvim-lua/plenary.nvim" } },
  { "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
  { "neovim/nvim-lspconfig" },
  {
    "pmizio/typescript-tools.nvim",
    dependencies = { "nvim-lua/plenary.nvim", "neovim/nvim-lspconfig" },
    opts = {},
  },
  { "williamboman/mason.nvim" },
  { "williamboman/mason-lspconfig.nvim" },
  {
      "saghen/blink.cmp",
      dependencies = { 'rafamadriz/friendly-snippets' },

      -- use a release tag to download pre-built binaries
      version = '1.*',
      opts = {
        keymap = {
          preset = 'default',
          ['<CR>'] = {
            function(cmp)
              if cmp.is_visible() then
                cmp.accept()
                return true
              end
            end,
            "fallback"
          },
        },

        appearance = {
          nerd_font_variant = 'mono'
        },

        -- (Default) Only show the documentation popup when manually triggered
        completion = { documentation = { auto_show = false } },
        sources = {
          default = { 'lsp', 'path', 'snippets', 'buffer' },
          -- providers = { codeium = { name = 'Codeium', module = 'codeium.blink', async = true } },
        },

        fuzzy = { implementation = "prefer_rust_with_warning" }
      },
      opts_extend = { "sources.default" }
  },
  { "L3MON4D3/LuaSnip" },
  { "folke/tokyonight.nvim" },
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
      require("nvim-treesitter.configs").setup({
        ensure_installed = {
          "markdown",
          "markdown_inline",
          "dockerfile",
          "toml",
          "yaml",
          "gitignore",
          "bash", -- for .env
        },
        highlight = { enable = true },
        indent = { enable = true },
      })
    end,
  }
})

require("plugins.ui")
require("plugins.telescope")
require("plugins.lsp")
require("plugins.ai")

