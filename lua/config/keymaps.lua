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

-- Scrolling: Keep cursor in the middle
map("n", "<C-d>", "<C-d>zz", { desc = "Scroll down and center" })
map("n", "<C-u>", "<C-u>zz", { desc = "Scroll up and center" })

-- Search: Keep search results centered
map("n", "n", "nzzzv", { desc = "Next search result (centered)" })
map("n", "N", "Nzzzv", { desc = "Prev search result (centered)" })

-- Jumps: Center after jumping to next/previous items
map("n", "}", "}zz", { desc = "Jump to next paragraph and center" })
map("n", "{", "{zz", { desc = "Jump to prev paragraph and center" })
