lsp_conf_status, nvim_lsp = pcall(require, "lspconfig")
if not lsp_conf_status then
	return
end

require("user.lsp.lsp-installer")
require("user.lsp.handlers").setup()

