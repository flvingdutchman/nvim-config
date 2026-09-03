return {
  {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",

    dependencies = {
      "nvim-lua/plenary.nvim",
      "MunifTanjim/nui.nvim",
      "nvim-tree/nvim-web-devicons",
    },

    opts = {
      close_if_last_window = true,

      filesystem = {
        follow_current_file = {
          enabled = true,
        },

        filtered_items = {
          hide_dotfiles = false,
          hide_gitignored = true,
        },
      },

      window = {
        width = 34,
      },
    },

    keys = {
      {
        "<leader>e",
        "<cmd>Neotree toggle reveal<CR>",
        desc = "Toggle file tree",
      },
    },
  },
}
