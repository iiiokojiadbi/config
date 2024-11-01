return {
  "leath-dub/snipe.nvim",
  config = function()
    local snipe = require "snipe"
    snipe.setup {
      hints = {
        dictionary = "asfghl;wertyuiop",
      },
      navigate = {
        close_buffer = "d",
      },
      sort = "default",
    }
  end,
}
