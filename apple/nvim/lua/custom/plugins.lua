return function(use)
  use('nvim-treesitter/playground')
  use('Shatur/neovim-ayu')
  use('ray-x/go.nvim')
  use('ray-x/guihua.lua')
  use('github/copilot.vim')

  local format_sync_grp = vim.api.nvim_create_augroup("GoFormat", {})
  vim.api.nvim_create_autocmd("BufWritePre", {
    pattern = "*.go",
    callback = function()
     require('go.format').goimport()
    end,
    group = format_sync_grp,
  })

  require('go').setup()
end
