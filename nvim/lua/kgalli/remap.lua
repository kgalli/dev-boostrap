-- Open up netrw (builtin file explorer)
vim.keymap.set("n", "<leader>fe", vim.cmd.Ex)

-- Allow moving highlighted text around
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Pasting this way will not overwrite the current paste
-- buffer with what is currently highlighted
vim.keymap.set("x", "<leader>p", [["_dP]])

--
-- Yank and paste into system clip board
vim.keymap.set({"n", "v"}, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

-- Deleting in void register
vim.keymap.set({"n", "v"}, "<leader>d", [["_d]])

-- Set Q (quit or record macros) to  no operation
vim.keymap.set("n", "Q", "<nop>")

--vim.keymap.set("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>")
--vim.keymap.set("n", "<leader>f", vim.lsp.buf.format)

-- Quick fix navigation
vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")
