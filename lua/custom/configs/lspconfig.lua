local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities

local lspconfig = require "lspconfig"

-- if you just want default config for the servers then put them in a table
local servers = { "html", "cssls", "tsserver", "clangd", "rust_analyzer" }


for _, lsp in ipairs(servers) do
  -- post_attach = function(client,bufnr)
  --   on_attach(client,funr)
  --   client.servers.documentFormattingProvider=true
  -- end;
  lspconfig[lsp].setup {
    on_attach = on_attach,
    capabilities = capabilities,
  }
end

--
-- lspconfig.pyright.setup { blabla}
--
lspconfig.rust_analyzer.setup {
  capabilities=capabilities,
  on_attach=on_attach,
  settings = {
    ["rust-analyzer"] = {
      checkOnSave = {
        allFeatures = true,
        overrideCommand = {
          "cargo",
          "clippy",
          "--workspace", --
          "--message-format=json",
          "--all-targets",
          "--all-features",
        },
      },
    },
  },
}
