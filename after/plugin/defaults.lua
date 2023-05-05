vim.opt.relativenumber = true

vim.keymap.set('n', '<leader>sr', require('telescope.builtin').resume, { desc = '[S]earch [R]esume' })

--------------------------
-- Comment out entire line 
--------------------------
-- Comment
-- vim.keymap.set('n', '<Tab>', ':s/^/\=substitute(&commentstring, "%s\', \'\', \'\')/g<CR>')
-- nnoremap <Tab> :s/^/\=substitute(&commentstring, '%s', '', '')/g<CR>
-- Uncomment 
-- nnoremap <S-Tab> :s/^\/\///g<CR>

-----------------
-- TreeView Setup
-----------------
--lua require("nvim-tree").setup()
--nnoremap <C-w>w :NvimTreeToggle<cr>
vim.keymap.set('n', '<C-w>w', ':NeotreeToggle')


---------------------
-- Insert mode remaps
---------------------

vim.keymap.set('i', 'kj', '<esc>')

-- ------------------
-- Command mode remaps
-- ------------------

vim.keymap.set('c', 'kj', '<esc>')
vim.keymap.set('c', 'kj', '<esc>')

vim.keymap.set('n', '|', ':Neotree toggle reveal_force_cwd<cr>')
--vim.keymap.set('n', '<leader>n', require('neo-tree').focus)
--vim.keymap.set('n', '<leader>n', ':Neotree toggle reveal_force_cwd<cr>')
-- vim.keymap.set('n', '|', ':Neotree reveal<cr>')
--vim.keymap.set('n', 'gd', ':Neotree float reveal_file=<cfile> reveal_force_cwd<cr>')
--vim.keymap.set('n', '<leader>b', ':Neotree toggle show buffers right<cr>')
--nnoremap / :Neotree toggle current reveal_force_cwd<cr>
--    nnoremap | :Neotree reveal<cr>
--    nnoremap gd :Neotree float reveal_file=<cfile> reveal_force_cwd<cr>
--    nnoremap <leader>b :Neotree toggle show buffers right<cr>
--    nnoremap <leader>s :Neotree float git_status<cr>

local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})

