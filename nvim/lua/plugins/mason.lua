return {
    -- Mason: LSP server manager
    {"williamboman/mason.nvim", opts = {PATH = "append"}},

    -- Mason LSPConfig: bridges Mason with lspconfig
    {
        "williamboman/mason-lspconfig.nvim",
        opts = {ensure_installed = {"pyright", "ts_ls", "rust_analyzer"}}
    }
}
