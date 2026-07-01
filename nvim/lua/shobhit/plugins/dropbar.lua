return {
	"Bekaboo/dropbar.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	config = function()
		local sources = require("dropbar.sources")
		local utils = require("dropbar.utils")

		require("dropbar").setup({
			sources = {
				path = {
					relative_to = function(buf, _)
						local bufname = vim.api.nvim_buf_get_name(buf)
						return vim.fs.root(bufname, ".git") or vim.fn.getcwd()
					end,
				},
			},
			bar = {
				sources = function(_, _)
					return {
						utils.source.fallback({
							sources.path,
							sources.lsp,
							sources.treesitter,
						}),
					}
				end,
			},
		})

		vim.keymap.set("n", "<leader>;", require("dropbar.api").pick, { desc = "Pick symbol in breadcrumb" })
	end,
}
