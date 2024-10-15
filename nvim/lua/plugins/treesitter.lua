return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
        local configs = require("nvim-treesitter.configs")
        configs.setup({
            ensure_installed = {
                "lua", "python", "javascript", "html", "css", "typescript",
                "tsx", "yaml", "rust", "toml", "json", "dockerfile", "csv",
                "bash"
            }, -- Add languages you want here
            highlight = {
                enable = true,
                additional_vim_regex_highlighting = false
            },
            indent = {enable = true}
        })
    end
}
