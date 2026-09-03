return {
  {
    "Mofiqul/vscode.nvim",
    lazy = false,
    priority = 1000,

    config = function()
      vim.o.background = "dark"

      require("vscode").setup({
        transparent = false,
        italic_comments = true,
      })

      vim.cmd.colorscheme("vscode")
    end,
  },
}
