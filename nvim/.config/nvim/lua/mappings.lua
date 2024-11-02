map = vim.keymap.set

-- basics O_O
map({ "n", "i" }, "nj", "<esc>")
map("n", "<leader>w", "<cmd>w<cr>")
map("n", "<leader>q", "<cmd>q<cr>")
map({ "n", "v" }, "sp", '"+p')
map("v", "sy", '"+y')
map("n", "<leader>n", "<cmd>set invnumber<cr>")

-- Mason
map("n", "<leader>m", "<cmd>Mason<cr>")

-- Lazy
map("n", "<leader>L", "<cmd>Lazy<cr>")

-- telescope
map("n", "<leader>ff", "<cmd>Tele find_files<cr>") -- Find files
map("n", "<leader>fw", "<cmd>Tele live_grep<cr>") -- live grep
map("n", "<leader>fo", "<cmd>Tele oldfiles<cr>") -- find old files
map("n", "<leader>fz", "<cmd>Tele current_buffer_fuzzy_find<cr>") -- current buffer fuzzy find
map("n", "<leader>th", "<cmd>Tele colorscheme<cr>") -- colorscheme

-- tabs
map("n", "<leader>pp", "<cmd> tabnew <cr>")
-- Note<cmd> you  can also use Ctrl + PgUp/PgDw keys to navigate tabs
map("n", "<leader>ll", "<cmd> tabnext <cr>")
map("n", "<leader>kk", "<cmd> tabNext <cr>")
map("n", "<leader>jj", "<cmd> tabclose <cr>")

-- NvimTree
map("n", "<leader>e", "<cmd>NvimTreeFocus<cr>") -- focus/open Neotree
map("n", "<C-n>", "<cmd>NvimTreeToggle<cr>")

-- buffer
map("n", "<tab>", "<cmd>bnext<cr>")
map("n", "<S-tab>", "<cmd>bNext<cr>")
map("n", "<leader>b", "<cmd>new<cr>:q<cr>")
map("n", "<leader>x", "<cmd>bdelete<cr>")
map("n", "<leader>X", "<cmd>bdelete!<cr>")
map({ "n", "i" }, "<C-l>", "<esc><C-w>l")
map({ "n", "i" }, "<C-h>", "<esc><C-w>h")
map({ "n", "i" }, "<C-j>", "<esc><C-w>j")
map({ "n", "i" }, "<C-k>", "<esc><C-w>k")
map({ "n", "i" }, "<A-j>", "<esc><C-w>-")
map({ "n", "i" }, "<A-k>", "<esc><C-w>+")
map({ "n", "i" }, "<A-h>", "<esc><C-w><")
map({ "n", "i" }, "<A-l>", "<esc><C-w>>")
map({ "n", "i" }, "<A-=>", "<esc><C-w>=")

-- term
map("n", "<A-o>", "<cmd>ToggleTerm size=10 direction=horizontal<cr>")
map("n", "<A-i>", "<cmd>ToggleTerm direction=float<cr>")
vim.api.nvim_set_keymap("t", "<A-i>", [[<C-\><C-n><cmd>ToggleTerm direction=float<cr>']], { noremap = true })
vim.api.nvim_set_keymap(
	"t",
	"<A-o>",
	[[<C-\><C-n><cmd>ToggleTerm size=10 direction=horizontal<cr>]],
	{ noremap = true }
)

-- lsp
map("n", "<leader>id", "<cmd>lua vim.lsp.buf.hover()<cr>")
map("n", "<leader>ca", "<cmd>lua vim.lsp.buf.code_action()<cr>")
map("n", "<leader>iR", "<cmd>lua vim.lsp.buf.rename()<cr>")
map("n", "<leader>ig", "<cmd>lua vim.lsp.buf.definition()<cr>")
map("n", "<leader>ir", "<cmd>lua vim.lsp.buf.references()<cr>")

-- none-ls
map("n", "<leader>fm", "<cmd>lua vim.lsp.buf.format()<cr>")
