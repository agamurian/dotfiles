-- global settings
vim.g.mapleader = " "

-- file mainpulaiton
vim.keymap.set("n", "<leader>fv", vim.cmd.Ex)
vim.keymap.set("n", "W", vim.cmd.w)
vim.keymap.set("n", "C-s", vim.cmd.w)

-- test and code manipulation
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

vim.keymap.set("x", "<leader>p", "\"_dP")

vim.keymap.set("n", "<leader>y", "\"+y")
vim.keymap.set("v", "<leader>y", "\"+y")
vim.keymap.set("n", "<leader>Y", "\"+Y")

vim.keymap.set("n", "<leader>d", "\"_d")
vim.keymap.set("v", "<leader>d", "\"_d")

vim.keymap.set("n", "Q", "<nop>")
vim.keymap.set("n", "<C-\\>", function()
  vim.lsp.buf.format()
end)

--finally, replace the current word
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

--finally, replace the current word in V mode
vim.keymap.set("v", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])


-- commenting lines
vim.keymap.set("n", "<leader>c<space>", vim.cmd.NERDCommenterToggle)

-- handle windows
vim.keymap.set("n", "<leader>h", "<C-w>h")
vim.keymap.set("n", "<leader>j", "<C-w>j")
vim.keymap.set("n", "<leader>k", "<C-w>k")
vim.keymap.set("n", "<leader>l", "<C-w>l")
vim.keymap.set("n", "<leader>H", "<C-w>H")
vim.keymap.set("n", "<leader>J", "<C-w>J")
vim.keymap.set("n", "<leader>K", "<C-w>K")
vim.keymap.set("n", "<leader>L", "<C-w>L")

vim.keymap.set("n", "<leader>G", vim.cmd.vsplit)
vim.keymap.set("n", "<leader>V", vim.cmd.split)

vim.keymap.set("n", "<Tab>", vim.cmd.bnext)
vim.keymap.set("n", "<S-Tab>", vim.cmd.bprevious)
vim.keymap.set("n", "<leader><Tab>", vim.cmd.bdelete)

vim.keymap.set("n", "<C-Right>", vim.cmd.tabnext)
vim.keymap.set("n", "<C-Left>", vim.cmd.tabprevious)
vim.keymap.set("n", "<C-Up>", vim.cmd.tabnew)
vim.keymap.set("n", "<C-Down>", vim.cmd.tabclose)


--
-- insert mode remaps:
--
vim.keymap.set("i", '(', '()<ESC>ha', {})
vim.keymap.set("i", '[', '[]<ESC>ha', {})
vim.keymap.set("i", '{', '{}<ESC>ha', {})
vim.keymap.set("i", "'", "''<ESC>ha", {})
vim.keymap.set("i", '"', '""<ESC>ha', {})
--
-- show error in hover window
vim.api.nvim_set_keymap("n", "<leader>e", "<cmd>lua vim.diagnostic.open_float()<CR>", { noremap = true, silent = true })
-- show info in hover window
vim.api.nvim_set_keymap("n", "<leader>i", "<cmd>lua vim.lsp.buf.hover()<CR>", { noremap = true, silent = true })

-- finally: the change to _
vim.cmd('set iskeyword-=_')
vim.cmd [[nnoremap <leader>n :NERDTreeFocus<CR>]]
vim.cmd [[nnoremap <C-f> :NERDTreeFind<CR>]]
vim.cmd [[nnoremap <C-n> :NERDTreeToggle<CR>]]
