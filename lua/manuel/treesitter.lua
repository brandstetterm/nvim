require('nvim-treesitter.configs').setup {
    ensure_installed = {
        "css",
        "dockerfile",
        "html",
        "javascript",
        "json",
        "lua",
        "markdown",
        "scss",
        "tsx",
        "typescript",
        "vim",
        "yaml",
    },
    sync_install = true,
    highlight = {
        enable = true
    },
}
