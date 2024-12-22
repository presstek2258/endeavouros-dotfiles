-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

vim.keymap.set("n", "<leader>jj", function()
  -- press o in normal mode 30 times
  for _ = 1, 30 do
    vim.api.nvim_command("normal! o")
  end

  -- jump 29 lines back up and then enter Insert mode
  vim.api.nvim_command("normal! 29k")
  vim.api.nvim_command("startinsert")
end, { desc = "Insert 30 new lines and jump back up" })
