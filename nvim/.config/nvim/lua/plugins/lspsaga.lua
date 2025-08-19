return {
	"nvimdev/lspsaga.nvim",
	dependencies = {
		"nvim-treesitter/nvim-treesitter", -- optional
		"nvim-tree/nvim-web-devicons", -- optional
	},
	config = function()
		require("lspsaga").setup({})
		local wk = require("which-key")
		wk.add({
			{ "<leader>l", group = "Lspsaga" },
			{ "<leader>lc", "<cmd>Lspsaga code_action<cr>", desc = "Code Action" },
			{ "<leader>ld", "<cmd>Lspsaga goto_definition<cr>", desc = "Lsp GoTo Definition" },
			{ "<leader>lf", "<cmd>Lspsaga finder<cr>", desc = "Lsp Finder" },
			{ "<leader>lh", "<cmd>Lspsaga hover_doc<cr>", desc = "Hover Doc" },
			{ "<leader>ln", "<cmd>Lspsaga diagnostic_jump_next<cr>", desc = "Next diagnostic" },
			{ "<leader>lo", "<cmd>Lspsaga outline<cr>", desc = "Outline" },
			{ "<leader>lp", "<cmd>Lspsaga preview_definition<cr>", desc = "Preview Definition" },
			{ "<leader>lr", "<cmd>Lspsaga rename<cr>", desc = "Rename" },
			{ "<leader>lt", "<cmd>Lspsaga peek_type_definition<cr>", desc = "Peek Type Definition" },
			{ "<leader>lu", "<cmd>Lspsaga peek_definition<cr>", desc = "Peek Definition" },
			{ "<leader>lw", "<cmd>Lspsaga show_workspace_diagnostics<cr>", desc = "Show Workspace Diagnostics" },
		})
	end,
}
