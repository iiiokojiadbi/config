local map = require("vim.modules").map

local M = {}


M.opts = {
    defaults = {
        mappings = {
            n = {
                ["d"] = require("telescope.actions").delete_buffer,
                ["q"] = require("telescope.actions").close,
            },
        },
    },
    pickers = {
        find_files = {
            hidden = true,
            theme = "ivy",
        },
    },
    extensions = {
        ["ui-select"] = {
            require("telescope.themes").get_dropdown {},
        },
    },
}

M.config = function(_, opts)
    require("telescope").setup(opts)

    local builtin = require "telescope.builtin"

    map({ "n" }, "<leader><leader>", builtin.oldfiles, "telescope поиск по недавно открытым")
    -- map({"n"}, "<leader>sk", builtin.keymaps,  "[S]earch [K]eymaps" )
    -- map({"n"}, "<leader>ss", builtin.builtin,  "[S]earch [S]elect Telescope" )
    -- map({"n"}, "<leader>sw", builtin.grep_string,  "[S]earch current [W]ord" )
    -- map({"n"}, "<leader>sd", builtin.diagnostics,  "[S]earch [D]iagnostics" )
    -- map({"n"}, "<leader>sr", builtin.resume,  "[S]earch [R]esume" )
    map({ "n" }, "<leader>fw", builtin.live_grep, "telescope поиск по слову")
    map({ "n" }, "<leader>fb", builtin.buffers, "telescope поиск по буферам")
    map({ "n" }, "<leader>fm", builtin.marks, "telescope поиск по меткам")
    map({ "n" }, "<leader>fgc", builtin.git_commits, "telescope git commits")
    map({ "n" }, "<leader>fgC", builtin.git_bcommits, "telescope git b commits")
    map({ "n" }, "<leader>fgs", builtin.git_status, "telescope git status")
    map({ "n" }, "<leader>fgS", builtin.git_stash, "telescope git stash")
    map({ "n" }, "<leader>ff", builtin.find_files, "telescope поиск по файлам")
    map({ "n" }, "<leader>fh", builtin.help_tags, "telescope поиск по документации и помощи")
    map({ "n" }, "<leader>fz", builtin.current_buffer_fuzzy_find, "telescope поиск по текущему буферу")

    map({ "n" }, "<leader>fa", function()
        builtin.find_files {
            follow = true,
            no_ignore = true,
            hidden = true,
        }
    end, "telescope поиск по всем файлам")

    require("telescope").load_extension "ui-select"
end

return M
