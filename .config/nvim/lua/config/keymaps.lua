-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

vim.keymap.set("n", "<leader>jj", function()
  -- press o in normal mode 12 times
  for _ = 1, 12 do
    vim.api.nvim_command("normal! o")
  end

  -- jump 11 lines back up and then enter Insert mode
  vim.api.nvim_command("normal! 11k")
  vim.api.nvim_command("startinsert")
end, { desc = "Insert 12 new lines and jump back up" })
