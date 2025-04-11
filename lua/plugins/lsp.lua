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
        -- Add YAML language server
        yamlls = {
          settings = {
            yaml = {
              format = { enable = false }, -- Disable LSP formatting in favor of yamlfmt
              validate = true,
              completion = true,
              schemaStore = {
                enable = true,
                url = "https://www.schemastore.org/api/json/catalog.json",
              },
            },
          },
        },
        pyright = {
          settings = {
            python = {
              analysis = {
                extraPaths = { ".", "../templator", "../flow" },
                useLibraryCodeForTypes = true,
                typeCheckingMode = "basic",
              },
            },
          },
        },
      },
    },
  },
}
