local lsps = require("lion.config.lsps")

for _, lsp in ipairs(lsps) do
  vim.lsp.enable(lsp)
end
