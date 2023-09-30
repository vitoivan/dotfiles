-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd([[packadd packer.nvim]])

return require("packer").startup(function(use)
	use("wbthomason/packer.nvim")

	use(require("plugins.neotree"))
	use(require("plugins.telescope"))
	use(require("plugins.colors"))
	use(require("plugins.transparent"))
	use(require("plugins.treesitter"))
	use(require("plugins.lua-line"))
	use(require("plugins.icons"))
	use(require("plugins.gitsigns"))
	use(require("plugins.lazygit"))
	use(require("plugins.comment"))
	use(require("plugins.codeium"))
	use(require("plugins.lsp"))

	require("config.lsp-zero")
end)
