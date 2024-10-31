local map = vim.keymap.set

local function merge_opts(value)
  local default = {}
  local opts = { noremap = true, silent = true }

  if not value then
    value = default
  end

  for k, v in pairs(value) do
    opts[k] = v
  end

  return opts
end

-- INSERT
map("i", "jj", "<ESC>", merge_opts({ desc = "Выход из вставки" }))

-- VISUAL
map("v", "<leader>/", "gc", { desc = "Закомментировать", remap = true }) 

-- NORMAL
map("n", "<leader>w", ":w<CR>", merge_opts({ desc = "Сохранить" }))
map("n", "<C-f>a", "gg<S-v>G", merge_opts({ desc = "Выбрать все" }))
map("n", "x", '"_x', merge_opts({ desc = "Удалить символ" }))
map("n", "<leader>Q", ":qa<CR>", merge_opts({ desc = "Закрыть все" }))
map("n", "<C-h>", ":wincmd h<CR>", merge_opts({ desc = "Левая вкладка" }))
map("n", "<C-k>", ":wincmd k<CR>", merge_opts({ desc = "Верхняя вкладка" }))
map("n", "<C-j>", ":wincmd j<CR>", merge_opts({ desc = "Нижняя вкладка" }))
map("n", "<C-l>", ":wincmd l<CR>", merge_opts({ desc = "Правая вкладка" }))
map("n", "|", ":vsplit<CR>", merge_opts({ desc = "Вертикальная вкладка" }))
map("n", "\\", ":split<CR>", merge_opts({ desc = "Горизонтальная вкладка" }))
map("n", "<leader>e", ":Neotree left toggle reveal<CR>", merge_opts({ desc = "Открыть дерево файлов" }))
map("n", "<leader>E", ":Neotree git_status right toggle reveal<CR>", merge_opts({ desc = "Открыть дерево изменений" }))
map("n", "<Tab>", ":BufferLineCycleNext<CR>", merge_opts({ desc = "Следующий таб" }))
map("n", "<s-Tab>", ":BufferLineCyclePrev<CR>", merge_opts({ desc = "Предыдущий таб" }))
map("n", "<leader>x", ":BufferLinePickClose<CR>", merge_opts({ desc = "Закрыть таб" }))
map("n", "<c-x>", ":BufferLineCloseOthers<CR>", merge_opts({ desc = "Закрыть остальные табы" }))
map("n", "<leader><space>", "<cmd>e #<cr>", merge_opts({ desc = "Альтернативный буфер" }))
map("n", "<leader>/", "gcc", { desc = "Закомментировать", remap = true })
map("n", "<leader>t", ":FloatermNew<CR>", merge_opts({ desc = "Открыть/закрыть терминал" }))

-- WITH CALLBACK
map("n", "<leader>s", function()
	local toggle = require("snipe").create_buffer_menu_toggler({ max_path_width = 3 })
	toggle()
end, merge_opts({ desc = "Показать буферы" }))

-- map("n", "<leader>nd", function()
-- 	require("notify").dismiss({ silent = true, pending = true })
-- end, merge_opts({ desc = "Закрыть все уведомления" }))

-- map("n", "<leader>ns", "", merge_opts({ desc = "+noice" }))

-- map("c", "<S-Enter>", function() require("noice").redirect(vim.fn.getcmdline()) end, merge_opts({ desc = "Redirect Cmdline"  }))

map("n", "<leader>nl", function() require("noice").cmd("last") end, merge_opts({ desc = "Показать последнее уведомление" }))

map("n", "<leader>nh", function() require("noice").cmd("history") end, merge_opts({ desc = "Показать истории уведомлений" }))

map("n", "<leader>na", function() require("noice").cmd("all") end, merge_opts({ desc = "Показать все уведомления" }))

map("n", "<leader>nd", function() require("noice").cmd("dismiss") end, merge_opts({ desc = "Закрыть все уведомления" }))

map("n", "<leader>nt", function() require("noice").cmd("pick") end, merge_opts({ desc = "Noice Picker (Telescope/FzfLua)" }))

map({"i", "n", "s"}, "<c-f>", 
	function() 
		if not require("noice.lsp").scroll(4) then return "<c-f>" 
	end 
end, merge_opts({  silent = true, expr = true, desc = "Прокрутить дальше" }))

map({"i", "n", "s"}, "<c-b>", 
	function() 
		if not require("noice.lsp").scroll(-4) then return "<c-b>" 
	end 
end, merge_opts({ silent = true, expr = true, desc = "Прокрутить назад" })) 
