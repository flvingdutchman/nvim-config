return {
  {
    "neovim/nvim-lspconfig",
    dependencies = {
      "saghen/blink.cmp",
    },

    config = function()
      local capabilities = require("blink.cmp").get_lsp_capabilities()

      vim.lsp.config("ts_ls", {
        capabilities = capabilities,
      })

      vim.lsp.config("eslint", {
        capabilities = capabilities,
      })

      vim.lsp.enable("ts_ls")
      vim.lsp.enable("eslint")

      vim.api.nvim_create_autocmd("LspAttach", {
        callback = function(event)
          local opts = { buffer = event.buf }

          vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
          vim.keymap.set("n", "gr", function()
            require("telescope.builtin").lsp_references()
          end, opts)
          vim.keymap.set("n", "K", function()
            vim.lsp.buf.hover({
              border = "rounded",
            })
          end, opts)

          vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, opts)
          vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, opts)

          vim.keymap.set("n", "<leader>ds", function()
            require("telescope.builtin").lsp_document_symbols()
          end, opts)

          vim.keymap.set("n", "<leader>ws", function()
            require("telescope.builtin").lsp_workspace_symbols()
          end, opts)
        end,
      })
    end,
  },
}
