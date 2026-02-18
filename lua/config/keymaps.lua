-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local map = vim.keymap.set

-- Select all text
map("n", "<leader>a", "ggVG", { desc = "Select all" })

-- Get file usages
vim.keymap.set("n", "<leader>fU", function()
  local filename = vim.fn.expand("%:t:r") -- gets filename without extension
  require("grug-far").open({
    prefills = {
      search = filename
    }
  })
end, { desc = "Find current file usages (GrugFar)" })
