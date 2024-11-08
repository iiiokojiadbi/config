vim.keymap.set("n", ";", ":", { desc = "general войти в COMMAND" })

vim.keymap.set("n", "x", '"_x', { desc = "general удалить символ" })
vim.keymap.set("v", "<", "<gv", { desc = "general подвинуть строку без выхода из режима" })
vim.keymap.set("v", ">", ">gv", { desc = "general подвинуть строку без выхода из режима" })
vim.keymap.set("v", "p", '"_dP', { desc = "general вставить без замены" })
vim.keymap.set("n", "|", ":vsplit<CR>", { desc = "Вертикальная вкладка" })
vim.keymap.set("n", "\\", ":split<CR>", { desc = "Горизонтальная вкладка" })
