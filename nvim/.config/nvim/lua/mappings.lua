map = vim.keymap.set

-- Basic key mappings
map("i", "nj", "<esc>") -- Escape to normal mode from insert mode
map("n", ";", ":") -- Quickly enter command mode
map("n", "<leader>w", "<cmd>w<cr>") -- Write the current file
map("n", "<leader>q", "<cmd>q<cr>") -- Quit Neovim
map({ "n", "v" }, "sp", '"+p') -- Paste from system clipboard
map("v", "sy", '"+y') -- Copy to system clipboard
map("n", "<leader>n", "<cmd>set invnumber<cr>") -- Toggle line numbers

-- Mason (Plugin Manager)
map("n", "<leader>m", "<cmd>Mason<cr>") -- Open Mason
-- Lazy (Plugin Manager/Loader)
map("n", "<leader>L", "<cmd>Lazy<cr>") -- Open Lazy

-- Telescope (Fuzzy Finder)
map("n", "<leader>ff", "<cmd>Tele find_files<cr>") -- Find files
map("n", "<leader>fw", "<cmd>Tele live_grep<cr>") -- live grep
map("n", "<leader>fo", "<cmd>Tele oldfiles<cr>") -- find old files
map("n", "<leader>fz", "<cmd>Tele current_buffer_fuzzy_find<cr>") -- current buffer fuzzy find
map("n", "<leader>th", "<cmd>Tele colorscheme<cr>") -- colorscheme

-- tabs
map("n", "<leader>pp", "<cmd> tabnew <cr>") -- create a new tab
-- Note<cmd> you  can also use Ctrl + PgUp/PgDw keys to navigate tabs
map("n", "<leader>ll", "<cmd> tabnext <cr>") -- go to the next tab
map("n", "<leader>kk", "<cmd> tabNext <cr>") -- go to the previous tab
map("n", "<leader>jj", "<cmd> tabclose <cr>") -- close the current tab

-- buffer
map("n", "<tab>", "<cmd>bnext<cr>") -- go to the next buffer
map("n", "<S-tab>", "<cmd>bNext<cr>") -- go to the previous buffer
map("n", "<leader>b", "<cmd>new<cr>:q<cr>") -- create a blank buffer
map("n", "<leader>x", "<cmd>bdelete<cr>") -- close current buffer
map("n", "<leader>X", "<cmd>bdelete!<cr>") -- close current buffer even if it is modified

-- window
-- move window
map({ "n", "i" }, "<C-l>", "<esc><C-w>l") -- move to the right
map({ "n", "i" }, "<C-h>", "<esc><C-w>h") -- move to the left
map({ "n", "i" }, "<C-j>", "<esc><C-w>j") -- move down
map({ "n", "i" }, "<C-k>", "<esc><C-w>k") -- move up
map({ "n", "i" }, "<A-j>", "<esc><C-w>-") -- resize window down
map({ "n", "i" }, "<A-k>", "<esc><C-w>+") -- resize window up
map({ "n", "i" }, "<A-h>", "<esc><C-w><") -- resize window left
map({ "n", "i" }, "<A-l>", "<esc><C-w>>") -- resize window right
map({ "n", "i" }, "<A-=>", "<esc><C-w>=") -- resize window to equal size

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
map("n", "<leader>id", "<cmd>lua vim.lsp.buf.hover()<cr>") -- Hover over symbol
map("n", "<leader>ca", "<cmd>lua vim.lsp.buf.code_action()<cr>") -- Code actions
map("n", "<leader>iR", "<cmd>lua vim.lsp.buf.rename()<cr>") -- Rename symbol
map("n", "<leader>ig", "<cmd>lua vim.lsp.buf.definition()<cr>") -- Go to definition
map("n", "<leader>ir", "<cmd>lua vim.lsp.buf.references()<cr>") -- Find references
map("n", "<leader>fm", "<cmd>lua vim.lsp.buf.format()<cr>") -- Format buffer

-- oil
map("n", "<leader>e", "<cmd>Oil<cr>") -- open oil
map("n", "<leader>e", "<cmd>Oil<cr>") -- Open the Oil REPL
