return {
    "neovim/nvim-lspconfig",
    config = function()
        local capabilities = require('cmp_nvim_lsp').default_capabilities()
        require'lspconfig'.pyright.setup {capabilities = capabilities}
        require'lspconfig'.ts_ls.setup {
            capabilities = capabilities,
            on_attach = function()
                vim.diagnostic.config({
                    virtual_text = false, -- Turn off virtual text for lint messages
                    signs = true, -- Keep signs in the gutter
                    underline = true, -- Underline problematic lines
                    update_in_insert = false -- Don't show diagnostics in insert mode
                })

                vim.api.nvim_create_autocmd("CursorHold", {
                    buffer = bufnr,
                    callback = function()
                        local opts = {
                            focusable = false,
                            close_events = {
                                "BufLeave", "CursorMoved", "InsertEnter",
                                "FocusLost"
                            },
                            border = 'rounded',
                            source = 'always',
                            prefix = ' ',
                            scope = 'cursor'
                        }
                        vim.diagnostic.open_float(nil, opts)
                    end
                })
            end
        }
    end
}
