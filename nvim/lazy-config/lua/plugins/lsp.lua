return {
	{
		"neovim/nvim-lspconfig",
		opts = {
			servers = {
				terraformls = {},
				gopls = {
					settings = {
						gopls = {
							analyses = {
								fieldalignment = false,
							},
						},
					},
				},
			},
		},
	},
}
