vim.o.termguicolors = true

require "user.options"
require "user.keymaps"
require "user.plugins"
require "user.plug-config"
require "user.themes-config"
require("dapui").setup()

vim.cmd.colorizer = true

require("colorizer").setup({
    DEFAULT_OPTIONS = {
	RGB      = true;         -- #RGB hex codes
	RRGGBB   = true;         -- #RRGGBB hex codes
	names    = true;         -- "Name" codes like Blue
	RRGGBBAA = false;        -- #RRGGBBAA hex codes
	rgb_fn   = false;        -- CSS rgb() and rgba() functions
	hsl_fn   = false;        -- CSS hsl() and hsla() functions
	css      = false;        -- Enable all CSS features: rgb_fn, hsl_fn, names, RGB, RRGGBB
	css_fn   = false;        -- Enable all CSS *functions*: rgb_fn, hsl_fn
	-- Available modes: foreground, background
	mode     = 'background'; -- Set the display mode.
  }

})
-- Lua
--[[
vim.cmd [[
	:hi Normal ctermbg=NONE
	:hi NonText ctermbg=NONE
	:hi Normal guibg=NONE
    :hi NvimTreeNormal guibg=NONE ctermbg=NONE
]]


vim.cmd.colorscheme "onedarker"
--[[
require('onedark').setup {
    style = 'deep',
	code_style = {
        comments ='none',
        keywords = 'none',
        functions = 'none',
        strings = 'none',
        variables = 'none'
    },
}
require('onedark').load()
]]
vim.cmd[[
	:hi LineNr guibg=none guifg=#FFFFFF	
	let ayucolor = "dark"
]]
