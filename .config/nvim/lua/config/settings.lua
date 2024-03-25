-- Sets Map Leader Note: must happen before plugins are loaded
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

-- Enable LazyVim auto format
vim.g.autoformat = true

-- LazyVim root dir detection
-- Each entry can be:
-- * the name of a detector function like `lsp` or `cwd`
-- * a pattern or array of patterns like `.git` or `lua`.
-- * a function with signature `function(buf) -> string|string[]`
vim.g.root_spec = { "lsp", { ".git", "lua" }, "cwd" }

-- set to true if you have a nerd font installed
vim.g.have_nerd_font = true

local opt = vim.opt

-- set cursor to std box
opt.guicursor = ""

-- enable mouse mode, can be useful for resizing splits
opt.mouse = 'a'

-- Line Numbers
opt.number = true
opt.relativenumber = true

-- Tab Spaces
opt.tabstop = 4
opt.softtabstop = 4
opt.shiftwidth = 4
opt.expandtab = true

-- enable break indent
opt.breakindent = true

-- case-insensitive searching UNLESS \C or capital in search
opt.ignorecase = true
opt.smartcase = true

-- turn off highligh search and incremental search
opt.hlsearch = false
opt.incsearch = true

opt.smartindent = true

-- turn off word wrap
opt.wrap = false

-- undo history tracked in separate directory
opt.swapfile = false
opt.backup = false
opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
opt.undofile = true

opt.termguicolors = true

-- minimal number of screen lines to keep above and below the cursor
opt.scrolloff = 8

opt.signcolumn = "yes"
opt.isfname:append("@-@")

-- decrease update time
opt.updatetime = 150
opt.timeoutlen = 200

-- configure how splits should be opened
opt.splitright = true
opt.splitbelow = true

-- set line color column
opt.colorcolumn = "80"

-- sets how neovim willl display certain whitespace in the editor
-- see `:help 'list'`
-- and `:help 'listchars'`
opt.list = true
vim.opt.listchars = { tab = '» ', trail = '·', nbsp = '␣' }


-- Preview subsitutions live as you type
opt.inccommand = 'split'


-- show which line your cursor is on
opt.cursorline = true

vim.cmd("autocmd BufEnter * set formatoptions-=cro")
vim.cmd("autocmd BufEnter * setlocal formatoptions-=cro")
