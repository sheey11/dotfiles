return function(use)
  use('Shatur/neovim-ayu')
  use('ray-x/go.nvim')
  use('ray-x/guihua.lua')

  local format_sync_grp = vim.api.nvim_create_augroup("GoFormat", {})
  vim.api.nvim_create_autocmd("BufWritePre", {
    pattern = "*.go",
    callback = function()
     require('go.format').goimport()
    end,
    group = format_sync_grp,
  })

  require('go').setup()

  use('simrat39/rust-tools.nvim')

  local rt = require('rust-tools')
  rt.setup({
    server = {
      on_attach = function(_, bufnr)
        -- Hover actions
        vim.keymap.set("n", "<Leader>n", rt.hover_actions.hover_actions, { buffer = bufnr, desc = "Rust hover actions" })
        -- Code action groups
        vim.keymap.set("n", "<Leader>a", rt.code_action_group.code_action_group, { buffer = bufnr, desc = "Rust code action groups"})
      end,
    },
  })
end
