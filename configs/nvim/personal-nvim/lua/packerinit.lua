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
	use("folke/neodev.nvim")

	-- use(require("plugins.lsp"))

	use({
		"williamboman/mason.nvim",
		"williamboman/mason-lspconfig.nvim",
		"neovim/nvim-lspconfig",
	})

	use({
		"hrsh7th/nvim-cmp",
		requires = {
			-- snippet engine
			"L3MON4D3/LuaSnip",
			"saadparwaiz1/cmp_luasnip",

			-- autocompletion
			"hrsh7th/cmp-nvim-lsp",

			-- some snippets
			"rafamadriz/friendly-snippets",
		},
	})

	use({
		"jay-babu/mason-null-ls.nvim",
		event = { "BufReadPre", "BufNewFile" },
		requires = {
			"williamboman/mason.nvim",
			"jose-elias-alvarez/null-ls.nvim",
		},

		config = function()
			local augroup = vim.api.nvim_create_augroup("LspFormatting", {})

			local null_ls = require("null-ls")
			null_ls.setup({
				on_attach = function(client, bufnr)
					if client.supports_method("textDocument/formatting") then
						vim.api.nvim_clear_autocmds({ group = augroup, buffer = bufnr })
						vim.api.nvim_create_autocmd("BufWritePre", {
							group = augroup,
							buffer = bufnr,
							callback = function()
								-- on 0.8, you should use vim.lsp.buf.format({ bufnr = bufnr }) instead
								-- on later neovim version, you should use vim.lsp.buf.format({ async = false }) instead
								vim.lsp.buf.format({
									async = true,
									bufnr = bufnr,
									filter = function(client)
										return client.name == "null-ls"
									end,
								})
							end,
						})
					end
				end,
			})
			require("mason-null-ls").setup({
				handlers = {},
			})
		end,
	})

	require("neodev").setup({})
	require("config.lsp")
end)
