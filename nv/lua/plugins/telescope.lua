return {
    'nvim-telescope/telescope.nvim', 
		version = '*',
		dependencies = {
				'nvim-lua/plenary.nvim' 
		},
		config = function()
			require("telescope").setup({
				defaults = {
					mappings = {
            n = {
              ["d"] = require("telescope.actions").delete_buffer,
              ["q"] = require("telescope.actions").close,
            },
          },
				}
			})
			
			local telescope_builtin = require("telescope.builtin");
			vim.keymap.set("n", "<leader>ff", telescope_builtin.find_files, { desc = "Поиск по файлам", noremap = true, silent = true })
			vim.keymap.set("n", "<leader>fw", telescope_builtin.live_grep, { desc = "Поиск по словам", noremap = true, silent = true })
			vim.keymap.set("n", "<leader>fb", telescope_builtin.buffers, { desc = "Поиск по буферам", noremap = true, silent = true })
			vim.keymap.set("n", "<leader>fgs", telescope_builtin.git_status, { desc = "Просмотр git status", noremap = true, silent = true })
			vim.keymap.set("n", "<leader>fgS", telescope_builtin.git_stash, { desc = "Просмотр git stash", noremap = true, silent = true })
			vim.keymap.set("n", "<leader>fgf", telescope_builtin.git_files, { desc = "Просмотр всех git files", noremap = true, silent = true })
			-- vim.keymap.set("n", "<leader>fh", telescope_builtin.help_tags, { desc = "??", noremap = true, silent = true })
		end
}
