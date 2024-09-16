return {
	{
		"polirritmico/monokai-nightasty.nvim",
		opts = {
			on_colors = function(colors)
				colors.bg = '#1B1D1E'
			end,
			on_highlights = function(highlights, colors)
				-- You could add styles like bold, underline, italic
				highlights["@punctuation.bracket"] = {
					fg = "#ffffff"
				}
				highlights["@variable.builtin"] = {
					fg = colors.orange,
					italic = false
				}
			end,
		}
	},
	{
		"LazyVim/LazyVim",
		opts = {
			-- colorscheme = "monokai-nightasty"
		}
	}
}
