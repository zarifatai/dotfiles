return {
    "luckasRanarison/tailwind-tools.nvim",
    name = "tailwind-tools",
    lazy = true,
    build = ":UpdateRemotePlugins",
    dependencies = {
        "nvim-treesitter/nvim-treesitter", "nvim-telescope/telescope.nvim", -- optional
        "neovim/nvim-lspconfig" -- optional
    },
    opts = {} -- your configuration
}
