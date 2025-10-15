if not require 'arg'.notlsp then
    return
end

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
    ['<C-b>'] = cmp.mapping.scroll_docs(-4),
    ['<C-f>'] = cmp.mapping.scroll_docs(4),
    ['<C-Space>'] = cmp.mapping.complete(),
    ['<C-e>'] = cmp.mapping.abort(),

    ['<C-CR>'] = cmp.mapping.confirm({ select = true }), -- Accept currently selected item.
    ['<CR>'] = cmp.mapping.confirm({ select = true }), -- Accept currently selected item.
  },

  sources = {
    {name = 'path'},
    { name = "nvim_lsp" },
    { name = "buffer" },
  },

  window = {
    documentation = cmp.config.window.bordered()
  },
}

-- language server
local lsp_server_list = {}

require('mason').setup()
local mason_lspcfg = require('mason-lspconfig')
mason_lspcfg.setup({ ensure_installed = lsp_server_list, automatic_enable = true })

--local capabilities = vim.lsp.protocol.make_client_capabilities()
--capabilities = require('cmp_nvim_lsp').default_capabilities(capabilities)

vim.lsp.config("*", {})
vim.diagnostic.config({ virtual_text = false, virtual_lines = { current_line = true }, }) 

-- syntax server
local compilers = { "cc", "gcc", "clang", "cl", "zig" }
local cc_env = vim.fn.getenv('CC')
if type(cc_env) == 'string' then
   table.insert(compilers, cc_env)
end

local function path_in_existment(arr)
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

