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
        "clangd",
        "rust_analyzer",
}

for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = on_attach,
    capabilities = capabilities,
  }
end
