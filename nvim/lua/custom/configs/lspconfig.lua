local base = require("plugins.configs.lspconfig")

local on_attach = base.on_attach
local on_init = base.on_init
local capabilities = base.capabilities

local lspconfig = require "lspconfig"

lspconfig.clangd.setup {
  on_init = on_init,
  on_attach = function(client, bufnr)
    client.server_capabilities.signatureHelpProvider = false
    on_attach(client, bufnr)
  end,
  capabilities = capabilities,
}

lspconfig.texlab.setup {
  on_init = on_init,
  on_attach = on_attach,
  capabilities = capabilities,
}
