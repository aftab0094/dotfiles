local M = {}

M.sources = {
  "path",
  "codeium"
}

M.border = true

M.ghost_text = true

for i, source in ipairs(M.sources) do
	M.sources[i] = { name = source }
end

return M
