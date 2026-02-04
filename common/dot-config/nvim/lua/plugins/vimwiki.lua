return {
 {
    "vimwiki/vimwiki",
    branch = "dev",
    init = function()
        vim.g.vimwiki_list = {
            {
                syntax = "markdown",
                ext = ".md",
                path = "~/wiki",
            },
        }
        vim.g.vimwiki_global_ext = 1
    end,
},
}
