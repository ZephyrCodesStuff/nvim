-- LSP settings
local lspconfig = require("lspconfig")

-- LSP server setup for various languages
lspconfig.yamlls.setup({
  settings = {
    yaml = {
      schemas = {
        ["https://json.schemastore.org/github-workflow.json"] = "/.github/workflows/*",
      },
    },
  },
})

-- Setup mason for automatic installation of LSP servers
require("mason").setup()
require("mason-lspconfig").setup({
  ensure_installed = {
    "rust_analyzer", -- Rust
    "ts_ls",         -- TypeScript
    "solargraph",    -- Ruby
    "clangd",        -- C / C++
    "yamlls",        -- YAML
    "dockerls",      -- Dockerfile
    "marksman",      -- Markdown
    "taplo",         -- TOML
    "bashls",        -- .env files
    "ruff",          -- Python formatting
    "basedpyright"   -- Python LSP
  },
})

-- Configure diagnostics
vim.diagnostic.config({
  virtual_text = true,
  signs = true,
  update_in_insert = true,
  underline = true,
  severity_sort = true,
})

-- Set up LSP formatting
local function on_attach(client, bufnr)
  -- Enable formatting on save
  if client.server_capabilities.documentFormattingProvider then
    vim.api.nvim_buf_create_user_command(bufnr, "Format", function()
      vim.lsp.buf.formatting()
    end, { desc = "Format current buffer with LSP" })

    -- Auto-format on save
    vim.cmd([[autocmd BufWritePre <buffer> lua vim.lsp.buf.formatting_sync()]])
  end
end

