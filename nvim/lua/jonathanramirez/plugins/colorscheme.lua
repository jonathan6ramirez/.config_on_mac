return {
	{
		"ellisonleao/gruvbox.nvim",
		priority = 1000, -- make sure to load this before all the other start plugins
		config = function()
			-- local bg = "#011628"
			-- local bg_dark = "#011423"
			-- local bg_highlight = "#143652"
			-- local bg_search = "#0A64AC"
			-- local bg_visual = "#275378"
			-- local fg = "#CBE0F0"
			-- local fg_dark = "#B4D0E9"
			-- local fg_gutter = "#627E97"
			-- local border = "#547998"

			require("gruvbox").setup({
				-- your configuration comes here
				-- or leave it empty to use the default settings
				transparent = true, -- Enable this to disable setting the background color
				terminal_colors = true, -- Configure the colors used when opening a `:terminal` in [Neovim](https://github.com/neovim/neovim)
				styles = {
					-- Style to be applied to different syntax groups
					-- Value is any valid attr-list value for `:help nvim_set_hl`
					comments = { italic = true },
					keywords = { italic = true },
					functions = {},
					variables = {},
					-- Background styles. Can be "dark", "transparent" or "normal"
					sidebars = "dark", -- style for sidebars, see below
					floats = "dark", -- style for floating windows
				},
				sidebars = { "qf", "help" }, -- Set a darker background on sidebar-like windows. For example: `["qf", "vista_kind", "terminal", "packer"]`
				day_brightness = 0.3, -- Adjusts the brightness of the colors of the **Day** style. Number between 0 and 1, from dull to vibrant colors
				hide_inactive_statusline = false, -- Enabling this option, will hide inactive statuslines and replace them with a thin border instead. Should work with the standard **StatusLine** and **LuaLine**.
				dim_inactive = true, -- dims inactive windows
				lualine_bold = false, -- When `true`, section headers in the lualine theme will be bold

				transparent_mode = true,

				--- You can override specific color groups to use other groups or a hex color
				--- function will be called with a ColorScheme table
				---@param colors ColorScheme
				on_colors = function(colors) end,

				--- You can override specific highlights to use other groups or a hex color
				--- function will be called with a Highlights and ColorScheme table
				---@param highlights Highlights
				---@param colors ColorScheme
				on_highlights = function(highlights, colors) end,
			})
			-- load the colorscheme here
			vim.cmd([[colorscheme gruvbox]])
		end,
	},
}
