return {
  'folke/trouble.nvim',
  opts = {}, -- for default options, refer to the configuration section for custom setup.
  cmd = 'Trouble',
  keys = {
    {
      '<leader>qd',
      '<cmd>Trouble diagnostics toggle focus=true<cr>',
      desc = 'Диагностика (Trouble)',
    },
    {
      '<leader>qD',
      '<cmd>Trouble diagnostics toggle filter.buf=0<cr>',
      desc = 'Диагностика по буферу (Trouble)',
    },
    {
      '<leader>qs',
      '<cmd>Trouble symbols toggle focus=false<cr>',
      desc = 'Символы (Trouble)',
    },
    {
      '<leader>ql',
      '<cmd>Trouble lsp toggle focus=false win.position=right<cr>',
      desc = 'LSP Definitions / references / ... (Trouble)',
    },
    {
      '<leader>qL',
      '<cmd>Trouble loclist toggle<cr>',
      desc = 'Location List (Trouble)',
    },
    {
      '<leader>qq',
      '<cmd>Trouble qflist toggle<cr>',
      desc = 'Quickfix List (Trouble)',
    },
  },
}
