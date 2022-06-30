-- safe import null-ls
local null_imported_ok, null = pcall(require, "null-ls")
if not null_imported_ok then 
    return 
end

local formatting = null.builtins.formatting
local completion = null.builtins.completion
local diagnostics = null.builtins.diagnostics
local code_actions = null.builtins.code_actions

require("null-ls").setup({
    debug = false,
    sources = {
        formatting.stylua,
        formatting.prettier_d_slim,
        diagnostics.eslint,
        completion.spell,
    },
})
