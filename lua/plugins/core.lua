return {
	{
		"neovim/nvim-lspconfig",
		opts = {
			inlay_hints = { enabled = false },
		},
	},
	{
		"folke/tokyonight.nvim",
		opts = {
			styles = {
				comments = { italic = false },
				keywords = { italic = false }
			},
		},
	},
	{
		"nvim-treesitter/nvim-treesitter",
		opts = {
			ensure_installed = {
				"bash",
				"c",
				"diff",
				"html",
				"javascript",
				"jsdoc",
				"json",
				"jsonc",
				"lua",
				"luadoc",
				"luap",
				"markdown",
				"markdown_inline",
				"printf",
				"python",
				"query",
				"regex",
				"toml",
				"tsx",
				"typescript",
				"vim",
				"vimdoc",
				"xml",
				"yaml",
				"vue"
			}
		}
	},
	{
		"lukas-reineke/indent-blankline.nvim",
		enabled = true
	},
	{
		"hrsh7th/nvim-cmp",
		opts = function(_, opts)
			opts.sources = vim.tbl_filter(function(source)
				return not vim.tbl_contains({ "buffer" }, source.name)
			end, opts.sources)
			table.insert(opts.sources, {
				name = "buffer",
				index = 2,
				option = {
					get_bufnrs = function()
						return vim.api.nvim_list_bufs()
					end,
				},
			})
		end,
	},
}
