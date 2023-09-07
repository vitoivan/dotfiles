vim.g.copilot_no_tab_map = true
vim.api.nvim_set_keymap("i", "<C-l>", 'copilot#Accept("<CR>")', { silent = true, expr = true })

return {
  mappings = {
    n = {
      ["<C-c>"] = { "<Esc>" },
      ["<leader>s"] = { "<cmd>wa<CR>" },
      ["<C-d>"] = { "yyp" },
      ["<C-n>"] = { "<cmd>Neotree toggle<CR>" },
      ["<leader>p"] = { '"+p<CR>' },
      ["<C-f>"] = { "<cmd>EslintFixAll<CR>" },
      ["q:"] = { "" },
      ["<C-q>"] = { "" },
      ["<C-t>"] = { "<cmd>tabnew<CR>" },
      ["<leader>1"] = { "1gt" },
      ["<leader>2"] = { "2gt" },
      ["<leader>3"] = { "3gt" },
      ["<leader>4"] = { "4gt" },
      ["<leader>5"] = { "5gt" },
      ["<leader>6"] = { "6gt" },
      ["<leader>7"] = { "7gt" },
      ["<leader>."] = { "<cmd>tabn<CR>" },
      ["<leader>,"] = { "<cmd>tabp<CR>" },
    },
    v = {
      ["<leader>y"] = { '"+y<CR>' },
    },
    x = {
      ["*"] = { "/\\<<C-R>=expand('<cword>')<CR>\\><CR>" },
      ["<"] = { "<gv" },
      [">"] = { ">gv" },
      ["K"] = { ":move '<-2<CR>gv-gv" },
      ["J"] = { ":move '>+1<CR>gv-gv" },
    },
  },
  lsp = {
    config = {
      tsserver = function(opts)
        opts.root_dir = require("lspconfig.util").root_pattern "package.json"
        return opts
      end,
      eslint = function(opts)
        opts.root_dir = require("lspconfig.util").root_pattern("package.json", ".eslintrc.json", ".eslintrc.js")
        opts.silent = true
        return opts
      end,
      clangd = {
        capabilities = {
          offsetEncoding = "utf-8",
        },
      },
    },
    formatting = {
      filter = function(client)
        if client.name == "tsserver" then return false end
        -- enable all other clients
        return true
      end,
    },
  },
  plugins = {
    {
      "github/copilot.vim",
      event = "BufEnter",
      autoStart = true,
    },
    {
      "f-person/git-blame.nvim",
      event = "BufEnter",
    },
  },
}
