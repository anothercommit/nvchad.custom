local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities

local lspconfig = require "lspconfig"

-- if you just want default config for the servers then put them in a table
local servers = {
  -- Web
  "html",
  "tsserver",
  "cssls",
  -- "denols",
  "emmet_ls",

  "marksman", -- markdown
  "jsonls",
  "lua_ls",
  "pyre",
  "yamlls",
  "taplo",

  -- Functional
  -- "clangd", -- Set upeado por separado para darle utf-16
  "rust_analyzer",
}

for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = on_attach,
    capabilities = capabilities,
  }
end

local capabilities_utf16 = vim.lsp.protocol.make_client_capabilities()
capabilities_utf16.offsetEncoding = { "utf-16" }
lspconfig.clangd.setup { capabilities = capabilities_utf16 }
