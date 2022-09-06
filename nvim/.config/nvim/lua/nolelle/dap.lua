local dap = require('dap')
dap.adapters.lldb = {
  type = 'executable',
  command = '/usr/local/Cellar/llvm/13.0.1_1/bin', -- adjust as needed, must be absolute path
  name = 'lldb'
}
