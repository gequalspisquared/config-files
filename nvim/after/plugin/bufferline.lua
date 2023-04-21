require('bufferline').setup({
    options = {
        hover = {
            enabled = true,
            delay = 100,
            reveal = {'close'}
        },

        diagnostics = "nvim_lsp",
    }
})

-- 
-- require("bufferline").setup{
--     options = {
--         diagnostics = "nvim_lsp",
--     }
-- }
