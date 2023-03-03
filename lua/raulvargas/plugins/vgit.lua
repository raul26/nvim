-- import vgit plugin safely
local setup, vgit = pcall(require, "vgit")
if not setup then
	return
end

-- configure/enable vgit
vgit.setup({})
