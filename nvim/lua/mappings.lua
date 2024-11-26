local km = vim.keymap

local toggle_zen = require("modules").toggle_zen
local escape = require("modules").escape


-- Make visual yanks place the cursor back where started
km.set("v", "y", "ygv<Esc>", { desc = "Yank and reposition cursor" })


km.set("n", "<leader>xu", ":UndotreeToggle<cr>", { desc = "Undo Tree" })
-- More molecular undo of text
km.set("i", ".", ".<c-g>u")
km.set("i", "!", "!<c-g>u")
km.set("i", "?", "?<c-g>u")
km.set("i", ";", ";<c-g>u")
km.set("i", ":", ":<c-g>u")

--nav buddy
km.set({ "n" }, "<leader>xb", ":lua require('nvim-navbuddy').open()<cr>", { desc = "Nav Buddy" })



km.set("n", "<leader>l", ":LazyGit<cr>", { silent = true, desc = "Lazygit" })


-- Easy add date/time
function date()
  local pos = vim.api.nvim_win_get_cursor(0)[2]
  local line = vim.api.nvim_get_current_line()
  local nline = line:sub(0, pos) .. "# " .. os.date("%d.%m.%y") .. line:sub(pos + 1)
  vim.api.nvim_set_current_line(nline)
  vim.api.nvim_feedkeys("o", "n", true)
end

km.set("n", "<leader>xd", "<сmd>lua date()<cr>", { desc = "Insert Date" })

km.set("n", "j", [[(v:count > 5 ? "m'" . v:count : "") . 'j']], { expr = true, desc = "if j > 5 add to jumplist" })

km.set("n", "<leader>p", require("fzf-lua").files, { desc = "FZF Files" })

km.set("n", "<leader><leader>", require("fzf-lua").resume, { desc = "FZF Resume" })

km.set("n", "<leader>r", require("fzf-lua").registers, { desc = "Registers" })

km.set("n", "<leader>m", require("fzf-lua").marks, { desc = "Marks" })

km.set("n", "<leader>k", require("fzf-lua").keymaps, { desc = "Keymaps" })

km.set("n", "<leader>f", require("fzf-lua").live_grep, { desc = "FZF Grep" })

km.set("n", "<leader>b", require("fzf-lua").buffers, { desc = "FZF Buffers" })

km.set("v", "<leader>8", require("fzf-lua").grep_visual, { desc = "FZF Selection" })

km.set("n", "<leader>7", require("fzf-lua").grep_cword, { desc = "FZF Word" })

km.set("n", "<leader>j", require("fzf-lua").helptags, { desc = "Help Tags" })

km.set("n", "<leader>gc", require("fzf-lua").git_bcommits, { desc = "Browse File Commits" })

km.set("n", "<leader>gs", require("fzf-lua").git_status, { desc = "Git Status" })

km.set("n", "<leader>s", require("fzf-lua").spell_suggest, { desc = "Spelling Suggestions" })

km.set("n", "<leader>cj", require("fzf-lua").lsp_definitions, { desc = "Jump to Definition" })

km.set(
  "n",
  "<leader>cs",
  ":lua require'fzf-lua'.lsp_document_symbols({winopts = {preview={wrap='wrap'}}})<cr>",
  { desc = "Document Symbols" }
)

km.set("n", "<leader>cr", require("fzf-lua").lsp_references, { desc = "LSP References" })

km.set(
  "n",
  "<leader>cd",
  ":lua require'fzf-lua'.diagnostics_document({fzf_opts = { ['--wrap'] = true }})<cr>",
  { desc = "Document Diagnostics" }
)

km.set(
  "n",
  "<leader>ca",
  ":lua require'fzf-lua'.lsp_code_actions({ winopts = {relative='cursor',row=1.01, col=0, height=0.2, width=0.4} })<cr>",
  { desc = "Code Actions" }
)

km.set("n", "<leader>ch", function()
  vim.lsp.buf.hover()
end, { desc = "Code Hover" })

km.set("n", "<leader>cl", function()
  vim.diagnostic.open_float(0, { scope = "line" })
end, { desc = "Line Diagnostics" })

km.set({ "v", "n" }, "<leader>cn", function()
  vim.lsp.buf.rename()
end, { noremap = true, silent = true, desc = "Code Rename" })

km.set("n", "<leader><Down>", "<C-W><C-J>", { silent = true, desc = "Window Down" })
km.set("n", "<leader><Up>", "<C-W><C-K>", { silent = true, desc = "Window Up" })
km.set("n", "<leader><Right>", "<C-W><C-L>", { silent = true, desc = "Window Right" })
km.set("n", "<leader><Left>", "<C-W><C-H>", { silent = true, desc = "Window Left" })
km.set("n", "<leader>wr", "<C-W>R", { silent = true, desc = "Window Resize" })
km.set("n", "<leader>=", "<C-W>=", { silent = true, desc = "Window Equalise" })

