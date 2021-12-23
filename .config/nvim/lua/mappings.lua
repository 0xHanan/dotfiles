-- Mapping helper
local mapper = function(mode, key, result)
    vim.api.nvim_set_keymap(mode, key, result, { noremap = true, silent = true })
end

-- Essentials
mapper("i", "jj", "<Esc>")
mapper("n", '<c-s>', ':w<CR>') -- Ctrl-s to save
mapper("i", '<c-s>', '<Esc>:w<CR>a') -- Ctrl-s to save (insert mode)


-- code-completion
mapper("n",'gd', ':lua vim.lsp.buf.definition()<cr>')
mapper("n",'gD', ':lua vim.lsp.buf.declaration()<cr>')
mapper("n",'gi', ':lua vim.lsp.buf.implementation()<cr>')
mapper("n",'gw', ':lua vim.lsp.buf.document_symbol()<cr>')
mapper("n",'gw', ':lua vim.lsp.buf.workspace_symbol()<cr>')
mapper("n",'gr', ':lua vim.lsp.buf.references()<cr>')
mapper("n",'gt', ':lua vim.lsp.buf.type_definition()<cr>')
mapper("n",'K', ':lua vim.lsp.buf.hover()<cr>')
mapper("n",'<c-k>', ':lua vim.lsp.buf.signature_help()<cr>')
mapper("n",'<leader>af', ':lua vim.lsp.buf.code_action()<cr>')
mapper("n",'<leader>rn', ':lua vim.lsp.buf.rename()<cr>')
