-- Keymaps for better default experience
-- vim.keymap.set("n", "<leader>pv", vim.cmd.Ex, { desc = "File Tree" })
vim.keymap.set("n", "<leader>pv", ":NvimTreeFindFileToggle<CR>", { desc = "File Tree" })
vim.keymap.set("n", "<leader>gs", vim.cmd.Git, { desc = "Git status" })

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- See `:help vim.keymap.set()`
vim.keymap.set({ 'n', 'v' }, '<Space>', '<Nop>', { silent = true })

-- Remap for dealing with word wrap
vim.keymap.set('n', 'k', "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })
vim.keymap.set('n', 'j', "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })

vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")


vim.keymap.set("n", "<leader>sv", "<C-w>v:TmuxNavigateRight<CR>", { desc = "Split Vertically" })
vim.keymap.set("n", "<leader>sh", "<C-w>s:TmuxNavigateDown<CR>", { desc = "Split Horizontal" })
vim.keymap.set("n", "<leader>sq", ":close<CR>", { desc = "Close Split" })

-- keep yank buffer with changing
vim.keymap.set("x", "<leader>p", [["_dP]])

-- yank to system clipboard
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

vim.keymap.set("n", "<leader>;", "A;<Esc>", { desc = "Put semicolon at end of line" });
vim.keymap.set("i", "<C-Space>", "<Right>", { desc = "Move left" });
vim.keymap.set({ "n", "v" }, "<leader>d", [["_d]])

vim.keymap.set("n", "Q", "<nop>")
vim.keymap.set("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>")
vim.keymap.set("n", "<leader>f", vim.lsp.buf.format)
vim.keymap.set("n", "<leader>res", ":EslintFixAll<CR>", { desc = "Fix All Eslint Error" })

--Go to next/prev error
vim.keymap.set("n", "<C-]>", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "<C-[", "<cmd>cprev<CR>zz")
-- vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
-- vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")

vim.keymap.set("n", "<leader>rn", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
vim.keymap.set("v", "<leader>rn", [[:s/]], { desc = "Rename in visual selection" });
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true, desc = "Make current file exicuteable"})

vim.keymap.set("n", "<leader>vpp", "<cmd>e ~/.config/nvim/lua/jimlah/init.lua<CR>", { desc = "Open nvim init file" });

vim.keymap.set("n", "<leader>o", ":only<CR>", { desc = "[O]nly leave this window open" });

-- Diagnostic keymaps
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, { desc = 'Go to previous diagnostic message' })
vim.keymap.set('n', ']d', vim.diagnostic.goto_next, { desc = 'Go to next diagnostic message' })
vim.keymap.set('n', '<leader>e', vim.diagnostic.open_float, { desc = 'Open floating diagnostic message' })
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostics list' })

vim.keymap.set("n", "<leader><leader>", function()
  vim.cmd("so")
end)
