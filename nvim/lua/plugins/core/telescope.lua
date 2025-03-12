return {
  'nvim-telescope/telescope.nvim',
  branch = '0.1.x',
  dependencies = { 'nvim-lua/plenary.nvim' },
  lazy = true,
  keys = {
    {
      '<leader>ff',
      ':Telescope find_files<CR>',
      desc = 'Поиск файлов',
    },
    {
      '<leader>fw',
      ':Telescope live_grep<CR>',
      desc = 'Поиск grep',
    },
    {
      '<leader>fb',
      ':Telescope buffers<CR>',
      desc = 'Поиск буферов',
    },
    {
      '<leader>fh',
      ':Telescope help_tags<CR>',
      desc = 'Поиск help тегов',
    },
  },
}
