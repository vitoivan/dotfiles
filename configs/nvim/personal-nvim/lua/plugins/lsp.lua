return {
	{ "VonHeikemen/lsp-zero.nvim", branch = "v3.x" },
	{ "lukas-reineke/lsp-format.nvim" },
	{
        event= "BufWinEnter",
		"jay-babu/mason-null-ls.nvim",
		cmd = { "NullLsInstall", "NullLsUninstall" },
		opts = { handlers = {} },
	},
	{
		"jose-elias-alvarez/null-ls.nvim",
		config = function()
			require("null-ls").setup()
		end,
		dependencies = {
			{ "nvim-lua/plenary.nvim" },
		},
	},
	{ "williamboman/mason.nvim" },
	{ "williamboman/mason-lspconfig.nvim" },
	{ "neovim/nvim-lspconfig" },
	{ "hrsh7th/cmp-nvim-lsp" },
	{ "hrsh7th/nvim-cmp" },
	{ "L3MON4D3/LuaSnip" },
}
