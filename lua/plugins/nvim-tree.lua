require("nvim-tree").setup({
  open_on_setup = true,
  open_on_tab = true,
  sort_by = "case_sensitive",
  view = {
    side = "right",
    adaptive_size = true,
    mappings = {
      list = {
        { key = "u", action = "dir_up" },
      },
    },
  },
  renderer = {
    group_empty = true,
    icons = { 
      git_placement = "after",
      glyphs = { folder = {
           default = "-",
           open = "└",
           empty = "🞅",
           empty_open = "🞅",
         },
      },
 
      show = {
         file = false,
         folder_arrow = false,
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
