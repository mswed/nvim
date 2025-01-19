return {
  {
    "frazrepo/vim-rainbow",
    lazy = false,
    config = function()
      -- Enable rainbow brackets by default
      vim.g.rainbow_active = 1
    end,
  },
}
