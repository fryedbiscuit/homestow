require("config.lazy")
require("config.keymaps")
require("config.options")
require("config.oil")
require("config.clipboard")

vim.cmd([[colorscheme codedark]])

require"nest".applyKeymaps({",r", "<cmd>!tcc -run %<cr>"})

vim.api.nvim_create_autocmd("BufEnter", {
    pattern = "*.md,*.wiki",
    command = "syntax sync fromstart"
})
