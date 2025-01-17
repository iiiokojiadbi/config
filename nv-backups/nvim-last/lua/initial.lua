require("lazy").setup({
    spec = "plugins",
    performance = {
        rtp = {
            disabled_plugins = {
                "gzip", "netrwPlugin", "tarPlugin", "tohtml", "tutor",
                "zipPlugin"
            }
        }
    },
    ui = {border = "single"}
})

require("options")
require("autocmds")
require("mappings")
