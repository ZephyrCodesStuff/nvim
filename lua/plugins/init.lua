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
  { "nvim-tree/nvim-web-devicons" },
  { "onsails/lspkind.nvim" },
  {
    "ibhagwan/fzf-lua",
    -- optional for icon support
    dependencies = { "nvim-tree/nvim-web-devicons" },
    -- or if using mini.icons/mini.nvim
    -- dependencies = { "echasnovski/mini.icons" },
    opts = {}
  },
  { "neovim/nvim-lspconfig" },
  {
    "pmizio/typescript-tools.nvim",
    dependencies = { "nvim-lua/plenary.nvim", "neovim/nvim-lspconfig" },
    opts = {},
  },
  { "williamboman/mason.nvim", dependencies = { 'mason-org/mason-registry' } },
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
require("plugins.lsp")
require("plugins.ai")


