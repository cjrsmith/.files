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
                ["<Tab>"] = cmp.mapping(function(fallback)
                    if cmp.visible() then
                        cmp.select_next_item()
                    else
                        fallback()
                    end
                end, { "i", "s" }),
                ["<S-Tab>"] = cmp.mapping(function(fallback)
                    if cmp.visible() then
                        cmp.select_prev_item()
                    else
                        fallback()
                    end
                end, { "i", "s" }),
				['<CR>'] = cmp.mapping.confirm({select = true}),
				['<C-p>'] = cmp.mapping.select_prev_item(cmp_select),
				['<C-n>'] = cmp.mapping.select_next_item(cmp_select),
                ['<C-b>'] = cmp.mapping.scroll_docs(-4),
                ['<C-f>'] = cmp.mapping.scroll_docs(4),
                ['<C-Space>'] = cmp.mapping.complete(),
                ['<C-e>'] = cmp.mapping.abort(),
			}),
		})
		vim.diagnostic.config({
			virtual_text = true
		})
	end
}
