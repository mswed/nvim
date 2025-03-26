return {
  "hrsh7th/nvim-cmp",
  opts = function(_, opts)
    -- Fix the cmdline sources format
    opts.cmdline = opts.cmdline or {}
    opts.cmdline.sources = opts.sources and opts.sources.cmdline or {}

    -- Remove the old format
    if opts.sources then
      opts.sources.cmdline = nil
    end

    return opts
  end,
}
