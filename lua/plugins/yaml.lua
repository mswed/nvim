return {
  {
    "stevearc/conform.nvim",
    opts = function(_, opts)
      -- Add yamlfmt
      opts.formatters = opts.formatters or {}
      opts.formatters.yamlfmt = {
        -- Explicitly tell conform where to find yamlfmt
        command = vim.fn.stdpath("data") .. "/mason/bin/yamlfmt",
        -- Preserve blank lines in YAML by passing formatter config
        args = { "-formatter", "preserve_blank_lines=true" }
      }

      -- Configure for YAML files
      opts.formatters_by_ft = opts.formatters_by_ft or {}
      opts.formatters_by_ft.yaml = { "yamlfmt" }

      -- Increase timeout if needed
      if opts.format then
        opts.format.timeout_ms = 1000 -- default is 500ms
      end
    end,
  },

  -- Make sure the YAML language server doesn't interfere with formatting
  {
    "neovim/nvim-lspconfig",
    opts = function(_, opts)
      if opts.servers and opts.servers.yamlls then
        opts.servers.yamlls.settings = opts.servers.yamlls.settings or {}
        opts.servers.yamlls.settings.yaml = opts.servers.yamlls.settings.yaml or {}
        opts.servers.yamlls.settings.yaml.format = { enable = true, proseWrap = "preserve" }
      end
    end,
  },
}
