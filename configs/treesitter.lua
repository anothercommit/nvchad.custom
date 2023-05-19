local options = {
    ensure_installed = {

        -- Web
        "html",
        "css",
        "scss",
        "javascript",
        "typescript",
        "tsx",
        "arduino",

        -- Functional
        "rust",
        "c",
        "zig",
        "go",

        -- Git
        "git_config",
        "gitcommit",
        "git_rebase",
        "gitattributes",
        "gitignore",

        "json",
        "yaml",
        "toml",
        "markdown",

        "python",
        "lua",
        "bash",
    },
    auto_install = true,

  highlight = {
    enable = true,
    use_languagetree = true,
  },

  indent = { enable = true },
}

return options
