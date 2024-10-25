return {
    'hrsh7th/nvim-cmp',
    dependencies = {
        'neovim/nvim-lspconfig', 'hrsh7th/cmp-nvim-lsp', 'hrsh7th/cmp-buffer',
        'hrsh7th/cmp-path', 'hrsh7th/cmp-cmdline', 'L3MON4D3/LuaSnip',
        'saadparwaiz1/cmp_luasnip', 'rafamadriz/friendly-snippets',
        "luckasRanarison/tailwind-tools.nvim", "onsails/lspkind-nvim"
    },
    config = function()
        local luasnip = require("luasnip")
        luasnip.filetype_extend("typescriptreact", {"html"})

        require("luasnip.loaders.from_vscode").lazy_load()
        local cmp = require 'cmp'

        cmp.setup({
            snippet = {
                -- REQUIRED - you must specify a snippet engine
                expand = function(args)
                    require('luasnip').lsp_expand(args.body) -- For `luasnip` users.
                end
            },
            mapping = {
                -- Use Tab to select the next autocomplete option
                ['<Tab>'] = cmp.mapping(function(fallback)
                    if cmp.visible() then
                        cmp.select_next_item()
                    else
                        fallback() -- If no autocomplete menu, fall back to regular Tab behavior
                    end
                end, {"i", "s"}), -- Apply this mapping in insert and select mode

                -- Use Shift-Tab to select the previous autocomplete option
                ['<S-Tab>'] = cmp.mapping(function(fallback)
                    if cmp.visible() then
                        cmp.select_prev_item()
                    else
                        fallback() -- If no autocomplete menu, fall back to regular Shift-Tab behavior
                    end
                end, {"i", "s"}),

                ['<CR>'] = cmp.mapping.confirm({select = true})
            },
            sources = cmp.config.sources({
                {name = 'nvim_lsp'}, {name = 'luasnip'} -- For luasnip users.
            }, {{name = 'buffer'}}),
            formatting = {
                format = require("lspkind").cmp_format({
                    before = require("tailwind-tools.cmp").lspkind_format
                })
            },
            window = {
                completion = cmp.config.window.bordered(),
                documentation = cmp.config.window.bordered()

            }
        })

    end
}
