local null_ls = require("null-ls")



null_ls.setup({
    sources = {
		null_ls.builtins.formatting.gofmt,
		null_ls.builtins.formatting.goimports
	}
})


vim.cmd('map <Leader>lf :lua vim.lsp.buf.format(nil, 10000)<CR>')
