local status_ok, lsp_installer = pcall(require, "nvim-lsp-installer")
if not status_ok then
	return
end

-- Register a handler that will be called for all installed servers.
-- Alternatively, you may also register handlers on specific server instances instead (see example below).
lsp_installer.on_server_ready(function(server)
	local opts = {
		on_attach = require("user.lsp.handlers").on_attach,
		capabilities = require("user.lsp.handlers").capabilities,
	}

  -- Here you can find the list of available lsp servers and options for them 
  -- https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md#ccls

	 if server.name == "ccls" then
	 	local ccls_options = require("user.lsp.settings.ccls")
	 	opts = vim.tbl_deep_extend("force", ccls_options, opts) -- extends opts with ccls options
	 end

--	 if server.name == "pyright" then
--	 	local pyright_opts = require("user.lsp.settings.pyright")
--	 	opts = vim.tbl_deep_extend("force", pyright_opts, opts)
--	 end

	-- This setup() function is exactly the same as lspconfig's setup function.
	-- Refer to https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md
	server:setup(opts)
end)

