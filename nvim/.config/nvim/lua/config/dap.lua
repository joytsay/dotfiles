-- require("dap-python").setup("/nfs/home/joy.tsay/miniconda3/bin/python")
-- print("Before")
-- print(vim.inspect(require("dap").configurations.python))

table.insert(require("dap").configurations.python, {
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

-- print("After")
-- print(vim.inspect(require("dap").configurations.python))
