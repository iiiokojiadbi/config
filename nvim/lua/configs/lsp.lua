-- LSP this is needed for LSP completions in CSS along with the snippets plugin
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true
capabilities.textDocument.completion.completionItem.resolveSupport = {
    properties = {"documentation", "detail", "additionalTextEdits"}
}

-- Give me rounded borders everywhere
local orig_util_open_floating_preview = vim.lsp.util.open_floating_preview
function vim.lsp.util.open_floating_preview(contents, syntax, opts, ...)
    opts = opts or {}
    opts.border = "rounded"
    return orig_util_open_floating_preview(contents, syntax, opts, ...)
end

-- Enable (broadcasting) snippet capability for completion
-- local capabilities = require("cmp_nvim_lsp").default_capabilities()

local on_attach = function(client)
    client.server_capabilities.document_formatting = false
end

-- LSP Server config
local lspconfig = require("lspconfig")

lspconfig.html.setup({
    capabilities = capabilities,
    on_attach = on_attach
})

lspconfig.cssls.setup({
    settings = {
        css = {
            lint = {
                emptyRules = "ignore"
            }
        },
        scss = {
            lint = {
                idSelector = "warning",
                zeroUnits = "warning",
                duplicateProperties = "warning",
                emptyRules = nil
            },
            completion = {
                completePropertyWithSemicolon = true,
                triggerPropertyValueCompletion = true
            }
        }
    }
})

lspconfig.ts_ls.setup({
    capabilities = capabilities,
    on_attach = on_attach,
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
    }
})

-- require("lspconfig").stylelint_lsp.setup({
--     capabilities = capabilities, ! removed?
--     on_attach = on_attach, 
--     filetypes = {"css", "scss"},
--     root_dir = require("lspconfig").util.root_pattern("package.json", ".git"),
--     settings = {
--         stylelintplus = {
--             -- see available options in stylelint-lsp documentation
--         }
--     },
-- })

-- LSP Prevents inline buffer annotations
vim.diagnostic.open_float()
vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(vim.lsp.diagnostic.on_publish_diagnostics, {
    virtual_text = false,
    signs = true,
    underline = true,
    update_on_insert = false
})

local signs = {
    Error = "󰅚 ",
    Warn = "󰳦 ",
    Hint = "󱡄 ",
    Info = " "
}

for type, icon in pairs(signs) do
    local hl = "DiagnosticSign" .. type
    vim.fn.sign_define(hl, {
        text = icon,
        texthl = hl,
        numhl = nil
    })
end
