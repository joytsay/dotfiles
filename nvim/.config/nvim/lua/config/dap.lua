return {
  "mfussenegger/nvim-dap",
  config = function()
    local dap = require("dap")

    -- Ensure the python config table exists
    dap.configurations.python = dap.configurations.python or {}

    table.insert(dap.configurations.python, {
      type = "python",
      request = "attach",
      name = "Python Remote Container Attach",
      host = "localhost",
      port = 5678,
      mode = "remote",
      cwd = vim.fn.getcwd(),
      pathMappings = {
        {
          localRoot = function()
            return vim.fn.input("Local code folder > ", vim.fn.getcwd(), "file")
          end,
          remoteRoot = function()
            return vim.fn.input("Container code folder > ", ".", "file")
          end,
        },
      },
    })
  end,
}
