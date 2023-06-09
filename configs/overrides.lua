local M = {}

M.treesitter = {
  ensure_installed = {
    "vim",
    "lua",
    "html",
    "css",
    "javascript",
    "typescript",
    "tsx",
    "c",
    "markdown",
    "markdown_inline",

    -- Git
    "git_config",
    "gitcommit",
    "git_rebase",
    "gitattributes",
    "gitignore",
  },

  auto_install = true,

  indent = {
    enable = true,
    -- disable = {
    --   "python"
    -- },
  },
}

M.mason = {
  ensure_installed = {
    -- formaters
    "stylua",
    "prettierd",
    "clang-format",

    -- web dev stuff
    "css-lsp",
    "html-lsp",
    "typescript-language-server",
    "deno",
    "emmet-lsp",

    "marksman", -- markdown
    "lua-language-server",
    "pyre",
    "taplo",

    -- functional
    "clangd",
    "rust-analyzer",
  },
}

-- git support in nvimtree
M.nvimtree = {
  git = {
    enable = true,
  },

  renderer = {
    highlight_git = true,
    icons = {
      show = {
        git = true,
      },
    },
  },
}

return M
