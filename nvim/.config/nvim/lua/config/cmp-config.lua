local M = {}

M.sources = {
  "path"
}

M.border = true

for i, source in ipairs(M.sources) do
	M.sources[i] = { name = source }
end

return M
