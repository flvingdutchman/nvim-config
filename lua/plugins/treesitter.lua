return {
  {
    "nvim-treesitter/nvim-treesitter",
    lazy = false,
    build = ":TSUpdate",

    config = function()
      local treesitter = require("nvim-treesitter")

      treesitter.install({
        "lua",
        "javascript",
        "typescript",
        "tsx",
        "json",
        "html",
        "css",
      })

      vim.api.nvim_create_autocmd("FileType", {
        pattern = {
          "lua",
          "javascript",
          "javascriptreact",
          "typescript",
          "typescriptreact",
          "json",
          "html",
          "css",
        },

        callback = function()
          vim.treesitter.start()
        end,
      })
    end,
  },
}
