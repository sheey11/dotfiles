-- see https://github.com/neovim/neovim/issues/13971
local sys = vim.loop.os_uname().sysname

if sys == "Windows_NT" then
    vim.opt.shell = 'pwsh'
    vim.opt.shellcmdflag = '-nologo -noprofile -ExecutionPolicy RemoteSigned -command'
    vim.opt.shellxquote = ''
elseif sys == "Darwin" then
    print('running on mac')
elseif sys == "Linux" then
    print('running on linux')
end

