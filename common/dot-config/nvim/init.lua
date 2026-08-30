require("config.lazy")
require("config.keymaps")
require("config.options")
require("config.oil")
require("config.clipboard")

vim.cmd([[colorscheme codedark]])

require"nest".applyKeymaps({",r", "<cmd>w<cr><cmd>!tcc -run %<cr>"})

vim.api.nvim_create_autocmd("BufEnter", {
    pattern = "*.md,*.wiki",
    command = "syntax sync fromstart"
})

--Enable highlights in custom types coc
vim.api.nvim_set_hl(0, 'CocSemType', { link = 'CocSemTypeDefaultLibrary' })
vim.api.nvim_set_hl(0, 'CocSemStruct', { link = 'CocSemStructDefaultLibrary' })
vim.api.nvim_set_hl(0, 'CocSemClass', { link = 'CocSemClassDefaultLibrary' })

vim.filetype.add({
  -- 1. Match by file extension
  -- extension = {
  --   mdx = 'markdown',
  --   env = 'sh',
  --   config = 'toml',
  -- },

  -- 2. Match by exact filename
  filename = {
    ['vifmrc'] = 'vim',
    -- ['Jenkinsfile'] = 'groovy',
  },

  -- 3. Match by pattern (regex/path matching)
  -- pattern = {
    -- Matches paths containing 'nginx' and ending in '.conf'
    -- ['.*/nginx/.*%.conf'] = 'nginx',
    
    -- Matches files like '.bash_profile_local'
    -- ['%.bash_profile_.*'] = 'sh',
  -- },
})


