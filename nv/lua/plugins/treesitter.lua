return {
	"nvim-treesitter/nvim-treesitter",
	config = function ()
		require("nvim-treesitter.configs").setup({
			ensure_installed = {
				"lua",
				"typescript",
				"javascript"
			},
			auto_install = true,
			highlight = {
				enabled = true
			}
		})
	end
}
