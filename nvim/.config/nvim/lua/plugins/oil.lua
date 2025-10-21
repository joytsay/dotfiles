return {
  "stevearc/oil.nvim",
  ---@module 'oil'
  ---@type oil.SetupOpts
  keys = {
    {
      "<leader>o",
      function()
        require("oil").toggle_float(".")
      end,
      desc = "Explorer Oil (cwd)",
    },
  },
  opts = {
    default_file_explorer = true,
    view_options = {
      show_hidden = true,
    },
  },
  -- Optional dependencies
  -- dependencies = { { "echasnovski/mini.icons", opts = {} } },
  dependencies = { "nvim-tree/nvim-web-devicons" }, -- use if you prefer nvim-web-devicons
  -- Lazy loading is not recommended because it is very tricky to make it work correctly in all situations.
}
