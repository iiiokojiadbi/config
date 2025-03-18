return {
  {
    'akinsho/toggleterm.nvim',
    version = '*',
    opts = {
      open_mapping = '<C-/>',
      direction = 'vertical',
      size = 60,
      -- shade_terminals = true,
    },
    keys = {
      {
        '<leader>t1',
        ':ToggleTerm 1<CR>',
        desc = 'Создать второй терминал',
      },
      {
        '<leader>t2',
        ':ToggleTerm 2<CR>',
        desc = 'Создать второй терминал',
      },
      {
        '<leader>t3',
        ':ToggleTerm 3<CR>',
        desc = 'Создать третий терминал',
      },
      {
        '<leader>tt',
        function()
          vim.cmd 'ToggleTerm 1'
          vim.cmd 'ToggleTerm 2'
        end,
        desc = 'Создать третий терминал',
      },
    },
  },
}
