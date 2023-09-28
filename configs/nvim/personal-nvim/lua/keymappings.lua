-- Your custom keybindings (replace with your own)
vim.g.mapleader = " "

-- normal mode
vim.api.nvim_set_keymap("n", "<leader>RR", "<cmd>so $NVIM_PATH/init.lua<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>q", ":q<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>Q", ":qa!<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<C-c>", "<Esc>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<C-s>", "<cmd>w<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>s", "<cmd>wa<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<C-d>", "<Esc>yyp", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>p", '"+p<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "q:", "", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<C-q>", "", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<C-t>", "<cmd>tabnew<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>1", "1gt", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>1", "1gt", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>2", "2gt", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>3", "3gt", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>4", "4gt", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>5", "5gt", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<C-f>", "za", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<C-_>", "gcc", { noremap = false, silent = true })
vim.api.nvim_set_keymap("n", "<leader>gg", "<cmd>LazyGit<CR>", { noremap = false, silent = true })

-- visual mode
vim.api.nvim_set_keymap("v", "<leader>y", '"+y<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap("v", "<C-d>", "ykpgv", { noremap = true, silent = true })
vim.api.nvim_set_keymap("v", "p", "pgvyw", { noremap = true, silent = true })
vim.api.nvim_set_keymap("v", "<leader>p", '"+p', { noremap = true, silent = true })
vim.api.nvim_set_keymap("v", "<C-_>", "gcgv", { noremap = false, silent = true })
vim.api.nvim_set_keymap("v", "<leader>Q", "<cmd>qa!<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("v", "<leader>gg", "<Esc><cmd>LazyGit<CR>", { noremap = false, silent = true })

vim.api.nvim_set_keymap("x", "*", "/\\<<C-R>=expand('<cword>')<CR>\\><CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("x", "<", "<gv", { noremap = true, silent = true })
vim.api.nvim_set_keymap("x", ">", ">gv", { noremap = true, silent = true })
vim.api.nvim_set_keymap("x", "K", ":move '<-2<CR>gv=gv", { noremap = true, silent = true })
vim.api.nvim_set_keymap("x", "J", ":move '>+1<CR>gv=gv", { noremap = true, silent = true })
vim.api.nvim_set_keymap("x", "<C-s>", "<Esc>:w<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("x", "<leader>q", "<Esc>:q<CR>", { noremap = true, silent = true })

-- insert mode
vim.api.nvim_set_keymap("i", "<C-s>", "<Esc>:w<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("i", "<Esc><leader>q", "<Esc>:q<CR>", { noremap = true, silent = true })

-- Telescope
vim.api.nvim_set_keymap("n", "<C-p>", "<cmd>Telescope find_files<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("v", "<C-p>", "<Esc><cmd>Telescope find_files<CR>", { noremap = true, silent = true })
-- find files hidden too
vim.api.nvim_set_keymap("n", "<C-P>", "<cmd>Telescope find_files hidden=true<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap(
	"v",
	"<C-P>",
	"<Esc><cmd>Telescope find_files hidden=true<CR>",
	{ noremap = true, silent = true }
)
-- word grep
vim.api.nvim_set_keymap("n", "<leader>w", "<cmd>Telescope live_grep<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("v", "<leader>w", "<Esc><cmd>Telescope live_grep<CR>", { noremap = true, silent = true })

vim.api.nvim_set_keymap(
	"n",
	"<leader>?",
	"<cmd>Telescope current_buffer_fuzzy_find<CR>",
	{ noremap = true, silent = true }
)
vim.api.nvim_set_keymap(
	"v",
	"<leader>?",
	"<Esc><cmd>Telescope current_buffer_fuzzy_find<CR>",
	{ noremap = true, silent = true }
)
