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
local compilers = { "cc", "gcc", "clang", "cl", "zig" }
local cc_env = vim.fn.getenv('CC')
if type(cc_env) == 'string' then
   table.insert(compilers, cc_env)
end

function path_in_existment(arr)
   for _, it in ipairs(arr) do
      if vim.fn.executable(it) == 1 then
         return true
      end
   end
   return false
end

if path_in_existment(compilers) then
   require'nvim-treesitter.install'.prefer_git = false
   require'nvim-treesitter.configs'.setup {
      ensure_installed = { 'lua' },
      auto_install = true,
      highlight = {
         enable = true,
      }
   }
end
