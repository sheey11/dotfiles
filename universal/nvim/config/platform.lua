if vim.fn.has('win32') then
    vim.opt.shell = 'pwsh'
    vim.opt.shellcmdflag = '-nologo -noprofile -ExecutionPolicy RemoteSigned -command'
    vim.opt.shellxquote = ''
end
if vim.fn.has('mac') then
    print('running on mac')
end

