return {
  "ThePrimeagen/harpoon",
  dependencies = { "nvim-lua/plenary.nvim" },
  config = function(_, opts)
    require("harpoon").setup(opts)
    local mark = require("harpoon.mark")
    local ui = require("harpoon.ui")


    vim.keymap.set("n", "<leader>a", mark.add_file, { desc = "Add page to harpoon" })
    vim.keymap.set("n", "<C-e>", ui.toggle_quick_menu, { desc = "Toggle harpoon ui" })

    vim.keymap.set("n", "<leader><C-j>", function() ui.nav_file(1) end)
    vim.keymap.set("n", "<leader><C-k>", function() ui.nav_file(2) end)
    vim.keymap.set("n", "<leader><C-l>", function() ui.nav_file(3) end)
    vim.keymap.set("n", "<leader><C-;>", function() ui.nav_file(4) end)
  end
}
