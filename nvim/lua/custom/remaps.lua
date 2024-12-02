vim.keymap.set("n", "<Space>r", "<CMD>:lua LspRename()<CR>", { desc = "Rename the current symbol" })
vim.keymap.set("n", "<Space>e", "<CMD>Oil<CR>", { desc = "Open parent directory" })
vim.keymap.set("n", "<Space>E", "<CMD>Oil --float<CR>", { desc = "Open parent directory" })

vim.keymap.set("n", "<leader>o", "o<Esc>", { desc = "Create empty line below" })
vim.keymap.set("n", "<leader>O", "O<Esc>", { desc = "Create empty line above" })

vim.keymap.set("n", "<leader>j", "<CMD>cnext<CR>zz", { desc = "Forward qfix list" })
vim.keymap.set("n", "<leader>k", "<CMD>cprev<CR>zz", { desc = "Backward qfix list" })

vim.keymap.set("n", "<leader>fx", "<CMD>!chmod +x %<CR>", { desc = "Add exec permissions" })

-- Navigating examples/references
vim.keymap.set(
  "n",
  "<leader>m1",
  "<CMD>vsp /home/chijioke-akaolisa-osadebe/devchallenges/penpot/penpot-plugins-samples/create-text/src/main.ts<CR>zz",
  { desc = "Go to reference folder 1" }
)
vim.keymap.set(
  "n",
  "<leader>m2",
  "<CMD>vsp /home/chijioke-akaolisa-osadebe/archives/Repod/<CR>zz",
  { desc = "Go to reference folder 1" }
)

-- The Primeagen
vim.api.nvim_set_keymap("n", "<C-d>", "<C-d>zz", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<C-u>", "<C-u>zz", { noremap = true, silent = true })

-- live rename stuff
local live_rename = require("live-rename")

-- the following are equivalent
vim.keymap.set("n", "<leader>r", live_rename.map({ text = "", insert = true }), { desc = "LSP rename" })
