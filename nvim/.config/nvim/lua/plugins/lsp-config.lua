local function on_attach()
  vim.keymap.set("n", "K", vim.lsp.buf.hover, { buffer = 0, desc = "Show documentation in hover window." })
  vim.keymap.set("n", "gd", vim.lsp.buf.definition, { buffer = 0, desc = "Jump to definition." })
  vim.keymap.set("n", "gD", vim.lsp.buf.declaration, { buffer = 0, desc = "Jump to declaration." })
  vim.keymap.set("n", "gi", vim.lsp.buf.implementation, { buffer = 0, desc = "Jump to implementation." })
  vim.keymap.set("n", "go", vim.lsp.buf.type_definition, { buffer = 0, desc = "Jump to type definition." })
  vim.keymap.set("n", "gs", vim.lsp.buf.signature_help, { buffer = 0, desc = "Jump to signature help." })
  vim.keymap.set(
    "n",
    "gq",
    function() vim.lsp.buf.format({ async = true }) end,
    { buffer = 0, desc = "Jump to signature help." })
end
return{
  {
    "williamboman/mason.nvim",
    config = function()
      require("mason").setup({
        ui = {
          icons = {
            package_installed = "✓",
            package_pending = "➜",
            package_uninstalled = "✗"
          }
        }
      })
    end
  },

  {
    "williamboman/mason-lspconfig.nvim",
    config = function()
      require("mason-lspconfig").setup({
        ensure_installed = { "lua_ls", "clangd", "omnisharp", "zls", "dockerls", "pyright"},
      })
    end
  },

  {
    "neovim/nvim-lspconfig",
    config = function()
      local capabilities = require('cmp_nvim_lsp').default_capabilities()
      local lsp = require("lspconfig")

      lsp.lua_ls.setup({capabilities = capabilities, on_attach = on_attach})
      lsp.clangd.setup({capabilities = capabilities, on_attach = on_attach})
      lsp.omnisharp.setup({capabilities = capabilities, on_attach = on_attach})
      lsp.zls.setup({capabilities = capabilities, on_attach = on_attach})
      lsp.dockerls.setup({capabilities = capabilities, on_attach = on_attach})
      lsp.pyright.setup({capabilities = capabilities, on_attach = on_attach})
      lsp.arduino_language_server.setup({capabilities = capabilities, on_attach = on_attach})

      vim.keymap.set("n", "<leader>K", vim.lsp.buf.hover, {})
      vim.keymap.set("n", "dg", vim.lsp.buf.definition, {})
      vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, {})

    end
  }




}
