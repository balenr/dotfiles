return {
  {
    "wintermute-cell/gitignore.nvim",
    config = function()
      require("gitignore")
      vim.keymap.set("n", "<leader>gi", "<cmd>Gitignore<CR>", { desc = "Add Git[i]gnore" })
    end,
  },
}
