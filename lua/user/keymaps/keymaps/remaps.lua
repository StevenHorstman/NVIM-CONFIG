local opts = {noremap = true, silent = true}

local term_opts = { silent = true }

-- Shorten function name
local keymap = vim.api.nvim_set_keymap

--Remap space as leader key
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Navigation in windows
keymap("n", "<C-A-Left>", "<C-w>h", opts)  -- Te mueve al split de la izquierda
keymap("n", "<C-A-Down>", "<C-w>j", opts)  -- Te mueve al split de abajo
keymap("n", "<C-A-Up>", "<C-w>k", opts)    -- Te mueve al split de arriba
keymap("n", "<C-A-Right>", "<C-w>l", opts) -- Te meueve al split de la derecha

-- Undo and Redo

keymap("i", "<C-z>", ":undo<cr>", opts) -- Undo the last change

keymap("n", "<leader>q", ":NvimTreeToggle<cr>", opts)
keymap("n", "<leader>w", ":close<cr>", opts) -- Cierra una ventana

-- Rezise the window
keymap("n", "<A-Up>", ":resize +2<CR>", opts)
keymap("n", "<A-Down>", ":resize -2<CR>", opts)
keymap("n", "<A-Left>", ":vertical resize -2<CR>", opts)
keymap("n", "<A-Right>", ":vertical resize +2<CR>", opts)

keymap("n", "<C-k>w", ":qa!<cr>", opts)   -- Cierra todo
keymap("n", "<C-k>s", ":wa<cr>", opts)    -- Salva todos os documentos

-- 
keymap("v", "<A-Down>", ":m .+1<CR>==", opts)
keymap("v", "<A-Up>", ":m .-2<CR>==", opts)
keymap("v", "<A-j>", ":m .+1<CR>==", opts)
keymap("v", "<A-k>", ":m .-2<CR>==", opts)

-- Navigate buffers
keymap("n", "<A-a>", ":bnext<CR>", opts)
keymap("n", "<A-s>", ":bprevious<CR>", opts)

-- Visual Block --
-- Move text up and down
keymap("x", "J", ":move '>+1<CR>gv-gv", opts)
keymap("x", "K", ":move '<-2<CR>gv-gv", opts)
keymap("x", "<A-Down>", ":move '>+1<CR>gv-gv", opts)
keymap("x", "<A-Up>", ":move '<-2<CR>gv-gv", opts)

-- Terminal --
-- Better terminal navigation
keymap("t", "<C-h>", "<C-\\><C-N><C-w>h", term_opts)
keymap("t", "<C-j>", "<C-\\><C-N><C-w>j", term_opts)
keymap("t", "<C-k>", "<C-\\><C-N><C-w>k", term_opts)
keymap("t", "<C-l>", "<C-\\><C-N><C-w>l", term_opts)

keymap("n", "<C-p>", ":vert:term<cr>", term_opts)

--keymap("n", "<C-s>", ":tabNext <cr>", opts)
--keymap("n", "<C-a>", ":tabprevious <cr>", opts)

keymap("n", "m", "~", opts)

vim.cmd[[
	nnoremap <silent> <F5> <Cmd>lua require'dap'.continue()<CR>
	nnoremap <silent> <F10> <Cmd>lua require'dap'.step_over()<CR>
	nnoremap <silent> <F11> <Cmd>lua require'dap'.step_into()<CR>
	nnoremap <silent> <F12> <Cmd>lua require'dap'.step_out()<CR>
	nnoremap <silent> <Leader>b <Cmd>lua require'dap'.toggle_breakpoint()<CR>
	nnoremap <silent> <Leader>B <Cmd>lua require'dap'.set_breakpoint(vim.fn.input('Breakpoint condition: '))<CR>
	nnoremap <silent> <Leader>lp <Cmd>lua require'dap'.set_breakpoint(nil, nil, vim.fn.input('Log point message: '))<CR>
	nnoremap <silent> <Leader>dr <Cmd>lua require'dap'.repl.open()<CR>
	nnoremap <silent> <Leader>dl <Cmd>lua require'dap'.run_last()<CR>
]]

---Toggleterm keymaps
vim.keymap.set('t', '<esc>', [[<C-\><C-n>]], opts)
vim.keymap.set('t', 'jk', [[<C-\><C-n>]], opts)
vim.keymap.set('t', '<C-h>', [[<Cmd>wincmd h<CR>]], opts)
vim.keymap.set('t', '<C-j>', [[<Cmd>wincmd j<CR>]], opts)
vim.keymap.set('t', '<C-k>', [[<Cmd>wincmd k<CR>]], opts)
vim.keymap.set('t', '<C-l>', [[<Cmd>wincmd l<CR>]], opts)
vim.keymap.set('t', '<C-w>', [[<C-\><C-n><C-w>]], opts)


vim.cmd[[
	nnoremap <silent> <leader>o :<C-u>call append(line("."),   repeat([""], v:count1))<CR>
	nnoremap <silent> <leader>O :<C-u>call append(line(".")-1, repeat([""], v:count1))<CR>
]]
