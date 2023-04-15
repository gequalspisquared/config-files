local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ef', builtin.find_files, {})
vim.keymap.set('n', '<C-p>', builtin.git_files, {})
vim.keymap.set('n', '<leader>es', function()
	builtin.grep_string({ search = vim.fn.input("Grep > ") });
end)

require('telescope').setup {
    defaults = {
        file_ignore_patterns = {"./node_modules/*", "./target/*"},
    }
}
