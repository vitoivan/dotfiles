return {
    "nvim-neo-tree/neo-tree.nvim",
    cmd = "Neotree",
    deactivate = function()
        vim.cmd([[Neotree close]])
    end,
    event = "VimEnter", -- loads neotree when use "vim ."
    branch = "v3.x",
    dependencies = {
        "nvim-lua/plenary.nvim",
        "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
        "MunifTanjim/nui.nvim",
    },
    keys = {
        {
          "<C-n>",
          "<cmd>Neotree toggle<CR>",
          desc = "Explorer NeoTree (root dir)",
        },
    },
    opts = {
        filesystem = {
              bind_to_cwd = false,
              follow_current_file = {
                  enabled = true,
              },
              use_libuv_file_watcher = true,
        },
        window = {
          position = "current",
          width = 40,
          mappings = {
            ["h"] = "close_node",
            ["l"] = "open",
          },
        },
    }

}
