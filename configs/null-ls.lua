local present, null_ls = pcall(require, "null-ls")

if not present then
  return
end

local b = null_ls.builtins
local group = vim.api.nvim_create_augroup("lsp_format_on_save", { clear = false })
local event = "BufWritePre" -- or "BufWritePost"
local async = event == "BufWritePost"

local sources = {
  b.formatting.prettierd.with {
    filetypes = { "html", "json", "yaml", "markdown" },
  },
  b.formatting.deno_fmt,
  b.formatting.stylua,
  b.formatting.clang_format,
}

null_ls.setup {
  debug = true,
  sources = sources,

  on_attach = function(client, bufnr)
    if client.supports_method "textDocument/formatting" then
      vim.keymap.set("n", "<Leader>,", function()
        vim.lsp.buf.format { bufnr = vim.api.nvim_get_current_buf() }
      end, { buffer = bufnr, desc = "[lsp] format" })

      vim.api.nvim_clear_autocmds { buffer = bufnr, group = group }
      vim.api.nvim_create_autocmd(event, {
        buffer = bufnr,
        group = group,
        callback = function()
          vim.lsp.buf.format { bufnr = bufnr, async = async }
        end,
        desc = "[lsp] format on save",
      })
    end
  end,

  on_init = function(new_client, _)
    new_client.offset_encoding = "utf-32"
  end,
}
