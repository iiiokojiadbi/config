return {
  'nvim-neo-tree/neo-tree.nvim',
  branch = 'v3.x',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-tree/nvim-web-devicons', -- not strictly required, but recommended
    'MunifTanjim/nui.nvim',
  },
  keys = {
    {
      '<leader>ee',
      ':Neotree left reveal toggle<CR>',
      desc = 'Открыть дерево файлов',
    },
    {
      '<leader>ec',
      ':Neotree close<CR>',
      desc = 'Закрыть дерево файлов',
    },
    {
      '<leader>eb',
      ':Neotree buffers<CR>',
      desc = 'Показать буферы',
    },
    {
      '<leader>es',
      ':Neotree git_status<CR>',
      desc = 'Показать измененные файлы',
    },
  },
}
