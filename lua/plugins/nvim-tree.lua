local args = require 'arg'
local function on_attach(bufnr)
  local api = require('nvim-tree.api')

  local function opts(desc)
    return { desc = 'nvim-tree: ' .. desc, buffer = bufnr, noremap = true, silent = true, nowait = true }
  end
  api.config.mappings.default_on_attach(bufnr)
  vim.keymap.set('n', 'u', api.tree.change_root_to_parent, opts('Up'))
end

require("nvim-tree").setup({
  open_on_tab = true,
  sort_by = "case_sensitive",
  view = {
    side = "right",
    adaptive_size = true,
  },
  on_attach = on_attach,
  renderer = {
    group_empty = true,
    icons = { 
      git_placement = "after",
 
      show = {
         file = args.icons,
         folder = args.icons,
         folder_arrow = args.icons,
      } 
    }
  },
  filters = {
    dotfiles = true,
  },
  update_focused_file = {
     enable = true,
     update_cwd = true,
  },
})

--auto-close:
vim.api.nvim_create_autocmd('BufEnter', {
    command = "if winnr('$') == 1 && bufname() == 'NvimTree_' . tabpagenr() | quit | endif",
    nested = true,
})

