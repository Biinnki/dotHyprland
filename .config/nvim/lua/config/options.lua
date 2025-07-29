-- indenting
vim.opt.expandtab=true
vim.opt.tabstop=2
vim.opt.softtabstop=2
vim.opt.shiftwidth=2

vim.opt.signcolumn = "yes"
vim.opt.smartindent=true

-- nice to have
vim.opt.scrolloff=8

-- linenumbers
vim.opt.number=true
vim.opt.relativenumber=true

-- clipboard
vim.opt.clipboard = ""

-- inline errors
vim.diagnostic.config({
  virtual_text = true,
  signs = true,
  underline = true,
  update_in_insert = false,
  severity_sort = false,
})
