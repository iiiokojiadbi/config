return {
	
	{
		"williamboman/mason-lspconfig.nvim",
		config = function()
			require("mason-lspconfig").setup(
				{
					ensure_installed = {
						-- LSP
						"cssls",
		"lua_ls",
		"html",
		"ts_ls",
		"jsonls",
    "rust_analyzer",
					}
				}
			)
		end
	},
	{
"neovim/nvim-lspconfig",
   dependencies = {
      "b0o/schemastore.nvim",
    },
config = function()
	local lspconfig = require("lspconfig")

	local servers = {
		"rust_analyzer",
		"html",
		"cssls",
		"ts_ls",
		"lua_ls",
		"jsonls",
	}

	-- lsps with default config
	for _, lsp in ipairs(servers) do
		lspconfig[lsp].setup {
			settings = {
				Lua = {
					diagnostics = { globals = { "vim", "require" } },
				},
				json = {
					schemas = require("schemastore").json.schemas(),
					validate = { enable = true },
				},
			},
		}
		end
	end
},
}
