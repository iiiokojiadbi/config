return {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons",
			"MunifTanjim/nui.nvim",
    },
		config = function()

	local signs = { Error = " ", Warn = " ", Hint = " ", Info = " " }
for type, icon in pairs(signs) do
  local hl = "DiagnosticSign" .. type
	
			require("notify")(hl)
  vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = hl })
end			

		require("neo-tree").setup({
			close_if_last_window = false,
		})
	end,
}
