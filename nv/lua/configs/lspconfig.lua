require("nvchad.configs.lspconfig").defaults()

local servers = {
  html = {},
  cssls = {},
  rust_analyzer = {},
  ts_ls = {
    cmd = { "typescript-language-server", "--stdio" },
    filetypes = { "javascript", "javascriptreact", "javascript.jsx", "typescript", "typescriptreact", "typescript.tsx" },
    init_options = {
      hostInfo = "neovim",
    },
    single_file_support = true,
    settings = {
      completions = {
        completeFunctionCalls = true,
      },
    },
  },
}

local lspconfig = require "lspconfig"
local nvlsp = require "nvchad.configs.lspconfig"

for name, opts in pairs(servers) do
  opts.on_init = nvlsp.on_init
  opts.on_attach = nvlsp.on_attach
  opts.capabilities = nvlsp.capabilities

  lspconfig[name].setup(opts)
end
