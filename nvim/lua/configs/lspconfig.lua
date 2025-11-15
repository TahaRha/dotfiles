local base = require("nvchad.configs.lspconfig")

local on_attach = base.on_attach
local on_init = base.on_init
local capabilities = base.capabilities

-- Per nvim-lspconfig migration guide (see :help lspconfig-nvim-0.11),
-- we must now use vim.lsp.config() instead of require("lspconfig").server.setup()

vim.lsp.config('clangd', {
  on_init = on_init,
  on_attach = function(client, bufnr)
    client.server_capabilities.signatureHelpProvider = false
    on_attach(client, bufnr)
  end,
  capabilities = capabilities,
})

vim.lsp.config('texlab', {
  on_init = on_init,
  on_attach = on_attach,
  capabilities = capabilities,
})