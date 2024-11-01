return {
  "nvim-treesitter/nvim-treesitter",
  opts = {
    ensure_installed = {
      "html",
      "css",
      "lua",
      "typescript",
      "javascript",
      "vim",
      "vimdoc",
    },
    auto_install = true,
    highlight = {
      enabled = true,
    },
  },
}
