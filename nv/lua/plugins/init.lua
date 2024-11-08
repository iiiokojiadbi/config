local conf_path = vim.fn.stdpath "config" --[[@as string]]

local plugins = {
  -- colorschemes
  {
    "catppuccin/nvim",
    lazy = true,
    priority = 1000,
    name = "catppuccin",
    init = function()
      vim.cmd.colorscheme "catppuccin"
    end,
    opts = {
      transparent_background = true,
      compile_path = vim.fn.stdpath "cache" .. "/catppuccin",
      compile = true,
      flavour = "mocha",
      integrations = {
        cmp = true,
        treesitter = true,
        mason = true,
        native_lsp = {
          enabled = true,
          virtual_text = {
            errors = { "italic" },
            hints = { "italic" },
            warnings = { "italic" },
            information = { "italic" },
          },
          underlines = {
            errors = { "undercurl" },
            hints = { "undercurl" },
            warnings = { "undercurl" },
            information = { "undercurl" },
          },
        },
        mini = {
          enabled = true,
          -- indentscope_color = "lavender",
          indentscope_color = "text",
        },
      },

    },
  },

  --- Mini stuffs
  {
    "echasnovski/mini.nvim",
    name = "mini",
    version = false,
    keys = function()
      require("mappings").mini()
    end,
    init = function()
      package.preload["nvim-web-devicons"] = function()
        package.loaded["nvim-web-devicons"] = {}
        require("mini.icons").mock_nvim_web_devicons()
        return package.loaded["nvim-web-devicons"]
      end
    end,
    event = function()
      if vim.fn.argc() == 0 then
        return "VimEnter"
      else
        return { "InsertEnter", "LspAttach" }
      end
    end,

    config = function()
      local mini_config = require "plugins.mini_nvim"
      local mini_modules = {
        "icons",
        "comment", -- комментарии
        "starter",
        "pairs",   -- автозакрытие парных символов
        "ai",
        "surround",
        "files",
        "hipatterns",
        "bufremove",
        "pick",
        "move",
        "indentscope",
        "extra",
        "visits",
        "clue",
        "notify",
        "git",
        "diff",
      }
      for _, module in ipairs(mini_modules) do
        require("mini." .. module).setup(mini_config[module])
      end
    end,
  },

  {
    "nvim-treesitter/nvim-treesitter",
    name = "treesitter",
    cmd = { "TSInstall", "TSBufEnable", "TSBufDisable", "TSModuleInfo" },
    build = ":TSUpdate",
    event = {
      "BufReadPost",
      "BufNewFile",
    },
    config = function()
      local config = require "nvim-treesitter.configs"

      config.setup {
        auto_install = true,
        highlight = { enable = true, use_languagetree = true, },
        indent = { enable = false },
      }
    end,
  },

  {
    "windwp/nvim-ts-autotag",
    event = {
      "BufReadPost",
      "BufNewFile",
    },
    config = function()
      require("nvim-ts-autotag").setup()
    end,
  },

  --- Completion menu stuffs
  {
    "saghen/blink.cmp",
    event = { "LspAttach", "InsertCharPre" },
    version = "v0.*",
    opts = {
      highlight = {
        use_nvim_cmp_as_default = true,
      },
      nerd_font_variant = "mono",

      trigger = { signature_help = { enabled = true } },

      keymap = {
        ["<CR>"] = { "select_and_accept", "fallback" },
        ["<C-n>"] = { "select_next", "fallback" },
        ["<C-p>"] = { "select_prev", "fallback" },
        ["<C-y>"] = { "scroll_documentation_down" },
        ["<C-e>"] = { "scroll_documentation_up" },
      },

      windows = {
        autocomplete = {
          border = "single",
        },
        documentation = {
          border = "single",
        },
      },
    },
  },

  -- Tmux
  "christoomey/vim-tmux-navigator",
  cmd = {
    "TmuxNavigateLeft",
    "TmuxNavigateDown",
    "TmuxNavigateUp",
    "TmuxNavigateRight",
    "TmuxNavigatePrevious",
  },

  {
    "Bekaboo/dropbar.nvim",
    name = "dropbar",
    keys = {
      require("mappings").map({ "n" }, "<leader>p", function()
        require("dropbar.api").pick(vim.v.count ~= 0 and vim.v.count)
      end, "Toggle dropbar menu"),
    },
    event = { "BufReadPost", "BufNewFile" },
    config = function()
      require("dropbar").setup()
    end,
  },

  --- lsp stuffs
  {
    "neovim/nvim-lspconfig",
    name = "lspconfig",
    cmd = { "LspInfo", "LspInstall", "LspUninstall" },
    event = { "BufReadPost", "BufNewFile" },
    keys = function()
      require("mappings").lsp()
    end,
    config = function()
      require "plugins.lsp"
    end,
  },


  {
    "j-hui/fidget.nvim",
    lazy = false,
    opts = {
      notification = {
        window = {
          winblend = 0,
        },
      },
    },
  },

  -- ???
  {
    "nvchad/showkeys",
    cmd = "ShowkeysToggle",
    opts = {
      timeout = 1,
      maxkeys = 5,
      position = "top-center",
    }
  },



  {
    name = "options",
    event = "VeryLazy",
    dir = conf_path,
    config = function()
      require("opts").final()
      require("mappings").general()
      require("mappings").tmux()
      require("modules").autocmds()
    end,
  },
}

require("lazy").setup(plugins, {
  change_detection = { enabled = false },
  concurrency = 4,
  defaults = {
    lazy = true,
  },
  install = {
    colorscheme = { "catppuccin" },
  },
  performance = {
    cache = {
      enabled = true,
    },
    reset_packpath = true,
    rtp = {
      disabled_plugins = {
        "osc52",
        "parser",
        "gzip",
        "netrwPlugin",
        "health",
        "man",
        "matchit",
        "rplugin",
        "tarPlugin",
        "tohtml",
        "tutor",
        "zipPlugin",
        "shadafile",
        "spellfile",
        "editorconfig",
      },
    },
  },
  ui = {
    border = "single",
    title = "lazy.nvim",
    size = { width = 0.9, height = 0.9 },
  },
})
