return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        -- Configure html LSP for django templates
        html = {
          filetypes = { "html", "htmldjango" },
          init_options = {
            provideFormatter = true,
            configurationSection = { "html", "css", "javascript" },
            embeddedLanguages = {
              css = true,
              javascript = true,
            },
          },
        },
        -- Add emmet language server
        emmet_ls = {
          filetypes = { "html", "htmldjango", "css", "javascript", "javascriptreact", "typescript", "typescriptreact" },
          init_options = {
            html = {
              options = {
                -- For possible options, see: https://github.com/emmetio/emmet/blob/master/src/config.ts#L79-L267
                ["bem.enabled"] = true,
              },
            },
          },
        },
      },
    },
  },
}
