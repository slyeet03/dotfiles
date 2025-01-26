-- set leader key to space
vim.g.mapleader = " "

local keymap = vim.keymap -- for conciseness

-- General Keymaps -------------------

-- use jk to exit insert mode
keymap.set("i", "jk", "<ESC>", { desc = "Exit insert mode with jk" })

-- increment/decrement numbers
keymap.set("n", "<leader>+", "<C-a>", { desc = "Increment number" }) -- increment
keymap.set("n", "<leader>-", "<C-x>", { desc = "Decrement number" }) -- decrement

-- window management
keymap.set("n", "<leader>sv", ": vsplit | edit ", { desc = "Split window vertically" }) -- split window vertically
keymap.set("n", "<leader>sh", ": split | edit ", { desc = "Split window horizontally" }) -- split window horizontally
keymap.set("n", "<leader>se", "<C-w>=", { desc = "Make splits equal size" }) -- make split windows equal width & height
keymap.set("n", "<leader>sq", "<C-w>w", { desc = "Jump between split windows" }) -- jump between split windows
keymap.set("n", "<leader>sx", "<cmd>close<CR>", { desc = "Close current split" }) -- close current split window
keymap.set("n", "<leader><Tab>", ": Chowcho<CR>", { desc = "Choose what window to jump too" })

keymap.set("n", "<leader>n", "<cmd>tabnew<CR>", { desc = "Open new tab" }) -- open new tab
keymap.set("n", "<leader>x", "<cmd>tabclose<CR>", { desc = "Close current tab" }) -- close current tab
keymap.set("n", "<leader><Right>", "<cmd>tabn<CR>", { desc = "Go to next tab" }) --  go to next tab
keymap.set("n", "<leader><Left>", "<cmd>tabp<CR>", { desc = "Go to previous tab" }) --  go to previous tab
keymap.set("n", "<leader>!f", "<cmd>tabnew %<CR>", { desc = "Open current buffer in new tab" }) --  move current buffer to new tab

-- terminal
keymap.set(
	"n",
	"<leader>th",
	":ToggleTerm size=7  direction=horizontal<CR>",
	{ desc = "Open terminal in horizontal split window" }
)
keymap.set("n", "<leader>ts", ":TermSelect<CR>", { desc = "Select which terminal to open" })
keymap.set("n", "<leader>tb", ":ToggleTerm direction=tab<CR>", { desc = "Open terminal in another tab" })
keymap.set("n", "<leader>tf", ":ToggleTerm direction=float<CR>", { desc = "Open terminal in float mode" })
keymap.set("t", "<Esc><Esc>", "<C-\\><C-n>", { desc = "Get out of insert modc" })

-- window resize
keymap.set("n", "=", "<cmd>vertical resize +5<CR>") -- make the window biger vertically
keymap.set("n", "-", "<cmd>vertical resize -5<CR>") -- make the window smaller vertically
keymap.set("n", "+", "<cmd>horizontal resize +2<CR>") -- make the window bigger horizontally by pressing shift and =
keymap.set("n", "_", "<cmd>horizontal resize -2<CR>") -- make the window smaller horizontally by pressing shift and -

-- file management
keymap.set("n", "<leader>sa", ":wa<CR>", { desc = "Save all files" })
keymap.set("n", "<leader>sc", ":w<CR>", { desc = "Save current file" })

-- find and replace
keymap.set("n", "<leader>fi", ":%s/", { desc = "Substitute" })
