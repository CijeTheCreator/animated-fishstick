vim.keymap.set("n", "<Space>r", "<CMD>:lua LspRename()<CR>", { desc = "Rename the current symbol" })
vim.keymap.set("n", "<Space>e", "<CMD>Oil<CR>", { desc = "Open parent directory" })
vim.keymap.set("n", "<Space>E", "<CMD>Oil --float<CR>", { desc = "Open parent directory" })

-- live rename stuff
local live_rename = require("live-rename")

-- the following are equivalent
vim.keymap.set("n", "<leader>r", live_rename.map({ text = "", insert = true }), { desc = "LSP rename" })
