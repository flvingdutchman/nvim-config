return {
  {
    "lewis6991/gitsigns.nvim",

    opts = {
      signs = {
        add = { text = "+" },
        change = { text = "~" },
        delete = { text = "_" },
        topdelete = { text = "‾" },
        changedelete = { text = "~" },
        untracked = { text = "┆" },
      },

      current_line_blame = false,
    },

    config = function(_, opts)
      local gitsigns = require("gitsigns")

      gitsigns.setup(opts)

      vim.keymap.set("n", "]c", function()
        gitsigns.nav_hunk("next")
      end, { desc = "Next git change" })

      vim.keymap.set("n", "[c", function()
        gitsigns.nav_hunk("prev")
      end, { desc = "Previous git change" })

      vim.keymap.set("n", "<leader>gp", gitsigns.preview_hunk, {
        desc = "Preview git hunk",
      })

      vim.keymap.set("n", "<leader>gb", gitsigns.blame_line, {
        desc = "Git blame line",
      })

      vim.keymap.set("n", "<leader>gr", gitsigns.reset_hunk, {
        desc = "Reset git hunk",
      })
    end,
  },
}
