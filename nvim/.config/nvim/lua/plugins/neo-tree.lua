return{
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons",
    "MunifTanjim/nui.nvim",
  },
  config = function()
    vim.keymap.set("n","<leader>ef", ":Neotree filesystem reveal left<CR>")
    vim.keymap.set("n","<leader>eb", ":Neotree buffers reveal left<CR>")
    vim.keymap.set("n","<leader>q", ":Neotree close left<CR>")
--    vim.cmd("Neotree filesystem reveal left")
  end
}
