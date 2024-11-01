return {
	"VonHeikemen/lsp-zero.nvim",
	branch = "v4.x",
	dependencies = {
		'neovim/nvim-lspconfig',
		'hrsh7th/cmp-nvim-lsp',
		'hrsh7th/nvim-cmp',
		"williamboman/mason.nvim",
		"williamboman/mason-lspconfig.nvim"
	},
        config = function()
		require('mason').setup({})
		require('mason-lspconfig').setup({
			ensure_installed = {'lua_ls', 'rust_analyzer', 'clangd'},
			handlers = {
				function(server_name)
					require('lspconfig')[server_name].setup({})
				end,
                ["lua_ls"] = function ()
                    local lspconfig = require("lspconfig")
                    lspconfig.lua_ls.setup {
                        settings = {
                            Lua = {
                                diagnostics = {
                                    globals = { "vim" }
                                }
                            }
                        }
                    }
                end
		}})
		local cmp = require('cmp')
		local cmp_select = {behavior = cmp.SelectBehavior.Select}
		cmp.setup({
			sources = {
				{name = 'nvim_lsp'},
			},
			mapping = cmp.mapping.preset.insert({
				['<C-y>'] = cmp.mapping.confirm({select = true}),
				['<C-p>'] = cmp.mapping.select_prev_item(cmp_select),
				['<C-n>'] = cmp.mapping.select_next_item(cmp_select),
				["<C-Space>"] = cmp.mapping.complete(),

				-- scroll up and down the documentation window
				['<C-u>'] = cmp.mapping.scroll_docs(-4),
				['<C-d>'] = cmp.mapping.scroll_docs(4),
			}),
		})
		vim.diagnostic.config({
			virtual_text = true
		})
	end
}
