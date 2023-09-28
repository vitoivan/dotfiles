return {
  mappings = {
    n = {
      ["<C-c>"] = { "<Esc>" },
      ["<leader>s"] = { "<cmd>wa<CR>" },
      ["<C-d>"] = { "yyp" },
      ["<C-n>"] = { "<cmd>Neotree toggle<CR>" },
      ["<leader>p"] = { '"+p<CR>' },
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
      ["<C-d>"] = { "ykpgv" },
      ["p"] = { "pgvyw" },
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
      "f-person/git-blame.nvim",
      event = "BufEnter",
    },
    {
      "rebelot/heirline.nvim",
      opts = function(_, opts)
        local status = require "astronvim.utils.status"

        opts.winbar = { -- create custom winbar
          -- store the current buffer number
          init = function(self) self.bufnr = vim.api.nvim_get_current_buf() end,
          fallthrough = false, -- pick the correct winbar based on condition
          -- inactive winbar
          {
            condition = function() return not status.condition.is_active() end,
            -- show the path to the file relative to the working directory
            status.component.separated_path { path_func = status.provider.filename { modify = ":.:h" } },
            -- add the file name and icon
            status.component.file_info {
              file_icon = { hl = status.hl.file_icon "winbar", padding = { left = 0 } },
              file_modified = false,
              file_read_only = false,
              hl = status.hl.get_attributes("winbarnc", true),
              surround = false,
              update = "BufEnter",
            },
          },
          -- active winbar
          {
            -- show the path to the file relative to the working directory
            status.component.separated_path { path_func = status.provider.filename { modify = ":.:h" } },
            -- add the file name and icon
            status.component.file_info { -- add file_info to breadcrumbs
              file_icon = { hl = status.hl.filetype_color, padding = { left = 0 } },
              file_modified = false,
              file_read_only = false,
              hl = status.hl.get_attributes("winbar", true),
              surround = false,
              update = "BufEnter",
            },
            -- show the breadcrumbs
            status.component.breadcrumbs {
              icon = { hl = true },
              hl = status.hl.get_attributes("winbar", true),
              prefix = true,
              padding = { left = 0 },
            },
          },
        }

        return opts
      end,
    },
    {
      "Exafunction/codeium.vim",
      event = "BufEnter",
      config = function()
        -- Change '<C-g>' here to any keycode you like.
        vim.keymap.set("i", "<C-l>", function() return vim.fn["codeium#Accept"]() end, { expr = true })
        vim.keymap.set("i", "<c-;>", function() return vim.fn["codeium#CycleCompletions"](1) end, { expr = true })
        vim.keymap.set("i", "<c-,>", function() return vim.fn["codeium#CycleCompletions"](-1) end, { expr = true })
        vim.keymap.set("i", "<c-x>", function() return vim.fn["codeium#Clear"]() end, { expr = true })
      end,
    },
  },
}
