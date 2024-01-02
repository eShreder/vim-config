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
opt.softtabstop = indent
opt.shiftwidth = indent
opt.expandtab = true
opt.smartindent = true

-- lines
opt.cursorline = true
opt.number = true
opt.wrap = true
opt.list = true
opt.breakindent = true
opt.relativenumber = true

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
opt.cmdheight = 1

-- opt.conceallevel = 3

opt.hidden = true
opt.hlsearch = false
opt.ignorecase = true
opt.inccommand = "nosplit"
opt.joinspaces = false
opt.laststatus = 0
opt.sessionoptions = { "buffers", "curdir", "tabpages", "winsize" }
opt.shiftround = true
opt.showmode = false
opt.signcolumn = "yes"
opt.smartcase = true
opt.splitbelow = true
opt.splitkeep = "screen"
opt.splitright = true
opt.timeoutlen = 300
opt.updatetime = 200
opt.wildmode = "longest:full,full"
