local autopairs_setup, autopairs = pcall(require, "nvim-tree")
if not autopairs_setup then
  return
end

vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- set termguicolors to enable highlight groups
vim.opt.termguicolors = true


-- empty setup using defaults
require("nvim-tree").setup({
  filters = {
    dotfiles = false
  },
  actions = {
    open_file = {
      resize_window = true
    }
  },
  view = {
    width = 60,
    mappings = {
      list = {
        { key = "i", action = "vsplit" },
        { key = "t", action = "tabnew" },
      },
    },
  },
  git = {
    enable = true
  },
  diagnostics = {
    enable = true
  }
})