-- Easier window switching with leader + Number
-- Creates mappings like this: km.set("n", "<leader>2", "2<C-W>w", { desc = "Move to Window 2" })
for i = 1, 4 do
  local lhs = "<leader>" .. i
  local rhs = i .. "<C-W>w"
  km.set("n", lhs, rhs, { desc = "Move to Window " .. i })
end


km.set("i", "<A-BS>", "<C-W>", { desc = "Option+BS deletes whole word" })



km.set("n", "<leader>xs", ":SearchSession<cr>", { desc = "Search Sessions" })

km.set(
  "v",
  "<leader>xp",
  ":'<,'> w !pandoc --no-highlight --wrap=none | pbcopy <cr>",
  { silent = true, desc = "Pandoc Export" }
)

km.set("n", "<leader>xn", ":let @+=@%<cr>", { desc = "Copy Buffer name and path" })

km.set("n", "<leader>xc", ":g/console.lo/d<cr>", { desc = "Remove console.log" })

km.set("v", "<leader>o", "zA", { desc = "Toggle Fold" })

km.set({ "n", "x" }, "[p", '<сmd>exe "put! " . v:register<cr>', { desc = "Paste Above" })
km.set({ "n", "x" }, "]p", '<сmd>exe "put "  . v:register<cr>', { desc = "Paste Below" })

-- This allows you to select, and paste over contents, without that pasted over contents going into the register, that means you can paste again without it inserting the thing you pasted over the last time
km.set("x", "p", function()
  return 'pgv"' .. vim.v.register .. "y"
end, { remap = false, expr = true })

km.set({ "n", "x" }, "<Bslash>", "<C-6>", { desc = "Alternate File" })


-- готово

-- общее
km.set({ "n" }, "<leader>ws", "<сmd>new<cr>", { desc = "Создать окно снизу" })
km.set({ "n" }, "<leader>wv", "<сmd>vnew<cr>", { desc = "Создать окно" })
km.set({ "n" }, "<leader>n", "<сmd>enew<cr>", { desc = "Новый файл" })
km.set({ "n" }, "<delete>", "<сmd>:w<cr>", { desc = "Сохранить файл" }) -- сохранение через Fn
km.set({ "n" }, "<leader>a", "ggVG<c-$>", { desc = "Выбрать все" })
km.set({ "n" }, "x", '"_x', { desc = "Удалить символ" })

-- полезное
km.set({ "n" }, "<leader>z", toggle_zen, { desc = "Zen Mode переключатель" })
km.set({ "n" }, "<esc>", escape, { silent = true, desc = "Удалить подсветку поиска, закрыть окна" })

-- Вертикальный скролл и в центр
km.set({ "n" }, "<c-d>", "<c-d>zz", { desc = 'Вертикальный скролл и в центр' })
km.set({ "n" }, "<c-u>", "<c-u>zz", { desc = 'Вертикальный скролл и в центр' })

-- Найти и в центр
km.set({ "n" }, "n", "nzzzv", { desc = "Найти и в центр" })
km.set({ "n" }, "n", "Nzzzv", { desc = "Найти и в центр" })

-- Перемещение курсора в INSERT режиме
km.set({ "i" }, "<c-b>", "<esc>^i", { desc = "в начало строки" })
km.set({ "i" }, "<c-e>", "<end>", { desc = "в конец строки" })
km.set({ "i" }, "<c-h>", "<left>", { desc = "влево" })
km.set({ "i" }, "<c-l>", "<right>", { desc = "вправо" })
km.set({ "i" }, "<c-j>", "<down>", { desc = "вниз" })
km.set({ "i" }, "<c-k>", "<up>", { desc = "вверх" })

-- Pounce
km.set({ "n", "v" }, "<leader>h", ":Pounce<cr>", { silent = true, desc = "Pounce" })
km.set({ "n" }, "<leader>H", ":PounceRepeat<cr>", { silent = true, desc = "Pounce повторить" })

-- Mini
-- Простое удаление буфера без потери разделения окна
km.set({ "n" }, "<leader>d", ":lua MiniBufremove.delete()<cr>", { silent = true, desc = "Mini удалить буфер" })

-- Gitsigns
-- специфичная для конкретного файла информация/инструменты git
km.set("n", "<leader>gb", ":Gitsigns toggle_current_line_blame<cr>", { desc = "Git toggle line blame" })
km.set("n", "<leader>gp", ":Gitsigns preview_hunk<cr>", { desc = "Git preview hunk" })
km.set("n", "<leader>gr", ":Gitsigns reset_hunk<cr>", { desc = "Get reset hunk" })
