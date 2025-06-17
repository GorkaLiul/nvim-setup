vim.keymap.set('n', '<leader>cg', function()
    -- Save current buffer if modifiable
    if vim.bo.modifiable and vim.api.nvim_buf_get_name(0) ~= '' then
        vim.cmd('silent write')
    end

    -- Find Cargo.toml in project root (more reliable method)
    local project_root = require('lspconfig.util').root_pattern('Cargo.toml')(vim.fn.expand('%:p'))
    if not project_root then
        vim.notify('Not in a Cargo project (Cargo.toml not found)', vim.log.levels.ERROR)
        return
    end

    -- Save current window
    local current_win = vim.api.nvim_get_current_win()

    -- Run in terminal (better handling)
    vim.cmd('botright split | terminal cd ' .. vim.fn.shellescape(project_root) .. ' && cargo run')

    -- Enter terminal mode and set buffer options
    vim.cmd('startinsert')
    vim.api.nvim_buf_set_option(0, 'buflisted', false)

    -- Return focus after a small delay
    vim.defer_fn(function()
        if vim.api.nvim_win_is_valid(current_win) then
            vim.api.nvim_set_current_win(current_win)
        end
    end, 100)
end, {
    desc = 'Save and run cargo run',
    silent = true,
    nowait = true
})

vim.keymap.set('n', '<leader>cb', function()
    -- Save current buffer if modifiable
    if vim.bo.modifiable and vim.api.nvim_buf_get_name(0) ~= '' then
        vim.cmd('silent write')
    end

    -- Find Cargo.toml in project root (more reliable method)
    local project_root = require('lspconfig.util').root_pattern('Cargo.toml')(vim.fn.expand('%:p'))
    if not project_root then
        vim.notify('Not in a Cargo project (Cargo.toml not found)', vim.log.levels.ERROR)
        return
    end

    -- Save current window
    local current_win = vim.api.nvim_get_current_win()

    -- Run in terminal (better handling)
    vim.cmd('botright split | terminal cd ' .. vim.fn.shellescape(project_root) .. ' && cargo build')

    -- Enter terminal mode and set buffer options
    vim.cmd('startinsert')
    vim.api.nvim_buf_set_option(0, 'buflisted', false)

    -- Return focus after a small delay
    vim.defer_fn(function()
        if vim.api.nvim_win_is_valid(current_win) then
            vim.api.nvim_set_current_win(current_win)
        end
    end, 100)
end, {
    desc = 'Save and run cargo run',
    silent = true,
    nowait = true
})
