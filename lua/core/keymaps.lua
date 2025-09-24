-- Set <space> as the leader key
-- See `:help mapleader`
--  NOTE: Must happen before plugins are loaded (otherwise wrong leader will be used)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Lazy
vim.keymap.set("n", "<leader>l", ":Lazy<CR>")

-- Reload configuration
vim.keymap.set("n", "<leader>r", ":source ~/.config/nvim/init.lua<CR>:echo 'Configuration reloaded!'<CR>")

-- File Tree
vim.keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>")
vim.keymap.set("n", "<leader>v", ":NvimTreeFocus<CR>")

-- Telescope (Global Search)
vim.keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>")
vim.keymap.set("n", "<leader>fg", "<cmd>Telescope live_grep<cr>")

-- LSP
vim.keymap.set("n", "gd", vim.lsp.buf.definition)
vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action)

-- Bufferline
vim.keymap.set("n", "<leader>t1", "<cmd>BufferLineGoToBuffer 1<cr>")
vim.keymap.set("n", "<leader>t2", "<cmd>BufferLineGoToBuffer 2<cr>")
vim.keymap.set("n", "<leader>t3", "<cmd>BufferLineGoToBuffer 3<cr>")
vim.keymap.set("n", "<leader>t4", "<cmd>BufferLineGoToBuffer 4<cr>")
vim.keymap.set("n", "<leader>t5", "<cmd>BufferLineGoToBuffer 5<cr>")
vim.keymap.set("n", "<leader>t6", "<cmd>BufferLineGoToBuffer 6<cr>")
vim.keymap.set("n", "<leader>t7", "<cmd>BufferLineGoToBuffer 7<cr>")
vim.keymap.set("n", "<leader>t8", "<cmd>BufferLineGoToBuffer 8<cr>")
vim.keymap.set("n", "<leader>t9", "<cmd>BufferLineGoToBuffer 9<cr>")
vim.keymap.set("n", "<leader>t0", "<cmd>BufferLineGoToBuffer 10<cr>")
vim.keymap.set("n", "<leader>q", "<cmd>BufferLinePick<cr>")
vim.keymap.set("n", "<leader>bd", "<cmd>BufferLinePickClose<cr>")
vim.keymap.set("n", "<leader>bp", "<cmd>BufferLineCyclePrev<cr>")
vim.keymap.set("n", "<leader>bn", "<cmd>BufferLineCycleNext<cr>")
vim.keymap.set("n", "<leader>bl", "<cmd>BufferLineCloseLeft<cr>")
vim.keymap.set("n", "<leader>br", "<cmd>BufferLineCloseRight<cr>")

-- Keybinds to make split navigation easier.
--  Use CTRL+<hjkl> to switch between windows
--
--  See `:help wincmd` for a list of all window commands
vim.keymap.set("n", "<C-h>", "<C-w><C-h>", { desc = "Move focus to the left window" })
vim.keymap.set("n", "<C-l>", "<C-w><C-l>", { desc = "Move focus to the right window" })
vim.keymap.set("n", "<C-j>", "<C-w><C-j>", { desc = "Move focus to the lower window" })
vim.keymap.set("n", "<C-k>", "<C-w><C-k>", { desc = "Move focus to the upper window" })
