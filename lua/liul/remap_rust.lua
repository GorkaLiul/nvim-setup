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




-- runs example_file with "cargo run --example <<example_file>>" using Telescope 
vim.keymap.set('n', '<leader>cge', function()
  if vim.fn.filereadable("Cargo.toml") == 0 then
    vim.notify("No se encontró Cargo.toml", vim.log.levels.ERROR)
    return
  end

  require('telescope.builtin').find_files({
    prompt_title = "🦀 Rust Examples",
    search_dirs = { "examples" },
    attach_mappings = function(prompt_bufnr, map)
      local actions = require('telescope.actions')
      local action_state = require('telescope.actions.state')
      
      map('i', '<CR>', function()
        local selection = action_state.get_selected_entry()
        actions.close(prompt_bufnr)
        
        if selection then
          local filename = vim.fn.fnamemodify(selection.value, ":t:r")
          vim.cmd("split | terminal cargo run --example " .. filename)
        end
      end)
      
      return true
    end,
  })
end, { desc = "Cargo run example (Telescope)" })

-- builds example_file with "cargo build --example <<example_file>>" using Telescope 
vim.keymap.set('n', '<leader>cbe', function()
  if vim.fn.filereadable("Cargo.toml") == 0 then
    vim.notify("No se encontró Cargo.toml", vim.log.levels.ERROR)
    return
  end

  require('telescope.builtin').find_files({
    prompt_title = "🦀 Rust Examples",
    search_dirs = { "examples" },
    attach_mappings = function(prompt_bufnr, map)
      local actions = require('telescope.actions')
      local action_state = require('telescope.actions.state')
      
      map('i', '<CR>', function()
        local selection = action_state.get_selected_entry()
        actions.close(prompt_bufnr)
        
        if selection then
          local filename = vim.fn.fnamemodify(selection.value, ":t:r")
          vim.cmd("split | terminal cargo build --example " .. filename)
        end
      end)
      
      return true
    end,
  })
end, { desc = "Cargo run example (Telescope)" })
