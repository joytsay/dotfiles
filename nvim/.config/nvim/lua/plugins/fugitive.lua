return {
  {
    "tpope/vim-fugitive",
    event = "VeryLazy",
    config = function()
      vim.schedule(function()
        vim.keymap.set("n", "<leader>gjb", "<cmd>Git blame<cr>", { desc = "Git blame" })
        vim.keymap.set("n", "<leader>gjC", "<cmd>Gdiffsplit!<cr>", { desc = "Conflict 3-way split" })
        vim.keymap.set("n", "<leader>gjd", "<cmd>Gdiff<cr>", { desc = "Gdiff" })
        vim.keymap.set("n", "<leader>gjD", "<cmd>Git log --stat -p<cr>", { desc = "Git log --stat -p" })
        vim.keymap.set("n", "<leader>gje", ":Gedit ", { desc = "Gedit" }) -- Gedit can take commit objects
        vim.keymap.set( "n","<leader>gjl", [[<cmd>Git log --format="%h [%ad] [%an] %s"<cr>]], { desc = "Git log oneline" })
        vim.keymap.set("n", "<leader>gjL", "<cmd>Git log<cr>", { desc = "Git log" })
        vim.keymap.set("n", "<leader>gjg", "<cmd>G<cr>", { desc = "G" })
        vim.keymap.set("n", "<leader>gjP", "<cmd>Git pull", { desc = "Git pull" })
        vim.keymap.set( "n","<leader>gjp", "<cmd>Git -c push.default=current push<cr>", { desc = "Git -c push.default=current push" })
        vim.keymap.set("n", "<leader>gjr", "<cmd>Gread<cr>", { desc = "Gread" })
        vim.keymap.set("n", "<leader>gjw", "<cmd>Gwrite<cr>", { desc = "Gwrite" })
        vim.keymap.set("n", "<leader>gju", "<cmd>diffupdate<cr>", { desc = "diffupdate" })
        vim.keymap.set("n", "<leader>gj2", "<cmd>diffget //2<cr>", { desc = "diffget //2" })
        vim.keymap.set("n", "<leader>gj3", "<cmd>diffget //3<cr>", { desc = "diffget //3" })
      end)
    end,
  },
}
