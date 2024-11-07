require("config.lazy")
require("mappings")

vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.cmd("set nu")
vim.cmd("set numberwidth=1")
vim.g.mapleader = " "

local sha_path = "C:\\Users\\user\\AppData\\Local\\nvim-data\\shada\\main.shada.tmp.X"

-- Function to check if a file exists
local function file_exists(filepath)
  local f = io.open(filepath, "r")
  if f then
    f:close()
    return true
  else
    return false
  end
end

-- Check if the file exists and delete it if it does
if file_exists(sha_path) then
  os.remove(sha_path)
end
