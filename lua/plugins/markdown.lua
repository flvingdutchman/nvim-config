return {
  {
    "MeanderingProgrammer/render-markdown.nvim",

    ft = { "markdown" },

    dependencies = {
      "nvim-treesitter/nvim-treesitter",
      "nvim-tree/nvim-web-devicons",
    },

    opts = {
      completions = {
        lsp = {
          enabled = true,
        },
      },
    },

    keys = {
      {
        "<leader>mp",
        "<cmd>RenderMarkdown toggle<CR>",
        desc = "Toggle Markdown rendering",
      },
    },
  },
}
