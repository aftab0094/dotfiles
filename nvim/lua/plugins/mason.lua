local mason_config = require("config.mason-config")

return {
	{
		"williamboman/mason.nvim",
		config = function()
			require("mason").setup({
				ui = {
					icons = {
						package_installed = "✓",
						package_pending = "➜",
						package_uninstalled = "✗",
					},
				},
			})

			vim.keymap.set("n", "<leader><C-m>", function()
				for _, pkg in ipairs(mason_config.pkgs_to_install) do
					vim.cmd("MasonInstall " .. pkg)
				end
			end)
		end,
	},

	{
		"williamboman/mason-lspconfig.nvim",
		config = function()
			require("mason-lspconfig").setup({
				ensure_installed = mason_config.ensure_installed,
			})
		end,
	},
}
