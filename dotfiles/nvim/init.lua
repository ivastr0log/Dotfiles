vim.cmd("set expandtab")
vim.cmd("set tabstop=4")
vim.cmd("set shiftwidth=4")
vim.cmd("set number")
vim.cmd("set relativenumber")
vim.opt.termguicolors = true


vim.opt.shell = '/usr/bin/zsh'

vim.g.mapleader = " "

vim.keymap.set("n", "<C-t>", ":tabnew<CR>")


vim.keymap.set("n", "<S-t>", ":exe v:count1 . 'ToggleTerm'<CR>")


--vim.keymap.set("n", "<C-k>", ":tabclose<CR>")
--vim.keymap.set("n", "<C-n>", ":tabnext<CR>")
--vim.keymap.set("n", "<C-p>", ":tabprevious<CR>")
--
--vim.keymap.set("n", "<S-t>", ":tabnew<CR>:terminal<CR>")


require("config.lazy")
