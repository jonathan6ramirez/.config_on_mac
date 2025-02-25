return {
	"folke/which-key.nvim",
	event = "VeryLazy",
	init = function()
		vim.o.timeout = true
		vim.o.timeoutlen = 500
	end,
	opts = {
		-- your configuration comes here
		-- or leave it empty to use the default settings
		-- refer to the configuration section below
	},
	keys = {
		-- {
		-- 	"<leader>?",
		-- 	function()
		-- 		require("which-key").show({ global = false })
		-- 	end,
		-- 	desc = "Buffer Local Keymaps (which-key)",
		-- },
		{
			"<leader>f",
			function()
				require("which-key")
			end,
			desc = "Fuzzy Finder",
		},
		{
			"<leader>l",
			function()
				require("which-key")
			end,
			desc = "LazyGit",
		},
		{
			"<leader>t",
			function()
				require("which-key")
			end,
			desc = "Tab Actions",
		},
		{
			"<leader>s",
			function()
				require("which-key").show({ global = false })
			end,
			desc = "Window Actions",
		},
		{
			"<leader>x",
			function()
				require("which-key").show({ global = false })
			end,
			desc = "Trouble",
		},
		{
			"<leader>m",
			function()
				require("which-key").show({ global = false })
			end,
			desc = "Format File",
		},
		{
			"<leader>r",
			function()
				require("which-key").show({ global = false })
			end,
			desc = "LSP",
		},
		{
			"<leader>n",
			function()
				require("which-key").show({ global = false })
			end,
			desc = "Highlights",
		},
		{
			"<leader>e",
			function()
				require("which-key").show({ global = false })
			end,
			desc = "File Explorer",
		},
		{
			"<leader>w",
			function()
				require("which-key").show({ global = false })
			end,
			desc = "Session",
		},
	},
}
