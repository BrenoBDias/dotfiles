
vim.g.mapleader = " "

local map = vim.keymap.set
--nvim_create_user_command()*

-- helps changing and menaging windows faster
map("n","<C-j>","<C-w><C-j>")
map("n","<C-k>","<C-w><C-k>")
map("n","<C-h>","<C-w><C-h>")
map("n","<C-l>","<C-w><C-l>")

map("n","<C-x","<C-w><C-q>")

-- moving more efficiently in insert mode:
map("i", "<C-h>", "<Left>", { desc = "move left" })
map("i", "<C-l>", "<Right>", { desc = "move right" })
map("i", "<C-j>", "<Down>", { desc = "move down" })
map("i", "<C-k>", "<Up>", { desc = "move up" })

map("n", "<Esc>", "<cmd>noh<CR>", { desc = "general clear highlights" })
map("n", "<C-s>", "<cmd>w<CR>", { desc = "file save" })


-- asknafhh


vim.g.netrw_liststyle = 3
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.scrolloff = 10

vim.opt.cursorline = true
vim.opt.cursorlineopt = "number"

vim.opt.undofile = true

vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")



local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)


local plugins = "plugins"

local opts = {}

require("lazy").setup(plugins, opts)


