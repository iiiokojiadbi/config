return {
  "olimorris/codecompanion.nvim",
  dependencies = {
    { "MeanderingProgrammer/render-markdown.nvim", ft = { "markdown", "codecompanion" } }, -- Optional: For prettier markdown rendering
  },
  config = function()
    -- require("codecompanion").setup {
    --   adapters = {
    --     ollama = function()
    --       return require("codecompanion.adapters").extend("openai_compatible", {
    --         env = {
    --           url = "http[s]://open_compatible_ai_url", -- optional: default value is ollama url http://127.0.0.1:11434
    --           api_key = "OpenAI_API_KEY", -- optional: if your endpoint is authenticated
    --           chat_url = "/v1/chat/completions", -- optional: default value, override if different
    --         },
    --       })
    --     end,
    --   },
    -- }
  end,
}
