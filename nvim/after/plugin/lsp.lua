local lsp = require('lsp-zero')

lsp.preset("recommended")

lsp.ensure_installed({
    'tsserver',
    'rust_analyzer',
})

-- Fix undefined global 'vim'
-- lsp.configure('lua-language-server', {
--     settings = {
--         Lua = {
--             diagnostics = {
--                 globals = { 'vim' }
--             }
--         }
--     }
-- })

local cmp = require('cmp')
local cmp_select = {behavior = cmp.SelectBehavior.Select}
local cmp_mappings = lsp.defaults.cmp_mappings({
    ['<Tab>'] = cmp.mapping.select_next_item(cmp_select),
    ['<S-Tab>'] = cmp.mapping.select_prev_item(cmp_select),
    ['<CR>'] = cmp.mapping.confirm({ select = true }),
    ['<C-Space>'] = cmp.mapping.complete,
})

lsp.setup_nvim_cmp({
    mapping = cmp_mappings
})

lsp.on_attach(function(client, bufnr)
  lsp.default_keymaps({buffer = bufnr})
end)

lsp.set_sign_icons({
    -- suggest_lsp_servers = false,
    error = '',
    warn  = '',
    hint  = '',
    info  = ''
})

-- (Optional) Configure lua language server for neovim
-- require('lspconfig').lua_ls.setup(lsp.nvim_lua_ls())

lsp.setup()

-- vim.diagnostic.config({
--     virtual_text = true
-- })
