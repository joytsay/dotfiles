return {
  "nvim-lualine/lualine.nvim",
  opts = function(_, opts)
    table.remove(opts.sections.lualine_c)
    table.insert(opts.sections.lualine_c, {
      "filename",
      path = 3,
    })
  end,
}
