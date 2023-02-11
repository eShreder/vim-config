local opt = vim.opt
local indent = 4
-- undofile
opt.undofile = true
opt.undolevels = 1000
opt.undoreload = 10000
opt.swapfile = false
opt.backup = false
opt.writebackup = false

-- spaces
opt.tabstop = indent
opt.softtabstop = 4
opt.shiftwidth = indent
opt.expandtab = true
opt.smartindent = true

-- lines
opt.cursorline = true
opt.number = true
opt.wrap = true
opt.list = true
opt.breakindent = true

-- folding
opt.foldmethod = "indent"
opt.foldlevelstart = 20
opt.foldlevel = 20
opt.fillchars = { fold = "-" }

-- other
opt.scrolloff = 7
opt.incsearch = true
vim.o.formatoptions = "jcroqlnt"
vim.o.shortmess = "filnxtToOFWIcC"
vim.opt.cmdheight = 1

vim.opt.conceallevel = 3

vim.opt.hidden = true
vim.opt.hlsearch = false
vim.opt.ignorecase = true
vim.opt.inccommand = "nosplit"
vim.opt.joinspaces = false
vim.opt.laststatus = 0
vim.opt.sessionoptions = { "buffers", "curdir", "tabpages", "winsize" }
vim.opt.shiftround = true
vim.opt.showmode = false
vim.opt.signcolumn = "yes"
vim.opt.smartcase = true
vim.opt.splitbelow = true
vim.opt.splitkeep = "screen"
vim.opt.splitright = true
vim.opt.timeoutlen = 300
vim.opt.updatetime = 200
vim.opt.wildmode = "longest:full,full"
