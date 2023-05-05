
dowloadThemes = {
	tokyo = "tokyonight-night",
	gruvbox = "gruvbox",
	github_dark = "github_dark_default"

}

function dowloadThemes.setUp()
	if vim.api.nvim_command_output("colorscheme") == "gruvbox" then
		setUpLines()
	end
end

-- Set up the number lines to white 
function setUpLines()
	vim.cmd [[ 
		:hi LineNr guibg=none guifg=#FFFFFF   
	]]
end

