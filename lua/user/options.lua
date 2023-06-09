local options = {
  splitright = true, 
  signcolumn = 'yes',
  filetype = 'on',
  modelines = 0,
  wrap = true,
  textwidth = 79,
  formatoptions = 'tcqrn1',
  tabstop = 4,
  shiftwidth = 4,
  softtabstop = 2,
  expandtab = false,
  shiftround = false,
  mouse = 'v',
  scrolloff = 5,
  backspace = 'indent,eol,start',
  ttyfast = true,
  laststatus = 2,
  showmode = true,
  showcmd = true,
  clipboard = "unnamed",
  number = true,
  encoding = 'utf-8',
  hlsearch = true,
  incsearch = true,
  ignorecase = true,
  smartcase = true,
  autoindent = true,
  completeopt="menu,menuone,noselect",
  showmatch = true,
  relativenumber  = true,
}

for k, v in pairs(options) do
  vim.opt[k] = v
end
