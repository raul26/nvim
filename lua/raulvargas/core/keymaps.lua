vim.g.mapleader = ","
local keymap = vim.keymap

keymap.set("n", "<leader>n", ":NvimTreeToggle<CR>")
keymap.set("n", "<leader>gf", ":NvimTreeFindFile<CR>")

keymap.set("n", "<S-l>", ":bnext<CR>")
keymap.set("n", "<S-h>", ":bprevious<CR>")
keymap.set("n", "<leader>q", ":bp<bar>sp<bar>bn<bar>bd<CR>")

-- telescope
keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>") -- find files within current working directory, respects .gitignore
keymap.set("n", "<leader>fs", "<cmd>Telescope live_grep<cr>") -- find string in current working directory as you type
keymap.set("n", "<leader>fc", "<cmd>Telescope grep_string<cr>") -- find string under cursor in current working directory
keymap.set("n", "<leader>bl", "<cmd>Telescope buffers<cr>") -- list open buffers in current neovim instance
keymap.set("n", "<leader>fh", "<cmd>Telescope help_tags<cr>") -- list available help tags
keymap.set("n", "[b", "<cmd>bprevious<cr>") -- list available help tags
keymap.set("n", "]b", "<cmd>bNext<cr>") -- list available help tags

-- telescope git commands (not on youtube nvim video)
keymap.set("n", "<leader>gc", "<cmd>Telescope git_commits<cr>") -- list all git commits (use <cr> to checkout) ["gc" for git commits]
keymap.set("n", "<leader>gfc", "<cmd>Telescope git_bcommits<cr>") -- list git commits for current file/buffer (use <cr> to checkout) ["gfc" for git file commits]
keymap.set("n", "<leader>gb", "<cmd>Telescope git_branches<cr>") -- list git branches (use <cr> to checkout) ["gb" for git branch]

-- fugitive commands
keymap.set("n", "<leader>gitb", ":G blame<cr>")
keymap.set("n", "<leader>gitm", ":G mergetool<cr>")
-- conflict handing
keymap.set("n", "<leader>mc", ":Gdiffsplit!<cr>")
keymap.set("n", "<leader>mgl", ":diffget //2<cr>")
keymap.set("n", "<leader>mgr", ":diffget //3<cr>")

-- Vgit commands
keymap.set("n", "<leader>gitd", ":VGit buffer_history_preview<cr>")
keymap.set("n", "<leader>gits", ":VGit project_diff_preview<cr>")
keymap.set("n", "<leader>gs", ":VGit buffer_hunk_preview<cr>")
keymap.set("n", "<leader>gh", ":VGit buffer_history_preview<cr>")
keymap.set("n", "[c", ":VGit hunk_up<cr>")
keymap.set("n", "]c", ":VGit hunk_down<cr>")
