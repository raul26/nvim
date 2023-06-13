-- import vgit plugin safely
local setup, vgit = pcall(require, "vgit")
if not setup then
  return
end

-- configure/enable vgit
vgit.setup({
  hls = {
    GitBackground = 'Normal',
    GitHeader = 'NormalFloat',
    GitFooter = 'NormalFloat',
    GitBorder = 'LineNr',
    GitLineNr = 'LineNr',
    GitComment = 'Comment',
    GitSignsAdd = {
      gui = nil,
      fg = '#d7ffaf',
      bg = nil,
      sp = nil,
      override = false,
    },
    GitSignsChange = {
      gui = nil,
      fg = '#7AA6DA',
      bg = nil,
      sp = nil,
      override = false,
    },
    GitSignsDelete = {
      gui = nil,
      fg = '#e95678',
      bg = nil,
      sp = nil,
      override = false,
    },
    GitSignsAddLn = 'DiffAdd',
    GitSignsDeleteLn = 'DiffDelete',
    GitWordAdd = {
      gui = nil,
      fg = nil,
      bg = '#5d7a22',
      sp = nil,
      override = false,
    },
    GitWordDelete = {
      gui = nil,
      fg = nil,
      bg = '#960f3d',
      sp = nil,
      override = false,
    },
  },
  signs = {
    priority = 10,
    definitions = {
      GitSignsAddLn = {
        linehl = 'GitSignsAddLn',
        texthl = nil,
        numhl = nil,
        icon = nil,
        text = '',
      },
      GitSignsDeleteLn = {
        linehl = 'GitSignsDeleteLn',
        texthl = nil,
        numhl = nil,
        icon = nil,
        text = '',
      },
      GitSignsAdd = {
        texthl = 'GitSignsAdd',
        numhl = nil,
        icon = nil,
        linehl = nil,
        text = '┃',
      },
      GitSignsDelete = {
        texthl = 'GitSignsDelete',
        numhl = nil,
        icon = nil,
        linehl = nil,
        text = '┃',
      },
      GitSignsChange = {
        texthl = 'GitSignsChange',
        numhl = nil,
        icon = nil,
        linehl = nil,
        text = '┃',
      },
    },
    usage = {
      screen = {
        add = 'GitSignsAddLn',
        remove = 'GitSignsDeleteLn',
      },
      main = {
        add = 'GitSignsAdd',
        remove = 'GitSignsDelete',
        change = 'GitSignsChange',
      },
    },
  },
  symbols = {
    void = '⣿',
  },
})
