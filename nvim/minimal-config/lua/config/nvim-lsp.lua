vim.lsp.enable("lua_ls")

local severity = vim.diagnostic.severity

vim.diagnostic.config({
    signs = {
        text = {
            [severity.ERROR] = '⬤',
            [severity.WARN] = '○',
            [severity.INFO] = '○',
            [severity.HINT] = '○',
        }
    },
    virtual_text = {
        prefix = "",
        current_line = true,
    }
})
