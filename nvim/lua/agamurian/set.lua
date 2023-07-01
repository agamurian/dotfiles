-- vim.opt.guicursor = ""

vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true

vim.opt.smartindent = true
vim.opt.wrap = true

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

vim.opt.hlsearch = true
vim.opt.incsearch = true
vim.o.ignorecase = true
vim.o.smartcase = true

vim.opt.termguicolors = true

vim.opt.scrolloff = 5

--vim.opt.updatetime = 50
vim.opt.updatetime = 100

vim.opt.colorcolumn = "100"

vim.g.mapleader = " "
vim.o.mouse = 'a'

vim.o.clipboard = 'unnamedplus'
--vim.cmd("set splitright splitbelow")
vim.opt.splitright = true
vim.opt.splitbelow = true

vim.opt.cursorline = true

-- show error in hover window
vim.api.nvim_set_keymap("n", "<leader>e", "<cmd>lua vim.diagnostic.open_float()<CR>", { noremap = true, silent = true })
-- show info in hover window
vim.api.nvim_set_keymap("n", "<leader>i", "<cmd>lua vim.lsp.buf.hover()<CR>", { noremap = true, silent = true })
