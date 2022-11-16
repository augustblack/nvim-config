local null_ls_status_ok, null_ls = pcall(require, "null-ls")
if not null_ls_status_ok then
  return
end

-- https://github.com/jose-elias-alvarez/null-ls.nvim/tree/main/lua/null-ls/builtins/formatting
local formatting = null_ls.builtins.formatting
-- https://github.com/jose-elias-alvarez/null-ls.nvim/tree/main/lua/null-ls/builtins/diagnostics
local diagnostics = null_ls.builtins.diagnostics

-- https://github.com/prettier-solidity/prettier-plugin-solidity
null_ls.setup {
  debug = true,
  sources = {
    formatting.eslint_d,
    diagnostics.eslint_d,
    formatting.black.with { extra_args = { "--fast" } },
  },
  -- This is here to format on save
  on_attach = function(client)
    -- see https://github.com/neovim/nvim-lspconfig/issues/1891
    -- if client.resolved_capabilities.document_formatting then
    if client.server_capabilities.documentFormattingProvider then
      -- vim.cmd("autocmd BufWritePre lua vim.lsp.buf.formatting_sync()")
      -- vim.cmd("autocmd BufWritePre <buffer> lua vim.lsp.buf.formatting_sync()")
		  vim.cmd("autocmd BufWritePre <buffer> lua vim.lsp.buf.format()")
		  -- client.resolved_capabilities.document_formatting = true
    end
  end,
}
