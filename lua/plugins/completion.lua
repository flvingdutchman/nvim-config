return {
  {
    "saghen/blink.cmp",
    version = "1.*",

    opts = {
      keymap = {
        preset = "default",

        ["<Tab>"] = { "select_next", "fallback" },
        ["<S-Tab>"] = { "select_prev", "fallback" },
        ["<CR>"] = { "accept", "fallback" },
      },

      completion = {
        documentation = {
          auto_show = true,
        },
      },

      sources = {
        default = {
          "lsp",
          "path",
          "buffer",
        },
      },
    },

    opts_extend = {
      "sources.default",
    },
  },
}
