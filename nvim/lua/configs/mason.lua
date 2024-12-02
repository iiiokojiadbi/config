local Mason = {}

function Mason.core()
    require("mason").setup()
end

function Mason.tool()
    local opts = {
        ensure_installed = {"prettier", "stylua", "eslint_d"}
    }

    require("mason-tool-installer").setup(opts)
end

function Mason.lspconfig()
    local opts = {
        automatic_installation = true,
        ensure_installed = {"lua_ls", "ts_ls", "rust_analyzer"}
    }

    require('mason-lspconfig').setup(opts)
end

return Mason
