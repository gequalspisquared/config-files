require('bufferline').setup({
    options = {
        hover = {
            enabled = true,
            delay = 100,
            reveal = {'close'}
        },
        -- color_icons = true,
        themable = false,

        diagnostics = "nvim_lsp",

        offsets = {
            {
                filetype = "NvimTree",
                text = "Explorer",
                highlight = "Directory",
                text_align = "center"
            }
        }
    }
})

vim.keymap.set('n', '<leader>bd', function()
    local index = vim.api.nvim_get_current_buf()
    local last_buf = vim.fn.bufnr("$")
    if index == last_buf then
        vim.cmd('BufferLineCyclePrev')
    else
        vim.cmd('BufferLineCycleNext')
    end
    vim.cmd('bdelete '..index)
end
)

-- function Close_current_buffer()
--     -- vim.cmd('bdelete '..buf.id)
--     -- local commands = require('bufferline.commands')
--     -- local state = require('bufferline.state')
--     -- local index = vim.api.nvim_get_current_buf()
--     -- if (index == 1)
--     --     vim.cmd('BufferLineCycleNext')
--     -- else
--     -- end
--     -- vim.cmd('BufferLineCyclePrev')
--     -- vim.cmd('BufferLineCycleNext')
--     -- vim.cmd('bdelete '..index)
--
--     local index = vim.api.nvim_get_current_buf()
--     require('bufferline').exec(index, function(buf, visible_buffers)
--         vim.cmd('BufferLineCycleNext')
--         vim.cmd('bdelete '..index)
--     end)
-- end
--
-- vim.cmd [[
--     command! CloseCurrentBuffer call Close_current_buffer()<CR>
-- ]]

-- require("bufferline").setup{
--     options = {
--         diagnostics = "nvim_lsp",
--     }
-- }
