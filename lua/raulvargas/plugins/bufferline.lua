
-- import comment plugin safely
local setup, bufferline = pcall(require, "bufferline")
if not setup then
  return
end

-- enable comment
bufferline.setup({
  options = {
    mode = 'tabs',
    diagnostics = 'nvim_lsp',
    show_buffer_close_icons = false,
    show_close_icon = false,
    color_icons = true,
    offsets = {
      {
        filetype = "NvimTree",
        text = "File Explorer",
        text_align = "center",
        separator = true
      }
    },
    hover = {
      enabled = true,
      delay = 200,
      reveal = {'close'}
    },
  }
})
