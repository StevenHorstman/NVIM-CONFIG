local fterm = require("FTerm")

local gitui = fterm:new({
    cmd = "powershell",
    dimensions = {
        height = 0.9,
        width = 0.9
    }
})

-- Use this to toggle gitui in a floating terminal
vim.keymap.set('n', '<A-g>', function()
    gitui:toggle()
end)
