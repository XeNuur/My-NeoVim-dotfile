--cmp
vim.opt.completeopt = {'menu', 'menuone', 'noselect'}

local cmp = require'cmp'
cmp.setup {
  snippet = {
    expand = function(args)
      require('luasnip').lsp_expand(args.body)
    end
  },

  mapping = {
    ['<Tab>'] = cmp.mapping.confirm({ select = true }),
    ['<c-q>'] = cmp.mapping.abort()
  },

  sources = {
    { name = "nvim_lsp" },
    { name = "buffer" },
  },
}

--server
require('mason').setup()
require('mason-lspconfig').setup({
   ensure_installed = {'sumneko_lua'}
})
require('lspconfig').sumneko_lua.setup{}

--syntax
require'nvim-treesitter.configs'.setup {
   ensure_installed = { 'lua' },
   auto_install = true,
   highlight = {
      enable = true,
   }
}
