return {
  "nvim-treesitter/nvim-treesitter",
  opts = {
    ensure_installed = {
      "html",
      "css",
      "lua",
      "typescript",
      "rust",
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
