return {
	{
		"https://gitlab.com/schrieveslaach/sonarlint.nvim.git",
		dependencies = { "neovim/nvim-lspconfig" },
		opts = {
			server = {
				cmd = { "sonarlint-language-server", "-stdio" },
				-- Mason installs analyzers under $MASON/share/sonarlint-analyzers
				cmd_args = {
					"-analyzers",
					vim.fn.expand("$MASON/share/sonarlint-analyzers/sonarpython.jar"),
					vim.fn.expand("$MASON/share/sonarlint-analyzers/sonarcfamily.jar"),
				},
			},
			filetypes = {
				"c",
				"cpp",
				"python",
			},
			init_options = {
				automaticAnalysis = true,
				disableTelemetry = true,
				output = {
					showVerboseLogs = false,
				},
			},
		},
	},
}
