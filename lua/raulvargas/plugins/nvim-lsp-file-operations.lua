local loadded, file_operations = pcall(require, "lsp-file-operations")
if not loadded then
  return
end
file_operations.setup()
