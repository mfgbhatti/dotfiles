local function map(mode, lhs, rhs, opts)
    -- Set default value if not specified
    if opts.noremap == nil then
        opts.noremap = true
    end
    if opts.silent == nil then
        opts.silent = true
    end
    vim.keymap.set(mode, lhs, rhs, opts)
end

-- better up/down
vim.keymap.set({ "n", "x" }, "j", function()
    return vim.v.count > 0 and "j" or "gj"
 end, { expr = true })
 vim.keymap.set({ "n", "x" }, "k", function()
    return vim.v.count > 0 and "k" or "gk"
 end, { expr = true })

-- system clipboard copy and paste
map({ "n", "v" }, "<Leader>y", '"+y', {})
map({ "n" }, "<Leader>Y", '"+y$', {})

map({ "n", "v" }, "<Leader>p", '"+p', {})
map({ "n", "v" }, "<Leader>P", '"+P', {})



