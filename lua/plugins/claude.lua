return {
  {
    "coder/claudecode.nvim",

    dependencies = {
      "folke/snacks.nvim",
    },

    opts = {},

    keys = {
      {
        "<leader>ac",
        "<cmd>ClaudeCode<cr>",
        desc = "Toggle Claude",
      },

      {
        "<leader>as",
        "<cmd>ClaudeCodeSend<cr>",
        mode = "v",
        desc = "Send selection to Claude",
      },

      {
        "<leader>as",
        "<cmd>ClaudeCodeTreeAdd<cr>",
        ft = { "neo-tree" },
        desc = "Add file to Claude",
      },

      {
        "<leader>ar",
        "<cmd>ClaudeCode --resume<cr>",
        desc = "Resume Claude session",
      },

      {
        "<leader>aC",
        "<cmd>ClaudeCode --continue<cr>",
        desc = "Continue last Claude session",
      },

      {
        "<leader>aa",
        "<cmd>ClaudeCode agents<cr>",
        desc = "Show ClaudeCode Agents"
      }
    },
  },
}
