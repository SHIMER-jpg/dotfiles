-- local autocmd = vim.api.nvim_create_autocmd

-- Auto resize panes when resizing nvim window
-- autocmd("VimResized", {
--   pattern = "*",
--   command = "tabdo wincmd =",
-- }print(
--
--
--
-- vim.o.shell='C:\\Windows\\System32\\cmd.exe \\K "powershell"'
vim.o.relativenumber = true
vim.o.number = true

vim.keymap.set("i", "<esc>", "<NOP>")
vim.keymap.set("i", "<Right>", "<NOP>")
vim.keymap.set("i", "<Left>", "<NOP>")
vim.keymap.set("i", "<Up>", "<NOP>")
vim.keymap.set("i", "<Down>", "<NOP>")

-- local notify = vim.notify
-- vim.notify = function(msg, ...
--   if msg:match "warning: multiple different client offset_encodings" then
--     return
--   end
--
--   notify(msg, ...
-- end
--
-- local new_cmd = vim.api.nvim_create_user_command
-- new_cmd("VS", function(
--   require("custom.vscodeTheme".load(
-- end, {}
